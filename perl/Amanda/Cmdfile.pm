# This file was automatically generated by SWIG (http://www.swig.org).
# Version 3.0.8
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package Amanda::Cmdfile;
use base qw(Exporter);
use base qw(DynaLoader);
require Amanda::Config;
package Amanda::Cmdfilec;
bootstrap Amanda::Cmdfile;
package Amanda::Cmdfile;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package Amanda::Cmdfile;

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

package Amanda::Cmdfile;


############# Class : Amanda::Cmdfile::Cmddata ##############

package Amanda::Cmdfile::Cmddata;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Amanda::Cmdfile );
%OWNER = ();
%ITERATORS = ();
*swig_id_get = *Amanda::Cmdfilec::Cmddata_id_get;
*swig_id_set = *Amanda::Cmdfilec::Cmddata_id_set;
*swig_operation_get = *Amanda::Cmdfilec::Cmddata_operation_get;
*swig_operation_set = *Amanda::Cmdfilec::Cmddata_operation_set;
*swig_config_get = *Amanda::Cmdfilec::Cmddata_config_get;
*swig_config_set = *Amanda::Cmdfilec::Cmddata_config_set;
*swig_src_storage_get = *Amanda::Cmdfilec::Cmddata_src_storage_get;
*swig_src_storage_set = *Amanda::Cmdfilec::Cmddata_src_storage_set;
*swig_src_pool_get = *Amanda::Cmdfilec::Cmddata_src_pool_get;
*swig_src_pool_set = *Amanda::Cmdfilec::Cmddata_src_pool_set;
*swig_src_label_get = *Amanda::Cmdfilec::Cmddata_src_label_get;
*swig_src_label_set = *Amanda::Cmdfilec::Cmddata_src_label_set;
*swig_src_fileno_get = *Amanda::Cmdfilec::Cmddata_src_fileno_get;
*swig_src_fileno_set = *Amanda::Cmdfilec::Cmddata_src_fileno_set;
*swig_src_labels_str_get = *Amanda::Cmdfilec::Cmddata_src_labels_str_get;
*swig_src_labels_str_set = *Amanda::Cmdfilec::Cmddata_src_labels_str_set;
*swig_src_labels_get = *Amanda::Cmdfilec::Cmddata_src_labels_get;
*swig_src_labels_set = *Amanda::Cmdfilec::Cmddata_src_labels_set;
*swig_holding_file_get = *Amanda::Cmdfilec::Cmddata_holding_file_get;
*swig_holding_file_set = *Amanda::Cmdfilec::Cmddata_holding_file_set;
*swig_hostname_get = *Amanda::Cmdfilec::Cmddata_hostname_get;
*swig_hostname_set = *Amanda::Cmdfilec::Cmddata_hostname_set;
*swig_diskname_get = *Amanda::Cmdfilec::Cmddata_diskname_get;
*swig_diskname_set = *Amanda::Cmdfilec::Cmddata_diskname_set;
*swig_dump_timestamp_get = *Amanda::Cmdfilec::Cmddata_dump_timestamp_get;
*swig_dump_timestamp_set = *Amanda::Cmdfilec::Cmddata_dump_timestamp_set;
*swig_level_get = *Amanda::Cmdfilec::Cmddata_level_get;
*swig_level_set = *Amanda::Cmdfilec::Cmddata_level_set;
*swig_dst_storage_get = *Amanda::Cmdfilec::Cmddata_dst_storage_get;
*swig_dst_storage_set = *Amanda::Cmdfilec::Cmddata_dst_storage_set;
*swig_working_pid_get = *Amanda::Cmdfilec::Cmddata_working_pid_get;
*swig_working_pid_set = *Amanda::Cmdfilec::Cmddata_working_pid_set;
*swig_status_get = *Amanda::Cmdfilec::Cmddata_status_get;
*swig_status_set = *Amanda::Cmdfilec::Cmddata_status_set;
*swig_todo_get = *Amanda::Cmdfilec::Cmddata_todo_get;
*swig_todo_set = *Amanda::Cmdfilec::Cmddata_todo_set;
*swig_size_get = *Amanda::Cmdfilec::Cmddata_size_get;
*swig_size_set = *Amanda::Cmdfilec::Cmddata_size_set;
*swig_start_time_get = *Amanda::Cmdfilec::Cmddata_start_time_get;
*swig_start_time_set = *Amanda::Cmdfilec::Cmddata_start_time_set;
*swig_expire_get = *Amanda::Cmdfilec::Cmddata_expire_get;
*swig_expire_set = *Amanda::Cmdfilec::Cmddata_expire_set;
*swig_count_get = *Amanda::Cmdfilec::Cmddata_count_get;
*swig_count_set = *Amanda::Cmdfilec::Cmddata_count_set;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Amanda::Cmdfilec::delete_Cmddata($self);
        delete $OWNER{$self};
    }
}

sub new {
    my $pkg = shift;
    my $self = Amanda::Cmdfilec::new_Cmddata(@_);
    bless $self, $pkg if defined($self);
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Amanda::Cmdfile::Cmdfile ##############

package Amanda::Cmdfile::Cmdfile;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Amanda::Cmdfile );
%OWNER = ();
%ITERATORS = ();
*swig_version_get = *Amanda::Cmdfilec::Cmdfile_version_get;
*swig_version_set = *Amanda::Cmdfilec::Cmdfile_version_set;
*swig_max_id_get = *Amanda::Cmdfilec::Cmdfile_max_id_get;
*swig_max_id_set = *Amanda::Cmdfilec::Cmdfile_max_id_set;
*swig_lock_get = *Amanda::Cmdfilec::Cmdfile_lock_get;
*swig_lock_set = *Amanda::Cmdfilec::Cmdfile_lock_set;
*swig_cmdfile_get = *Amanda::Cmdfilec::Cmdfile_cmdfile_get;
*swig_cmdfile_set = *Amanda::Cmdfilec::Cmdfile_cmdfile_set;
sub new {
    my $pkg = shift;
    my $self = Amanda::Cmdfilec::new_Cmdfile(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Amanda::Cmdfilec::delete_Cmdfile($self);
        delete $OWNER{$self};
    }
}

*write = *Amanda::Cmdfilec::Cmdfile_write;
*unlock = *Amanda::Cmdfilec::Cmdfile_unlock;
*add_to_memory = *Amanda::Cmdfilec::Cmdfile_add_to_memory;
*add_to_file = *Amanda::Cmdfilec::Cmdfile_add_to_file;
*has_holding = *Amanda::Cmdfilec::Cmdfile_has_holding;
*get_ids_for_holding = *Amanda::Cmdfilec::Cmdfile_get_ids_for_holding;
*remove_for_restore_label = *Amanda::Cmdfilec::Cmdfile_remove_for_restore_label;
*remove_for_restore_holding = *Amanda::Cmdfilec::Cmdfile_remove_for_restore_holding;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package Amanda::Cmdfile;

*CMD_COPY = *Amanda::Cmdfilec::CMD_COPY;
*CMD_FLUSH = *Amanda::Cmdfilec::CMD_FLUSH;
*CMD_RESTORE = *Amanda::Cmdfilec::CMD_RESTORE;
*CMD_DONE = *Amanda::Cmdfilec::CMD_DONE;
*CMD_TODO = *Amanda::Cmdfilec::CMD_TODO;
*CMD_PARTIAL = *Amanda::Cmdfilec::CMD_PARTIAL;

@EXPORT_OK = ();
%EXPORT_TAGS = ();


=head1 NAME

Amanda::Cmdfile - manage Amanda cmdfile

=head1 SYNOPSIS

  use Amanda::Config qw( :getconf config_dir_relative );
  use Amanda::Cmdfile;

  my $conf_cmdfile = config_dir_relative(getconf($CNF_CMDFILE));
  my $cmdfile = Amanda::Cmdfile->new($conf_cmdfile);

  my $cmddata = Amanda::Cmdfile::Cmddata->new(
		operation      => $Amanda::Cmdfile::CMD_FLUSH,
		config         => get_config_name(),
		holding_file   => $hfile,
		host           => $hostname,
		disk           => $diskname,
		dump_timestamp => $dump_timestamp,
		storage        => $storage_name,
		working_pid    => getpid(),
		status         => $Amanda::Cmdfile::CMD_TODO);
  $cmdfile->add_to_memory($cmddata);
  if ($cmdfile->has_holding($hfile)) { ... }
  my $ids = $cmdfile->get_ids_for_holding($hfile);
  $cmdfile->write();


=head2 Cmdfile FUNCTIONS

Use these functions to read/update the cmdfile.

=over

=item C<new>

  my $cmddata = Amanda::Cmdfile::new($conf_cmdfile)

Open a cmdfile, lock the file.

=item C<write>

  $cmddata->writenew();

Write the cmdfile. Unlock the file.

=item C<unlock>

  $cmddata->unlock();

Unlock the file.

=item C<add_to_memory>

  $cmddata->add_to_memory($cmddata);

Add Cmddata to the in memory copy.

=item C<add_to_file>

  $cmddata->add_to_file($cmddata);

Add the Cmddata to the file, write, unlock and close it.

=item C<has_holding>

  $has_holding = $cmddata->has_holding($holding_file);

Return true if there is a command for the holding file.

=item C<get_ids_for_holding>

  $ids = $cmddata->get_ids_for_holding($holding_file);

Return a string of all command ids for the holding file.

=back

=head2 Cmddata FUNCTIONS

Use that function to create a Cmddata

=over

=item C<new>

  my $cmddata = Amanda::Cmdfile::Cmddata->new(
		operation      => $Amanda::Cmdfile::CMD_FLUSH,
		config         => get_config_name(),
		holding_file   => $hfile,
		host           => $hostname,
		disk           => $diskname,
		dump_timestamp => $dump_timestamp,
		storage        => $storage_name,
		working_pid    => getpid(),
		status         => $Amanda::Cmdfile::CMD_TODO);

Create a Cmddata

=back

=cut



use Amanda::Debug qw( :logging );
use Amanda::Config qw( :getconf config_dir_relative );
use Amanda::Util qw ( match_disk match_host );

# SWIG produces a sub-package for the cmddatas_t "class", in this case named
# Amanda::Cmdfile::cmddatas_t.  For user convenience, we allow
# Amanda::Cmdfile->new(..) to do the same thing.  This is a wrapper function,
# and not just a typeglob assignment, because we want to get the right blessing.
package Amanda::Cmdfile;
sub new {
    my $pkg = shift;
    Amanda::Cmdfile::Cmdfile->new(@_);
}

sub new_Cmddata {
    my $class = shift;
    my %params = @_;

    $params{'working_pid'} ||= 0;
    $params{'todo'} ||= 0;
    $params{'size'} ||= 0;

    my $cmddata = Amanda::Cmdfile::Cmddata->new();
    $cmddata->{'operation'}      = $params{'operation'};
    $cmddata->{'config'}         = $params{'config'} if defined $params{'config'};
    $cmddata->{'src_storage'}    = $params{'src_storage'} if defined $params{'src_storage'};
    $cmddata->{'src_pool'}       = $params{'src_pool'} if defined $params{'src_pool'};
    $cmddata->{'src_label'}      = $params{'src_label'} if defined $params{'src_label'};
    $cmddata->{'src_fileno'}     = $params{'src_fileno'} if defined $params{'src_fileno'};
    $cmddata->{'src_labels_str'} = $params{'src_labels_str'} if defined $params{'src_labels_str'};
    $cmddata->{'src_labels'}     = $params{'src_labels'} if defined $params{'src_labels'};
    $cmddata->{'holding_file'}   = $params{'holding_file'} if defined $params{'holding_file'};
    $cmddata->{'hostname'}       = $params{'hostname'} if defined $params{'hostname'};
    $cmddata->{'diskname'}       = $params{'diskname'} if defined $params{'diskname'};
    $cmddata->{'dump_timestamp'} = $params{'dump_timestamp'} if defined $params{'dump_timestamp'};
    $cmddata->{'label'}          = $params{'label'} if defined $params{'label'};
    $cmddata->{'dst_storage'}    = $params{'dst_storage'} if defined $params{'dst_storage'};
    $cmddata->{'working_pid'}    = $params{'working_pid'} if defined $params{'working_pid'};
    $cmddata->{'status'}         = $params{'status'} if defined $params{'status'};
    $cmddata->{'todo'}           = $params{'todo'} if defined $params{'todo'};
    $cmddata->{'size'}           = $params{'size'} if defined $params{'size'};
    $cmddata->{'start_time'}     = $params{'start_time'} if defined $params{'start_time'};

    return $cmddata;
};


package Amanda::Cmdfile::Message;
use strict;
use warnings;

use Amanda::Message;
use vars qw( @ISA );
@ISA = qw( Amanda::Message );

sub local_message {
    my $self = shift;

    if ($self->{'code'} == 2100000) {
	return "Argument '$self->{'arg'}' cannot be both a host and a disk.";
    }
}
1;
