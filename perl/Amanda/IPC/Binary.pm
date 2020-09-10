# This file was automatically generated by SWIG (http://www.swig.org).
# Version 3.0.8
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package Amanda::IPC::Binary;
use base qw(Exporter);
use base qw(DynaLoader);
package Amanda::IPC::Binaryc;
bootstrap Amanda::IPC::Binary;
package Amanda::IPC::Binary;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package Amanda::IPC::Binary;

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

package Amanda::IPC::Binary;

*ipc_binary_proto_new = *Amanda::IPC::Binaryc::ipc_binary_proto_new;
*ipc_binary_proto_add_cmd = *Amanda::IPC::Binaryc::ipc_binary_proto_add_cmd;
*ipc_binary_cmd_add_arg = *Amanda::IPC::Binaryc::ipc_binary_cmd_add_arg;
*ipc_binary_new_channel = *Amanda::IPC::Binaryc::ipc_binary_new_channel;
*ipc_binary_free_channel = *Amanda::IPC::Binaryc::ipc_binary_free_channel;
*ipc_binary_read_message = *Amanda::IPC::Binaryc::ipc_binary_read_message;
*ipc_binary_write_message = *Amanda::IPC::Binaryc::ipc_binary_write_message;
*ipc_binary_feed_data = *Amanda::IPC::Binaryc::ipc_binary_feed_data;
*ipc_binary_data_transmitted = *Amanda::IPC::Binaryc::ipc_binary_data_transmitted;
*ipc_binary_poll_message = *Amanda::IPC::Binaryc::ipc_binary_poll_message;
*ipc_binary_queue_message = *Amanda::IPC::Binaryc::ipc_binary_queue_message;

# ------- VARIABLE STUBS --------

package Amanda::IPC::Binary;

*IPC_BINARY_STRING = *Amanda::IPC::Binaryc::IPC_BINARY_STRING;
*IPC_BINARY_OPTIONAL = *Amanda::IPC::Binaryc::IPC_BINARY_OPTIONAL;

@EXPORT_OK = ();
%EXPORT_TAGS = ();


=head1 NAME

Amanda::IPC::Binary - binary-framed message-based communication

=head1 SYNOPSIS

See below.

=head1 DESCRIPTION

This package is an interface to the C-level protocol library declared in
C<common-src/ipc-binary.h>.  It enables two-way message-based communication,
using a binary framing that permits direct inclusion of non-string data.

Unlike the line protocol (see L<Amanda::IPC::LineProtocol>), this package does
not yet support asynchronous operation.

=head2 DEFINING A PROTOCOL

There are two parts to any use of this package.  First, define the protocol by
creating a subclass and populating it.  This subclass represents the protocol,
composed of a set of commands or messages and arguments that are attached to
those commands.

Begin with the subclass:

    package TestProtocol;
    use base "Amanda::IPC::Binary";
    use Amanda::IPC::Binary;

Then define the constants for each command.  Note that the C<constant> pragma did
not support the hash syntax in Perl-5.6, so this must be written as individual
invocations of the constant:

    use constant CMD1 => 1;
    use constant CMD2 => 2;

Then the constants for each argument:

    use constant USERNAME => 1;
    use constant PASSWORD => 2;
    use constant RESOURCE => 3;
    use constant USE_OVERDRIVE => 4;

Next, give the magic value for the protocol:

    magic(0x9812);

Then begin defining each command, along with its arguments:

    command(CMD1,
	RESOURCE, 0,
	USERNAME, $IPC_BINARY_STRING,
	PASSWORD, $IPC_BINARY_STRING|$IPC_BINARY_OPTIONAL);

The first argument to C<command> specifies the command ID.  The remaining
arguments are taken in pairs, and specify the argument and a bitfield of
flags.  The available flags are:

    $IPC_BINARY_STRING	    argument is a printable string
    $IPC_BINARY_OPTIONAL    argument is not required

If $IPC_BINARY_STRING is not specified, the argument can contain any sequence of
bytes (including nuls). In either case, a perl string is used to represent it.

=head2 USING A PROTOCOL

Once a protocol is defined, it forms a class which can be used to run the
protocol.  Multiple instances of this class can be created to handle
simultaneous uses of the protocol over different channels.

The constructor takes no parameters, but establishs a new channel, complete with
buffers for partially-read commands:

    my $chan = TestProtocol->new();

To write a message, call the C<write_message> method, passing a filehandle, a
command id, and argument/value pairs:

    if (!$chan->write_message($fh, TestProtocol::CMD1,
	    TestProtocol::RESOURCE => $res,
	    TestProtocol::USERNAME => "dustin")) {
	# ...
    }

It is not valid to omit an argument value, and all values must be perl strings
-- C<undef> is not alloewd, even for optional arguments.  If C<write_message>
fails, it returns false and C<$!> is set appropriately.  The function does not
return until the message has been written to the file.

To read a message, call C<read_message>, again passing a filehandle:

    my $msg = $chan->read_message($fh);

Note that this will block until a full message has been read.  The resulting
message object has a C<cmd_id> key that identifies the command and an C<args>
key that references a list of argument values, keyed by their argument ID:

    if ($msg->{'cmd_id'} == TestProtocol::CMD2) { ... }
    print $msg->{'args'}[TestProtocol::USERNAME], "\n";

The C<close> method will flush any open buffers and close a channel.  In the
synchronous case, this is essentially a no-op since all output buffers are
flushed at each call to C<write_message>.

=cut


push @EXPORT, qw($IPC_BINARY_STRING $IPC_BINARY_OPTIONAL);


use Carp;
push @EXPORT, qw( magic command new message );

# a map from package name to protocol
my %protos_by_pkg;

sub magic {
    my ($magic) = @_;
    my $caller = caller;

    croak "magic already set for this protocol"
	if (exists $protos_by_pkg{$caller});

    $protos_by_pkg{$caller} = ipc_binary_proto_new($magic);
}

sub command {
    my ($cmd_id, @args) = @_;
    my $caller = caller;

    croak "magic not set for this protocol"
	unless (exists $protos_by_pkg{$caller});

    croak "command args must be specified in pairs"
	unless (@args % 2 == 0);

    my $proto = $protos_by_pkg{$caller};
    $cmd = ipc_binary_proto_add_cmd($proto, $cmd_id);

    while (@args) {
	my $arg = shift @args;
	my $flags = shift @args;
	ipc_binary_cmd_add_arg($cmd, $arg, $flags);
    }
}

##
# Class Methods

sub new {
    my $class = shift;

    my $self = bless {
	chan => ipc_binary_new_channel($protos_by_pkg{$class}),
    }, $class;
}

sub message {
    my $self = shift;
    my ($cmd_id, @args) = @_;

    $self = bless {
	cmd_id => $cmd_id,
	chan => $self->{'chan'},
	args => [],
    }, "Amanda::IPC::Binary::Message";


    while (@args) {
	my $arg = shift @args;
	my $val = shift @args;
	$self->{'args'}[$arg] = $val;
    }

    return $self;
}

sub close {
    if ($self->{'chan'}) {
	ipc_binary_free_channel($self->{'chan'});
	$self->{'chan'} = undef;
    }
}

*DESTROY = *close;

##
# Blocking interface

sub read_message {
    my $self = shift;
    my ($fd) = @_;

    return ipc_binary_read_message($self->{'chan'}, $fd);
}

sub write_message {
    my $self = shift;
    my ($fd, $msg) = @_;

    if (ipc_binary_write_message($self->{'chan'}, $fd, $msg) < 0) {
	return 0;
    }
    return 1;
}

##
# Nonblocking interface -- TODO

##
# Message structure

package Amanda::IPC::Binary::Message;

# (constructor is the protocol's C<message> method)

# format:
# { cmd_id => $cmd_id,
#   chan => $channel,
#   args => [ $arg0, $arg1, .. ],
# }

sub get_cmd {
    return $self->{'cmd_id'};
}

sub get_arg {
    my ($self, $arg_id) = @_;

    return $self->{'args'}[$arg_id];
}

sub set_arg {
    my ($self, $arg_id, $value) = @_;
    $self->{'args'}[$arg_id] = $value;
}

package Amanda::IPC::Binary;

1;
