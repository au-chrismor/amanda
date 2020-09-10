# This file was automatically generated by SWIG (http://www.swig.org).
# Version 3.0.8
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package Amanda::Disklist;
use base qw(Exporter);
use base qw(DynaLoader);
require Amanda::Config;
package Amanda::Disklistc;
bootstrap Amanda::Disklist;
package Amanda::Disklist;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package Amanda::Disklist;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package Amanda::Disklist;

*read_disklist_internal = *Amanda::Disklistc::read_disklist_internal;
*reset_disklist_internal = *Amanda::Disklistc::reset_disklist_internal;
*unload_disklist_internal = *Amanda::Disklistc::unload_disklist_internal;
*xml_optionstr_disk = *Amanda::Disklistc::xml_optionstr_disk;
*xml_application_disk = *Amanda::Disklistc::xml_application_disk;
*xml_estimate_disk = *Amanda::Disklistc::xml_estimate_disk;
*clean_dle_str_for_client = *Amanda::Disklistc::clean_dle_str_for_client;

# ------- VARIABLE STUBS --------

package Amanda::Disklist;


@EXPORT_OK = ();
%EXPORT_TAGS = ();


=head1 NAME

Amanda::Disklist - interface to the Amanda disklist

=head1 SYNOPSIS

  use Amanda::Config qw( :init :getconf );
  use Amanda::Disklist;

  # .. call config_init()
  my $cfgerr_level = Amanda::Disklist::read_disklist(
    filename => $ARGV[0],
    disk_class => "MyScript::Disk",
  );
  die("Config errors") if ($cfgerr_level >= $CFGERR_WARNINGS);
  my $dle = Amanda::Disklist::get_disk($ARGV[1], $ARGV[2]);
  die "No such DLE" unless defined($dle);

  print "Diskname for this DLE: ", $dle->{name}, "\n";
  print "Auth for this DLE's host: ", $dle->{host}->{auth}, "\n";
  print "'record':", dumptype_getconf($dle->{config}, $DUMPTYPE_RECORD), "\n";

=head1 OVERVIEW

The Amanda disklist is a part of its configuration, so this module is
similar in function to L<Amanda::Config>.  In particular,
C<read_disklist> loads the disklist into process-global variables, and
returns an error status similar to that of L<Amanda::Config>.  Those
global variables are then used by the acces functions described below.

Amanda parses all DLE's as a simple tuple (host, diskname, device,
dumptype, interface, spindle), linked to a dumptype.  DLE's which
specify additional dumptype parameters within the C<disklist> file
result in the creation of a "hidden" dumptype with those parameters.
Consequently, most configuration data about a particular disk is
available in an C<Amanda::Config::dumptype_t> object, and that data is
not reproduced by this package.

This package differs from the underlying C code in that it separates
I<disk> configuration from I<host> configuration.  Furthermore, the
package does not provide storage for runtime parameters you might want
to associate with hosts or disks.  However, the objects this packages
creates are simple hashrefs that can be blessed with arbitrary class
names, so you can add whatever data and behaviors you like to these
objects.

=head1 FUNCTIONS

=over 4

=item read_disklist

my $cfgerr_level = Amanda::Disklist::read_disklist(filename => $diskfile);

=item reset_disklist

Amanda::Disklist::reset_disklist();

Reset the perl state from the C state.

=item match_disklist

Amanda::Disklist::match_disklist(user_msg => \&user_msg,
				 exact_match => $exact_match,
				 args => ["HOST", "DISK" ... ]);

Set the 'todo' field for dle entry matching the args.

=item do_on_match_disklist

Amanda::Disklist::match_disklist(user_msg => \&user_msg,
				 exact_match => $exact_match,
				 args => ["HOST", "DISK" ... ],
				 disk_cb => \&disk_cb);

Call the disk_cb for each dles that match the args

=item add_holding_to_disklist

Amanda::Disklist::add_holding_to_disklist();

Add holding dle in the disklist if they are not there.

=back

After calling C<Amanda::Config::config_init()>, call C<read_disklist>.
The following parameters are available:

=over 4

=item filename

Filename from which to read the disklist; defaults to the C<diskfile>
configuration parameter.

=item disk_class

Class with which to bless disk objects; defaults to
C<Amanda::Disklist::Disk>.

=item host_class

Class with which to bless host objects; defaults to
C<Amanda::Disklist::Host>.

=item interface_class

Class with which to bless interface objects; defaults to
C<Amanda::Disklist::Interface>.

=back

C<read_disklist> returns a config error level just like
C<config_init>. Once the disklist is loaded, call one of the following
functions to access the disklist.

  get_host($host)	    get the corresponding host object
  all_hosts()		    get a list of all host objects
  get_disk($host, $disk)    get a specific disk object
  all_disks()		    get a list of all disk objects
  get_interface($name)	    get a specific interface object
  all_interfaces()	    get a list of all interface objects

=head1 Objects

=head2 Amanda::Disklist::Disk

A disk object has the following keys:

=over 4

=item host

Host object for this DLE

=item name

The disk name

=item device

The device, if one was specified separately from the disk name

=item spindle

The spindle specified in the disklist

=item config

An C<Amanda::Config::dumptype_t> object giving the configuration for
the disk; use C<dumptype_getconf> and other functions from
L<Amanda::Config> to examine it.

=back

=head2 Amanda::Disklist::Host

Note that, because host configuration parameters are specified in
dumptypes, there is no C<config> key for a host object.  Instead, the
relevant parameters are available as attributes of the object.

=over 4

=item hostname

hostname of this host

=item amandad_path

=item client_username

=item ssh_keys

=item auth

=item maxdumps

configuration parameters

=item disks

an array containing the names of all of the disks on this host.

=back

As a convenience, the C<Amanda::Disklist::Host> class also provides
methods C<get_disk($disk)>, to get a disk object on the host, and
C<all_disks()>, to get a list of all disk objects on this host.

=head2 Amanda::Disklist::Interface

Interface objects have only one key, C<config>, containing a
C<Amanda::Config::interface_t> object; use C<interface_getconf> and
other functions from L<Amanda::Config> to examine it.

=cut



use Amanda::Debug qw( :logging );
use Amanda::Config qw( :init :getconf config_dir_relative );
use Amanda::Util qw ( match_disk match_host );
use Amanda::Logfile;


sub match_disklist {
    my %params = @_;
    my $user_msg = $params{'user_msg'};
    my $exact_match = $params{'exact_match'};
    my @args;
    @args = @{$params{'args'}} if defined $params{'args'};

    return if !@args;

    if ($exact_match) {
	@args = map { /^=/?$_:"=$_" } @args;
    }

    for my $disk (Amanda::Disklist::all_disks()) {
	if ($disk->{'todo'} == 1) {
	    $disk->{'todo'} = -1;
	}
    }

    my $prev_match = 0;
    my $prevhost = undef;
    for my $arg (@args) {
	my $match_a_host = 0;
	for my $hostname (sort keys %hosts) {
	    if (match_host($arg, $hostname)) {
		$match_a_host = 1;
		next;
	    }
	}

	my $match_a_disk = 0;
	my $disk_skip;
	for my $disk (Amanda::Disklist::all_disks()) {
	    if ($prevhost and
		match_host($prevhost, $disk->{'host'}->{'hostname'}) and
		(match_disk($arg, $disk->{'name'}) or
		 ($disk->{'device'} and match_disk($arg, $disk->{'device'})))) {
		if ($match_a_host) {
		    return $user_msg->(Amanda::Disklist::Message->new(
					source_filename => __FILE__,
					source_line     => __LINE__,
					code  => 1400000,
					severity => $Amanda::Message::ERROR,
					arg   => $arg));
		} else {
		    if ($disk->{'todo'} == -1) {
			$disk->{'todo'} = 1;
			$match_a_disk = 1;
			$prev_match = 0;
		    } elsif ($disk->{'todo'} == 0) {
			$match_a_disk = 1;
			$prev_match = 0;
			$disk_skip = $disk;
		    } else { # $disk->{'todo'} == 1
			$match_a_disk = 1;
			$prev_match = 0;
		    }
		}
	    }
	}

	if (!$match_a_disk) {
	    if ($match_a_host == 1) {
		if ($prev_match == 1) { # all disk of the previous host
		    for my $disk (Amanda::Disklist::all_disks()) {
			if (match_host($prevhost, $disk->{'host'}->{'hostname'})) {
			    $disk->{'todo'} = 1;
			    $match_a_disk = 1;
			}
		    }
		    if (!match_a_disk) {
			$user_msg->(Amanda::Disklist::Message->new(
					source_filename => __FILE__,
					source_line     => __LINE__,
					code  => 1400001,
					severity => $Amanda::Message::WARNING,
					host  => $prevhost));
		    }
		}
		$prevhost = $arg;
		$prev_match = 1;
	    } else {
		my $incorrect_quoting = $arg =~ /\\/;
		$user_msg->(Amanda::Disklist::Message->new(
				source_filename => __FILE__,
				source_line     => __LINE__,
				code  => 1400002,
				severity => $Amanda::Message::WARNING,
				arg   => $arg,
				host  => $prevhost,
				incorrect_quoting => $incorrect_quoting));
		$prev_match = 0;
	    }
	} elsif ($disk_skip) {
	    $strategy = dumptype_getconf($dle->{config}, $DUMPTYPE_STRATEGY);
	    if ($strategy == $DS_SKIP) {
		$user_msg->(Amanda::Disklist::Message->new(
				source_filename => __FILE__,
				source_line     => __LINE__,
				code  => 1400003,
				severity => $Amanda::Message::WARNING,
				arg   => $arg));
	    } else {
		$user_msg->(Amanda::Disklist::Message->new(
				source_filename => __FILE__,
				source_line     => __LINE__,
				code  => 1400004,
				severity => $Amanda::Message::WARNING,
				arg   => $arg));
	    }
	    $prev_match = 0;
	}
    }

    if ($prev_match == 1) { # all disk of the previous host
	$match_a_disk = 0;
	for my $disk (Amanda::Disklist::all_disks()) {
	    if (match_host($prevhost, $disk->{'host'}->{'hostname'})) {
		$disk->{'todo'} = 1;
		$match_a_disk = 1;
	    }
	}

	if (!$match_a_disk) {
	    $user_msg->(Amanda::Disklist::Message->new(
				source_filename => __FILE__,
				source_line     => __LINE__,
				code  => 1400005,
				severity => $Amanda::Message::WARNING,
				host   => $prevhost));
	}
    }

    for my $disk (Amanda::Disklist::all_disks()) {
	if ($disk->{'todo'} == -1) {
	    $disk->{'todo'} = 0;
	}
    }
}

sub do_on_match_disklist {
    my %params = @_;
    my $user_msg = $params{'user_msg'};
    my $disk_cb = $params{'disk_cb'};

    Amanda::Disklist::match_disklist(%params);

    for my $disk (Amanda::Disklist::all_disks()) {
	if ($disk->{'todo'} == 1) {
	    my @result_messages = $disk_cb->($disk);
	    for my $message (@result_messages) {
		$user_msg->($message);
	    }
	}
    }
}



package Amanda::Disklist::Disk;
# methods
use Amanda::Config qw( :getconf);



sub xml_optionstr {
    my $disk = shift;

    return Amanda::Disklist::xml_optionstr_disk($disk->{'host'}->{'hostname'},
			      $disk->{'name'});
}

sub xml_application {
    my $disk = shift;
    my $their_features = shift;

    return Amanda::Disklist::xml_application_disk($disk->{'host'}->{'hostname'},
			      $disk->{'name'}, $their_features->am_features());
}

sub xml_estimate {
    my $disk = shift;
    my $their_features = shift;

    return Amanda::Disklist::xml_estimate_disk($disk->{'host'}->{'hostname'},
			      $disk->{'name'}, $their_features->am_features());
}

package Amanda::Disklist::Host;

sub get_disk {
    my ($self, $disk) = @_;
    return $Amanda::Disklist::disks{$self->{'hostname'}}{$disk};
}

sub all_disks {
    my ($self) = @_;
    return sort { $a->{'name'} cmp $b->{'name'} } values %{$Amanda::Disklist::disks{$self->{'hostname'}}};
}

package Amanda::Disklist::Interface;

# methods

package Amanda::Disklist;

our (%disks, %hosts, %interfaces);

sub read_disklist {
    my %params = @_;

    my $errlev = read_disklist_internal(
	($params{filename} or config_dir_relative(getconf($CNF_DISKFILE))));
    if ($errlev >= $CFGERR_ERRORS) {
	return $errlev;
    }
    reset_disklist_internal(
	\%disks, ($params{disk_class} or "Amanda::Disklist::Disk"),
	\%hosts, ($params{host_class} or "Amanda::Disklist::Host"),
	\%interfaces, ($params{interface_class} or "Amanda::Disklist::Interface"),
    );
    return $errlev;
}

sub reset_disklist {
    reset_disklist_internal(
	\%disks, ($params{disk_class} or "Amanda::Disklist::Disk"),
	\%hosts, ($params{host_class} or "Amanda::Disklist::Host"),
	\%interfaces, ($params{interface_class} or "Amanda::Disklist::Interface"));
}

sub add_holding_to_disklist {
    Amanda::Logfile::search_holding_disk(1);
    reset_disklist_internal(
	\%disks, ($params{disk_class} or "Amanda::Disklist::Disk"),
	\%hosts, ($params{host_class} or "Amanda::Disklist::Host"),
	\%interfaces, ($params{interface_class} or "Amanda::Disklist::Interface"));
}

sub unload_disklist {
    return unload_disklist_internal();
}

sub get_host {
    my ($hostname) = @_;
    return $hosts{$hostname};
}

sub all_hosts {
    return sort { $a->{'hostname'} cmp $b->{'hostname'} } values %hosts;
}

sub get_disk {
    my ($hostname, $diskname) = @_;
    return $disks{$hostname}->{$diskname};
}

sub all_disks {
    my @rv;
    foreach my $hostname (sort keys %disks) {
	foreach my $diskname ( sort keys %{$disks{$hostname}} ) {
	    push @rv, $disks{$hostname}->{$diskname};
	}
    }
    return @rv;
}

sub get_interface {
    my ($interfacename) = @_;
    return $interfaces{$interfacename};
}

sub all_interfaces {
    return values %interfaces;
}

push @EXPORT_OK, qw( read_disklist
	get_host all_hosts
	get_disk all_disks
	get_interface all_interfaces);


package Amanda::Disklist::Message;
use strict;
use warnings;

use Amanda::Message;
use vars qw( @ISA );
@ISA = qw( Amanda::Message );

sub local_message {
    my $self = shift;

    if ($self->{'code'} == 1400000) {
	return "Argument '$self->{'arg'}' cannot be both a host and a disk.";
    } elsif ($self->{'code'} == 1400001) {
	return "All disks on host '$self->{'host'}' are ignored or have strategy \"skip\".";
    } elsif ($self->{'code'} == 1400002) {
	return "Argument '$self->{'arg'}' matches neither a host nor a disk". (($self->{'incorrect_quoting'}) ? "; quoting may be incorrect.":".");
    } elsif ($self->{'code'} == 1400003) {
	return "Argument '$self->{'arg'}' matches a disk with strategy \"skip\"";
    } elsif ($self->{'code'} == 1400004) {
	return "Argument '$self->{'arg'}' matches a disk marked \"ignore\"";
    } elsif ($self->{'code'} == 1400005) {
	return "All disks on host '$self->{'host'}' are ignored or have strategy \"skip\".";
    } elsif ($self->{'code'} == 1400006) {
	return "Errors processing disklist '$self->{'diskfile'}'.";
    } elsif ($self->{'code'} == 1400007) {
	return "No such host '$self->{'host'}' in disklist.";
    } elsif ($self->{'code'} == 1400008) {
	return "No such disk '$self->{'disk'}' for host '$self->{'host'}' in disklist.";
    } elsif ($self->{'code'} == 1400009) {
	return "Required 'disk' argument is not provided.";
    } elsif ($self->{'code'} == 1400010) {
	return "List of DLEs.";
    }
}
1;
