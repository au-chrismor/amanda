# This file was automatically generated by SWIG (http://www.swig.org).
# Version 3.0.8
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package Amanda::Tapelist;
use base qw(Exporter);
use base qw(DynaLoader);
package Amanda::Tapelistc;
bootstrap Amanda::Tapelist;
package Amanda::Tapelist;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package Amanda::Tapelist;

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

package Amanda::Tapelist;

*compute_retention = *Amanda::Tapelistc::compute_retention;
*list_retention = *Amanda::Tapelistc::list_retention;
*list_no_retention = *Amanda::Tapelistc::list_no_retention;
*list_new_tapes = *Amanda::Tapelistc::list_new_tapes;
*get_last_reusable_tape_label = *Amanda::Tapelistc::get_last_reusable_tape_label;
*volume_is_reusable = *Amanda::Tapelistc::volume_is_reusable;
*get_retention_type = *Amanda::Tapelistc::get_retention_type;
*C_read_tapelist = *Amanda::Tapelistc::C_read_tapelist;
*C_add_tapelabel = *Amanda::Tapelistc::C_add_tapelabel;
*C_remove_tapelabel = *Amanda::Tapelistc::C_remove_tapelabel;
*C_clear_tapelist = *Amanda::Tapelistc::C_clear_tapelist;
*C_reset_tapelist = *Amanda::Tapelistc::C_reset_tapelist;

# ------- VARIABLE STUBS --------

package Amanda::Tapelist;

*RETENTION_NO = *Amanda::Tapelistc::RETENTION_NO;
*RETENTION_NO_REUSE = *Amanda::Tapelistc::RETENTION_NO_REUSE;
*RETENTION_TAPES = *Amanda::Tapelistc::RETENTION_TAPES;
*RETENTION_DAYS = *Amanda::Tapelistc::RETENTION_DAYS;
*RETENTION_RECOVER = *Amanda::Tapelistc::RETENTION_RECOVER;
*RETENTION_FULL = *Amanda::Tapelistc::RETENTION_FULL;
*RETENTION_CMD_COPY = *Amanda::Tapelistc::RETENTION_CMD_COPY;
*RETENTION_CMD_FLUSH = *Amanda::Tapelistc::RETENTION_CMD_FLUSH;
*RETENTION_CMD_RESTORE = *Amanda::Tapelistc::RETENTION_CMD_RESTORE;
*RETENTION_OTHER_CONFIG = *Amanda::Tapelistc::RETENTION_OTHER_CONFIG;

@EXPORT_OK = ();
%EXPORT_TAGS = ();


=head1 NAME

Amanda::Tapelist - manipulate the Amanda tapelist

=head1 SYNOPSIS

    use Amanda::Tapelist;

    # to get a read only copy of the tapelist file:
    my $tl = Amanda::Tapelist->new("/path/to/tapefile");

    # to read/update/write the tapelist file
    # read and take lock
    my $tl = Amanda::Tapelist->new("/path/to/tapefile", 1);
    # modify the memory copy
    $tl->add_tapelabel($datestamp, $label);
    $tl->add_tapelabel($datestamp2, $label2, $comment, 1);
    # write it and unlock
    $tl->write();

    # If you already have a read only copy and want to modify it
    # take a read only copy
    my $tl = Amanda::Tapelist->new("/path/to/tapefile");
    # reload and take lock
    $tl->reload(1);
    # modify the memory copy
    tl->add_tapelabel($datestamp, $label);
    $tl->add_tapelabel($datestamp2, $label2, $comment, 1);
    # write it and unlock
    $tl->write();

=head1 OBJECT-ORIENTED INTERFACE

C<new> returns a hash with no C<tles> set if the tapelist does
not exist. C<tles> is an empty array if the tapelist is empty.
Invalid entries are silently ignored.

=head2 tapelist object

A tapelist object is a hash with the following keys:

=over

=item C<filename>

  The filename of the tapelist file.

=item C<filename_lock>

  The filename of the lock file.

=item C<fl>

  A Amanda::Util::file_lock is the file is locked.

=item C<tles>

A sequence of tapelist elements (referred to as TLEs in this document),
sorted by datestamp from newest to oldest.

=back

=head2 tapelist element

A tapelist elementas a hash with the following keys:

=over

=item C<position>

the one-based position of the TLE in the tapelist

=item C<datestamp>

the datestamp on which this was written, or "0" for an unused tape

=item C<reuse>

true if this tape can be reused when it is no longer active

=item C<label>

tape label

=item C<comment>

the comment for this tape, or undef if no comment was given

=back

=head1 Method

The following methods are available on a tapelist object C<$tl>:

=over

=item C<relod($lock)>

reload the tapelist file, lock it if $lock is set

=item C<lookup_tapelabel($lbl)>

look up and return a reference to the TLE with the given label

=item C<lookup_tapepos($pos)>

look up and return a reference to the TLE in the given position

=item C<lookup_tapedate($date)>

look up and return a reference to the TLE with the given datestamp

=item C<remove_tapelabel($lbl)>

remove the tape with the given label

=item C<add_tapelabel($date, $lbl, $comment, $reuse)>

add a tape with the given date, label, comment and reuse to the end of the
tapelist. reuse can be 1 or undef for a reusable volume, it must be 0 for
a no-reusable volume.

=item C<write()> or C<write($filename)>

write the tapelist out to the same file as when read or to C<$filename> if it
is set, remove the lock if a lock was taken

=item C<unlock()>

remove the lock if a lock was taken

=item C<clear_tapelist()>

remove all tle from the tles.

=back

=head1 INTERACTION WITH C CODE

The C portions of Amanda treat the tapelist as a global variable,
while this package treats it as an object (and can thus handle more
than one tapelist simultaneously).  Every call to C<reload>
fills this global variable with a copy of the tapelist, and likewise
C<clear_tapelist> clears the global.  However, any changes made from
Perl are not reflected in the C copy, nor are changes made by C
modules reflected in the Perl copy.

=cut



push @EXPORT_OK, qw(RetentionType_to_strings);
push @{$EXPORT_TAGS{"RetentionType"}}, qw(RetentionType_to_strings);

my %_RetentionType_VALUES;
#Convert a flag value to a list of names for flags that are set.
sub RetentionType_to_strings {
    my ($flags) = @_;
    my @result = ();

    for my $k (keys %_RetentionType_VALUES) {
	my $v = $_RetentionType_VALUES{$k};

	#is this a matching flag?
	if (($v == 0 && $flags == 0) || ($v != 0 && ($flags & $v) == $v)) {
	    push @result, $k;
	}
    }

#by default, just return the number as a 1-element list
    if (!@result) {
	return ($flags);
    }

    return @result;
}

push @EXPORT_OK, qw($RETENTION_NO);
push @{$EXPORT_TAGS{"RetentionType"}}, qw($RETENTION_NO);

$_RetentionType_VALUES{"retention-no"} = $RETENTION_NO;

push @EXPORT_OK, qw($RETENTION_NO_REUSE);
push @{$EXPORT_TAGS{"RetentionType"}}, qw($RETENTION_NO_REUSE);

$_RetentionType_VALUES{"no-reuse"} = $RETENTION_NO_REUSE;

push @EXPORT_OK, qw($RETENTION_TAPES);
push @{$EXPORT_TAGS{"RetentionType"}}, qw($RETENTION_TAPES);

$_RetentionType_VALUES{"retention-tapes"} = $RETENTION_TAPES;

push @EXPORT_OK, qw($RETENTION_DAYS);
push @{$EXPORT_TAGS{"RetentionType"}}, qw($RETENTION_DAYS);

$_RetentionType_VALUES{"retention-days"} = $RETENTION_DAYS;

push @EXPORT_OK, qw($RETENTION_RECOVER);
push @{$EXPORT_TAGS{"RetentionType"}}, qw($RETENTION_RECOVER);

$_RetentionType_VALUES{"retention-recover"} = $RETENTION_RECOVER;

push @EXPORT_OK, qw($RETENTION_FULL);
push @{$EXPORT_TAGS{"RetentionType"}}, qw($RETENTION_FULL);

$_RetentionType_VALUES{"retention-full"} = $RETENTION_FULL;

push @EXPORT_OK, qw($RETENTION_CMD_COPY);
push @{$EXPORT_TAGS{"RetentionType"}}, qw($RETENTION_CMD_COPY);

$_RetentionType_VALUES{"command-copy"} = $RETENTION_CMD_COPY;

push @EXPORT_OK, qw($RETENTION_CMD_FLUSH);
push @{$EXPORT_TAGS{"RetentionType"}}, qw($RETENTION_CMD_FLUSH);

$_RetentionType_VALUES{"command-flush"} = $RETENTION_CMD_FLUSH;

push @EXPORT_OK, qw($RETENTION_CMD_RESTORE);
push @{$EXPORT_TAGS{"RetentionType"}}, qw($RETENTION_CMD_RESTORE);

$_RetentionType_VALUES{"command-restore"} = $RETENTION_CMD_RESTORE;

push @EXPORT_OK, qw($RETENTION_OTHER_CONFIG);
push @{$EXPORT_TAGS{"RetentionType"}}, qw($RETENTION_OTHER_CONFIG);

$_RetentionType_VALUES{"other-config"} = $RETENTION_OTHER_CONFIG;

#copy symbols in RetentionType to constants
push @{$EXPORT_TAGS{"constants"}},  @{$EXPORT_TAGS{"RetentionType"}};

use Amanda::Debug qw(:logging);
use Amanda::Config qw( config_dir_relative );
use File::Copy;
use Fcntl qw(:flock); # import LOCK_* constants
use Amanda::Message qw( :severity );

## package functions

sub new {
    my ($class)  = shift;
    my ($filename, $lock) = @_;
    my $self = {
	filename => $filename,
	lockname => $filename . '.lock',
	last_write => $filename . '.last_write',
    };
    bless $self, $class;

    my $message = $self->reload($lock, 1);
    return ($self, $message);
}

sub clear_tapelist {
    my $self = shift;

    # clear the C version
    C_clear_tapelist();

    $self->{'tles'} = [];
    $self->{'tle_hash_label'} = undef;
    $self->{'tle_hash_barcode'} = undef;
    unlink($self->{'last_write'});

    return $self;
}

sub reset_tapelist {
    my $self = shift;

    # reset the C version
    C_reset_tapelist();

    $self->{'tles'} = [];
    $self->{'tle_hash_label'} = undef;
    $self->{'tle_hash_barcode'} = undef;
    unlink($self->{'last_write'});

    return $self;
}

## methods

sub reload {
    my $self = shift;
    my $lock = shift;
    my $force = shift;

    if ($lock) {
	$self->_take_lock();
    }

    if (!$force) {
	$last_write_pid = readlink($self->{'last_write'});
	if (defined $last_write_pid &&
	    $last_write_pid == $$) {
	    return;
	}
    }

    # let C read the file
    C_read_tapelist($self->{'filename'});

    my $message = $self->_read_tapelist();
    return $message;
}

sub lookup_tapelabel {
    my $self = shift;
    my ($label) = @_;

    return $self->{'tle_hash_label'}{$label};
}

sub lookup_by_barcode {
    my $self = shift;
    my ($barcode) = @_;

    return $self->{'tle_hash_barcode'}{$barcode};
}

sub lookup_tapepos {
    my $self = shift;
    my ($position) = @_;

    $self->_update_positions();
    return $self->{'tles'}->[$position-1];
}

sub lookup_tapedate {
    my $self = shift;
    my ($datestamp) = @_;

    # no hash becasue only installcheck use it
    for my $tle (@{$self->{'tles'}}) {
	return $tle if ($tle->{'datestamp'} eq $datestamp);
    }

    return undef;
}

sub remove_tapelabel {
    my $self = shift;
    my ($label) = @_;

    delete $self->{'tle_hash_label'}{$label};
    for (my $i = 0; $i < @{$self->{tles}}; $i++) {
	if ($self->{tles}->[$i]->{'label'} eq $label) {
	    $barcode = $self->{tles}->[$i]->{'barcode'};
	    if ($barcode) {
		delete $self->{'tle_hash_barcode'}{$barcode};
	    }
	    splice @{$self->{tles}}, $i, 1;
	    $self->_update_positions();
	    last;
	}
    }
    C_remove_tapelabel($label);
}

sub add_tapelabel {
    my $self = shift;
    my ($datestamp, $label, $comment, $reuse, $meta, $barcode, $blocksize,
	$pool, $storage, $config) = @_;
    $reuse = 1 if !defined $reuse;
    $reuse = 0 if $reuse eq '';
    $datestamp = 0 if !defined $datestamp;

    # prepend this (presumably new) volume to the beginning of the list
    my $tle = {
        'datestamp' => $datestamp,
        'label'     => $label,
        'reuse'     => $reuse,
        'barcode'   => $barcode,
        'meta'      => $meta,
        'blocksize' => $blocksize,
        'pool'      => $pool,
        'storage'   => $storage,
        'config'    => $config,
        'comment'   => $comment,
    };
    $self->{'tle_hash_label'}{$label} = $tle;
    if ($barcode) {
	$self->{'tle_hash_barcode'}{$barcode} = $tle;
    }
    my $tles = $self->{'tles'};
    if (!defined $tles->[0] ||
	$tles->[0]->{'datestamp'} le $datestamp) {
	unshift @{$tles}, $tle;
    } elsif (defined $tles->[0] &&
	$tles->[@$tles-1]->{'datestamp'} gt $datestamp) {
	push @{$tles}, $tle;
    } else {
	my $added = 0;
	for my $i (0..(@$tles-1)) {
	    if ($tles->[$i]->{'datestamp'} le $datestamp) {
		splice @{$tles}, $i, 0, $tle;
		$added = 1;
		last;
	    }
	}
	push @{$tles}, $tle if !$added;
    }
    $self->_update_positions();
    C_add_tapelabel($datestamp, $label, $comment, $reuse, $meta, $barcode,
		    (defined $blocksize)? 0+$blocksize : 0,
		    $pool, $storage, $config);
}

sub write {
    my $self = shift;
    my ($filename) = @_;
    my $result = TRUE;
    $filename = $self->{'filename'} if !defined $filename;

    if (!exists $self->{'fl'}) {
	die("Tapelist::write no fl");
    }
    if (!$self->{'fl'}->locked()) {
	die("Tapelist::write not locked");
    }

    my $new_tapelist_file = $filename . "-new-" . time();

    open(my $fhn, ">", $new_tapelist_file) or die("Could not open '$new_tapelist_file' for writing: $!");
    for my $tle (@{$self->{tles}}) {
	my $datestamp = $tle->{'datestamp'};
	my $label = $tle->{'label'};
	my $reuse = $tle->{'reuse'} ? 'reuse' : 'no-reuse';
	my $barcode = (defined $tle->{'barcode'})? (" BARCODE:" . $tle->{'barcode'}) : '';
	my $meta = (defined $tle->{'meta'})? (" META:" . $tle->{'meta'}) : '';
	my $blocksize = (defined $tle->{'blocksize'})? (" BLOCKSIZE:" . $tle->{'blocksize'}) : '';
	my $pool = (defined $tle->{'pool'})? (" POOL:" . $tle->{'pool'}) : '';
	my $storage = (defined $tle->{'storage'})? (" STORAGE:" . $tle->{'storage'}) : '';
	my $config = (defined $tle->{'config'})? (" CONFIG:" . $tle->{'config'}) : '';
	my $comment = (defined $tle->{'comment'})? (" #" . $tle->{'comment'}) : '';
	$result &&= print $fhn "$datestamp $label $reuse$barcode$meta$blocksize$pool$storage$config$comment\n";
    }
    my $result_close = close($fhn);
    $result &&= $result_close;

    return if (!$result);

    unlink($self->{'last_write'});
    unless (move($new_tapelist_file, $filename)) {
	die ("failed to rename '$new_tapelist_file' to '$filename': $!");
    }
    symlink ("$$", $self->{'last_write'});

    # re-read from the C side to synchronize
    # C side should already be synchronized
    #C_read_tapelist($filename);

    $self->unlock();

    return undef;
}

sub unlock {
    my $self = shift;

    return if !exists $self->{'fl'};

    $self->{'fl'}->unlock();
    delete $self->{'fl'}
}

## private methods

sub _take_lock {
    my $self = shift;

    if (!-e $self->{'lockname'}) {
	open(my $fhl, ">>", $self->{'lockname'});
	close($fhl);
    }
    my $fl = Amanda::Util::file_lock->new($self->{'lockname'});
    while(($r = $fl->lock()) == 1) {
	sleep(1);
    }
    if ($r == 0) {
	$self->{'fl'} = $fl;
    }
}

sub _read_tapelist {
    my $self = shift;

    my @tles;
    $self->{'tle_hash_label'} = undef;
    $self->{'tle_hash_barcode'} = undef;
    my $linenum = 0;
    my $fh;
    if (!open($fh, "<", $self->{'filename'})) {
	$self->{'tles'} = [];
	return undef;
    }

    while (my $line = <$fh>) {
	$linenum++;
	my ($datestamp, $label, $reuse, $barcode, $meta, $blocksize, $pool, $storage, $config, $comment)
	    = $line =~ m/^([0-9]+)\s*([^\s]*)\s*(?:(reuse|no-reuse))?\s*(?:BARCODE:([^\s]*))?\s*(?:META:([^\s]*))?\s*(?:BLOCKSIZE:([^\s]*))?\s*(?:POOL:([^\s]*))?\s*(?:STORAGE:([^\s]*))?\s*(?:CONFIG:([^\s]*))?\s*(?:\#(.*))?$/mx;
	if (!defined $datestamp) {
	    return Amanda::Tapelist::Message->new(
			source_filename => __FILE__,
			source_line     => __LINE__,
			code    => 1600002,
			severity => $Amanda::Message::ERROR,
			tapelist_filename => $self->{'filename'},
			linenum => $linenum,
			line    => $line);
	}
	my $tle = {
	    'datestamp' => $datestamp,
	    'label'     => $label,
	    'reuse'     => (!defined $reuse || $reuse eq 'reuse')?1:0,
	    'barcode'   => $barcode,
	    'meta'      => $meta,
	    'blocksize' => $blocksize,
	    'pool'      => $pool,
	    'storage'   => $storage,
	    'config'    => $config,
	    'comment'   => $comment,
	};
	$self->{'tle_hash_label'}{$label} = $tle;
	if ($barcode) {
	    $self->{'tle_hash_barcode'}{$barcode} = $tle;
	}
	push @tles, $tle;
    }
    close($fh);

    # sort in descending order by datestamp, sorting on position, too, to ensure
    # that entries with the same datestamp stay in the right order
    $self->{'tles'} = \@tles;
    $self->_update_positions();
    @tles = sort {
	   $b->{'datestamp'} cmp $a->{'datestamp'}
	|| $a->{'position'} <=> $b->{'position'}
	} @tles;

    $self->{'tles'} = \@tles;

    # and re-calculate the positions
    $self->_update_positions(\@tles);

    # check for duplicate labels
    my %labels;
    for my $tle (@{$self->{'tles'}}) {
	my $label = $tle->{'label'};
	if (exists $labels{$label}) {
	    return Amanda::Tapelist::Message->new(
			source_filename => __FILE__,
			source_line     => __LINE__,
			code    => 1600003,
			severity => $Amanda::Message::WARNING,
			tapelist_filename => $self->{'filename'},
			label   => $label);
	}
	$labels{$label} = 1;
    }
    return undef;
}

# update the 'position' key for each TLE
sub _update_positions {
    my $self = shift;
    my $tles = $self->{'tles'};
    for (my $i = 0; $i < scalar @$tles; $i++) {
	$tles->[$i]->{'position'} = $i+1;
    }
}

sub get_retention_name {
    my $self = shift;
    my $retention_type = shift;

    if ($retention_type == $RETENTION_NO) {
	return "retention-no";
    } elsif ($retention_type == $RETENTION_NO_REUSE) {
	return "no-reuse";
    } elsif ($retention_type == $RETENTION_TAPES) {
	return "retention-tapes";
    } elsif ($retention_type == $RETENTION_DAYS) {
	return "retention-days";
    } elsif ($retention_type == $RETENTION_RECOVER) {
	return "retention-recover";
    } elsif ($retention_type == $RETENTION_FULL) {
	return "retention-full";
    } elsif ($retention_type == $RETENTION_CMD_COPY) {
	return "command-copy";
    } elsif ($retention_type == $RETENTION_CMD_FLUSH) {
	return "command-hlush";
    } elsif ($retention_type == $RETENTION_CMD_RESTORE) {
	return "command-restore";
    } elsif ($retention_type == $RETENTION_OTHER_CONFIG) {
	return "other config";
    } else {
	return "unknown retention $retention_type";
    }
}


package Amanda::Tapelist::Message;
use strict;
use warnings;

use Amanda::Message;
use vars qw( @ISA );
@ISA = qw( Amanda::Message );

sub local_message {
    my $self = shift;

    if ($self->{'code'} == 1600000) {
        return "Failed to read tapelist file '$self->{'tapefile'}'.";
    } elsif ($self->{'code'} == 1600001) {
        return "List of labels";
    } elsif ($self->{'code'} == 1600002) {
        return "Failed to read tapelist file '$self->{'tapelist_filename'}' on line $self->{'linenum'}: $self->{'line'}";
    } elsif ($self->{'code'} == 1600003) {
        return "duplicate label '$self->{'label'} in tapelist file '$self->{'tapelist_filename'}'";
    }
}
1;
