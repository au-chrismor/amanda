# This file was automatically generated by SWIG (http://www.swig.org).
# Version 3.0.8
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package Amanda::MainLoop;
use base qw(Exporter);
use base qw(DynaLoader);
package Amanda::MainLoopc;
bootstrap Amanda::MainLoop;
package Amanda::MainLoop;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package Amanda::MainLoop;

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

package Amanda::MainLoop;

*run_c = *Amanda::MainLoopc::run_c;
*run_until_empty_c = *Amanda::MainLoopc::run_until_empty_c;
*quit = *Amanda::MainLoopc::quit;
*timeout_source = *Amanda::MainLoopc::timeout_source;
*idle_source = *Amanda::MainLoopc::idle_source;
*child_watch_source = *Amanda::MainLoopc::child_watch_source;
*fd_source = *Amanda::MainLoopc::fd_source;

############# Class : Amanda::MainLoop::Source ##############

package Amanda::MainLoop::Source;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Amanda::MainLoop );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = Amanda::MainLoopc::new_Source(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Amanda::MainLoopc::delete_Source($self);
        delete $OWNER{$self};
    }
}

*set_callback = *Amanda::MainLoopc::Source_set_callback;
*remove = *Amanda::MainLoopc::Source_remove;
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

package Amanda::MainLoop;

*G_IO_IN = *Amanda::MainLoopc::G_IO_IN;
*G_IO_OUT = *Amanda::MainLoopc::G_IO_OUT;
*G_IO_PRI = *Amanda::MainLoopc::G_IO_PRI;
*G_IO_ERR = *Amanda::MainLoopc::G_IO_ERR;
*G_IO_HUP = *Amanda::MainLoopc::G_IO_HUP;
*G_IO_NVAL = *Amanda::MainLoopc::G_IO_NVAL;

@EXPORT_OK = ();
%EXPORT_TAGS = ();


=head1 NAME

Amanda::MainLoop - Perl interface to the Glib MainLoop

=head1 SYNOPSIS

    use Amanda::MainLoop;

    my $to = Amanda::MainLoop::timeout_source(2000);
    $to->set_callback(sub {
	print "Time's Up!\n";
	$to->remove();		    # dont' re-queue this timeout
	Amanda::MainLoop::quit();   # return from Amanda::MainLoop::run
    });

    Amanda::MainLoop::run();

Note that all functions in this module are individually available for
export, e.g.,

    use Amanda::MainLoop qw(run quit);

=head1 OVERVIEW

The main event loop of an application is a tight loop which waits for
events, and calls functions to respond to those events.  This design
allows an IO-bound application to multitask within a single thread, by
responding to IO events as they occur instead of blocking on
particular IO operations.

The Amanda security API, transfer API, and other components rely on
the event loop to allow them to respond to their own events in a
timely fashion.

The overall structure of an application, then, is to initialize its
state, register callbacks for some events, and begin looping.  In each
iteration, the loop waits for interesting events to occur (data
available for reading or writing, timeouts, etc.), and then calls
functions to handle those interesting things.  Thus, the application
spends most of its time waiting.  When some application-defined state
is reached, the loop is terminated and the application cleans up and
exits.

The Glib main loop takes place within a call to
C<Amanda::MainLoop::run()>.  This function executes until a call to
C<Amanda::MainLoop::quit()> occurs, at which point C<run()> returns.
You can check whether the loop is running with
C<Amanda::MainLoop::is_running()>.

=head1 HIGH-LEVEL INTERFACE

The functions in this section are intended to make asynchronous
programming as simple as possible.  They are implemented on top of the
interfaces described in the LOW-LEVEL INTERFACE section.

=head3 call_later

In most cases, a callback does not need to be invoked immediately.  In
fact, because Perl does not do tail-call optimization, a long chain of
callbacks may cause the perl stack to grow unnecessarily.

The solution is to queue the callback for execution on the next
iteration of the main loop, and C<call_later($cb, @args)> does exactly
this.

    sub might_delay {
        my ($cb) = @_;
        if (can_do_it_now()) {
            my $result = do_it();
            Amanda::MainLoop::call_later($cb, $result)
        } else {
            # ..
        }
    }

When starting the main loop, an application usually has a sub that
should run after the loop has started.  C<call_later> works in this
situation, too.

    my $main = sub {
	# ..
	Amanda::MainLoop::quit();
    };
    Amanda::MainLoop::call_later($main);
    # ..
    Amanda::MainLoop::run();

=head3 make_cb

As an optimization, C<make_cb> wraps a sub with a call to call_later
while also naming the sub (using C<Sub::Name>, if available):

    my $fetched_cb = make_cb(fetched_cb => sub {
	# .. callback body
    }

In general, C<make_cb> should be used whenever a callback is passed to
some other library.  For example, the Changer API (see
L<Amanda::Changer>) might be invoked like this:

    my $reset_finished_cb = make_cb(reset_finished_cb => sub {
	my ($err) = @_;
	die "while resetting: $err" if $err;
	# ..
    });

Be careful I<not> to use C<make_cb> in cases where some action must
take place before the next iteration of the main loop.  In practice,
this means C<make_cb> should be avoided with file-descriptor
callbacks, which will trigger repeatedly until the descriptors' needs
are addressed.

C<make_cb> is exported automatically.

=head3 call_after

Sometimes you need the MainLoop equivalent of C<sleep()>.  That comes
in the form of C<call_later($delay, $cb, @args)>, which takes a delay
(in milliseconds), a sub, and an arbitrary number of arguments.  The
sub is called with the arguments after the delay has elapsed.

    sub countdown {
	my $counter;
	$counter = sub {
	    print "$i..\n";
	    if ($i) {
		Amanda::MainLoop::call_after(1000, $counter, $i-1);
	    }
	}
	$counter->(10);
    }

The function returns the underlying event source (see below), enabling
the caller to cancel the pending call:

    my $tosrc = Amanda::MainLoop::call_after(15000, $timeout_cb):
    # ...data arrives before timeout...
    $tosrc->remove();

=head3 call_on_child_termination

To monitor a child process for termination, give its pid to
C<call_on_child_termination($pid, $cb, @args)>.  When the child exits
for any reason, this will collect its exit status (via C<waitpid>) and
call C<$cb> as

    $cb->($exitstatus, @args);

Like C<call_after>, this function returns the event source to allow
early cancellation if desired.

=head3 async_read

    async_read(
	fd => $fd,
	size => $size,        # optional, default 0
	async_read_cb => $async_read_cb,
	args => [ .. ]);      # optional

This function will read C<$size> bytes when they are available from
file descriptor C<$fd>, and invoke the callback with the results:

    $async_read_cb->($err, $buf, @args);

If C<$size> is zero, then the callback will get whatever data is
available as soon as it is available, up to an arbitrary buffer size.
If C<$size> is nonzero, then a short read may still occur if C<$size>
bytes do not become available simultaneously.  On EOF, C<$buf> will be
the empty string.  It is the caller's responsibility to set C<$fd> to
non-blocking mode.  Note that not all operating sytems generate errors
that might be reported here.  For example, on Solaris an invalid file
descriptor will be silently ignored.

The return value is an event source, and calling its C<remove> method
will cancel the read.  It is an error to have more than one
C<async_read> operation on a single file descriptor at any time, and
will lead to unpredictable results.

This function adds a new FdSource every time it is invoked, so it is
not well-suited to processing large amounts of data.  For that
purpose, consider using the low-level interface or, better, the
transfer architecture (see L<Amanda::Xfer>).

=head3 async_write

    async_write(
	fd => $fd,
	data => $data,
	async_write_cb => $async_write_cb,
	args => [ .. ]);      # optional

This function will write C<$data> to file descriptor C<$fd> and invoke
the callback with the number of bytes written:

    $cb->($err, $bytes_written, @args);

If C<$bytes_written> is less than then length of <$data>, then an
error occurred, and is given in C<$err>.  As for C<async_read>, the
caller should set C<$fd> to non-blocking mode.  Multiple parallel
invocations of this function for the same file descriptor are allowed
and will be serialized in the order the calls were made:

    async_write($fd, "HELLO!\n",
	async_write_cb => make_cb(wrote_hello => sub {
	    print "wrote 'HELLO!'\n";
	}));
    async_write($fd, "GOODBYE!\n",
	async_write_cb => make_cb(wrote_goodbye => sub {
	    print "wrote 'GOODBYE!'\n";
	}));

In this case, the two strings are guaranteed to be written in the same
order, and the callbacks will be called in the correct order.

Like async_read, this function may add a new FdSource every time it is
invoked, so it is not well-suited to processing large amounts of data.

=head3 synchronized

Java has the notion of a "synchronized" method, which can only execute in one
thread at any time.  This is a particular application of a lock, in which the
lock is acquired when the method begins, and released when it finishes.

With C<Amanda::MainLoop>, this functionality is generally not needed because
there is no unexpected preemeption. However, if you break up a long-running
operation (that doesn't allow concurrency) into several callbacks, you'll need
to ensure that at most one of those operations is going on at a time. The
C<synchronized> function manages that for you.

The function takes a C<$lock> argument, which should be initialized to an empty
arrayref (C<[]>).  It is used like this:

    use Amanda::MainLoop 'synchronized';
    # ..
    sub dump_data {
	my $self = shift;
	my ($arg1, $arg2, $dump_cb) = @_;

	synchronized($self->{'lock'}, $dump_cb, sub {
	    my ($dump_cb) = @_; # IMPORTANT! See below
	    $self->do_dump_data($arg1, $arg2, $dump_cb);
	};
    }

Here, C<do_dump_data> may take a long time to complete (perhaps it starts
a long-running data transfer) but only one such operation is allowed at any
time and other C<Amanda::MainLoop> callbacks may occur (e.g. a timeout).
When the critical operation is complete, it calls C<$dump_cb> which will
release the lock before transferring control to the caller.

Note that the C<$dump_cb> in the inner C<sub> shadows that in
C<dump_data> -- this is intentional, the a call to the the inner
C<$dump_cb> is how C<synchronized> knows that the operation has completed.

Several methods may be synchronized with one another by simply sharing the same
lock.

=head1 ASYNCHRONOUS STYLE

When writing asynchronous code, it's easy to write code that is *very*
difficult to read or debug.  The suggestions in this section will help
write code that is more readable, and also ensure that all asynchronous
code in Amanda uses similar, common idioms.

=head2 USING CALLBACKS

Most often, callbacks are short, and can be specified as anonymous
subs.  They should be specified with make_cb, like this:

    some_async_function(make_cb(foo_cb => sub {
	my ($x, $y) = @_;
	# ...
    }));

If a callback is more than about two lines, specify it in a named
variable, rather than directly in the function call:

    my $foo_cb = make_cb(foo_cb => sub {
	my ($src) = @_;
	# .
	# .  long function
	# .
    });
    some_async_function($foo_cb);

When using callbacks from an object-oriented package, it is often
useful to treat a method as a callback.  This requires an anonymous
sub "wrapper", which can be written on one line:

    some_async_function(sub { $self->foo_cb(@_) });

=head2 LINEARITY

The single most important factor in readability is linearity.  If a function
that performs operations A, B, and C in that order, then the code for A, B, and
C should appear in that order in the source file.  This seems obvious, but it's
all too easy to write

    sub three_ops {
	my $do_c = sub { .. };
	my $do_b = sub { .. $do_c->() .. };
	my $do_a = sub { .. $do_b->() .. };
	$do_a->();
    }

Which isn't very readable.  Be readable.

=head2 SINGLE ENTRY AND EXIT

Amanda's use of callbacks emulates continuation-passing style.  As such, when a
function finishes -- whether successfully or with an error -- it should call a
single callback.  This ensures that the function has a simple control
interface: perform the operation and call the callback.

=head2 MULTIPLE STEPS

Some operations require a long squence of asynchronous operations.  For
example, often the results of one operation are required to initiate
another.  The I<step> syntax is useful to make this much more readable, and
also eliminate some nasty reference-counting bugs.  The idea is that each "step"
in the process gets its own sub, and then each step calls the next step.  The
first step defined will be called automatically.

    sub send_file {
	my ($hostname, $port, $data, $sendfile_cb) = @_;
	my ($addr, $socket); # shared lexical variables
	my $steps = define_steps
		cb_ref => \$sendfile_cb;
	step lookup_addr => sub {
	    return async_gethostbyname(hostname => $hostname,
				ghbn_cb => $steps->{'got_addr'});
	};
	step ghbn_cb => sub {
	    my ($err, $hostinfo) = @_;
	    die $err if $err;
	    $addr = $hostinfo->{'ipaddr'};
	    return $steps->{'connect'}->();
	};
	step connect => sub {
	    return async_connect(
		ipaddr => $addr,
		port => $port,
		connect_cb => $steps->{'connect_cb'},
	    );
	};
	step connect_cb => sub {
	    my ($err, $conn_sock) = @_;
	    die $err if $err;
	    $socket = $conn_sock;
	    return $steps->{'write_block'}->();
	};
	# ...
    }

The C<define_steps> function sets the stage.  It is given a reference to the
callback for this function (recall there is only one exit point!), and
"patches" that reference to free C<$steps>, which otherwise forms a reference
loop, on exit.

WARNING: if the function or method needs to do any kind of setup before its
first step, that setup should be done either in a C<setup> step or I<before>
the C<define_steps> invocation.  Do not write any statements other than step
declarations after the C<define_steps> call.

Note that there are more steps in this example than are strictly necessary: the
body of C<connect> could be appended to C<ghbn_cb>.  The extra steps make the
overall operation more readable by adding "punctuation" to separate the task of
handling a callback (C<ghbn_cb>) from starting the next operation (C<connect>).

Also note that the enclosing scope contains some lexical (C<my>)
variables which are shared by several of the callbacks.

All of the steps are wrapped by C<make_cb>, so each step will be executed on a
separate iteration of the MainLoop.  This generally has the effect of making
asynchronous functions share CPU time more fairly.  Sometimes, especially when
using the low-level interface, a callback must be called immediately.  To
achieve this for all callbacks, add C<< immediate => 1 >> to the C<define_steps>
invocation:

    my $steps = define_steps
	    cb_ref => \$finished_cb,
	    immediate => 1;

To do the same for a single step, add the same keyword to the C<step> invocation:

    step immediate => 1,
	 connect => sub { .. };

In some case, you want to execute some code when the step finish, it can
be done by defining a finalize code in define_steps:

    my $steps = define_steps
	    cb_ref => \$finished_cb,
	    finalize => sub { .. };

=head2 JOINING ASYNCHRONOUS "THREADS"

With slow operations, it is often useful to perform multiple operations
simultaneously.  As an example, the following code might run two system
commands simultaneously and capture their output:

    sub run_two_commands {
	my ($finished_cb) = @_;
	my $running_commands = 0;
	my ($result1, $result2);
	my $steps = define_steps
	    cb_ref => \$finished_cb;
	step start => sub {
	    $running_commands++;
	    run_command($command1,
		run_cb => $steps->{'command1_done'});
	    $running_commands++;
	    run_command($command2,
		run_cb => $steps->{'command2_done'});
	};
	step command1_done => sub {
	    $result1 = $_[0];
	    $steps->{'maybe_done'}->();
	};
	step command2_done => sub {
	    $result2 = $_[0];
	    $steps->{'maybe_done'}->();
	};
	step maybe_done => sub {
	    return if --$running_commands; # not done yet
	    $finished_cb->($result1, $result2);
	};
    }

It is tempting to optimize out the C<$running_commands> with something like:

    step maybe_done { ## BAD!
	return unless defined $result1 and defined $result2;
	$finished_cb->($result1, $result2);
    }

However this can lead to trouble.  Remember that define_steps automatically
applies C<make_cb> to each step, so a C<maybe_done> is not invoked immediately
by C<command1_done> and C<command2_done> - instead, C<maybe_done> is scheduled
for invocation in the next loop of the mainloop (via C<call_later>).  If both
commands finish before C<maybe_done> is invoked, C<call_later> will be called
I<twice>, with both C<$result1> and C<$result2> defined both times.  The result
is that C<$finished_cb> is called twice, and mayhem ensues.

This is a complex case, but worth understanding if you want to be able to debug
difficult MainLoop bugs.

=head2 WRITING ASYNCHRONOUS INTERFACES

When designing a library or interface that will accept and invoke
callbacks, follow these guidelines so that users of the interface will
not need to remember special rules.

Each callback signature within a package should always have the same
name, ending with C<_cb>.  For example, a hypothetical
C<Amanda::Estimate> module might provide its estimates through a
callback with four parameters.  This callback should be referred to as
C<estimate_cb> throughout the package, and its parameters should be
clearly defined in the package's documentation.  It should take
positional parameters only.  If error conditions must also be
communicated via the callback, then the first parameter should be an
C<$error> parameter, which is undefined when no error has occurred.
The Changer API's C<res_cb> is typical of such a callback signature.

A caller can only know that an operation is complete by the invocation
of the callback, so it is important that a callback be invoked
I<exactly once> in all circumstances.  Even in an error condition, the
caller needs to know that the operation has failed.  Also beware of
bugs that might cause a callback to be invoked twice.

Functions or methods taking callbacks as arguments should either take
only a callback (like C<call_later>), or take hash-key parameters,
where the callback's key is the signature name.  For example, the
C<Amanda::Estimate> package might define a function like
C<perform_estimate>, invoked something like this:

    my $estimate_cb = make_cb(estimate_cb => sub {
	my ($err, $size, $level) = @_;
	die $err if $err;
	# ...
    });
    Amanda::Estimate::perform_estimate(
	host => $host,
	disk => $disk,
	estimate_cb => $estimate_cb,
    );

When invoking a user-supplied callback within the library, there is no
need to wrap it in a C<call_later> invocation, as the user already
supplied that wrapper via C<make_cb>, or is not interested in using
such a wrapper.

Callbacks are a form of continuation
(L<http://en.wikipedia.org/wiki/Continuations>), and as such should
only be called at the I<end> of a function.  Do not do anything after
invoking a callback, as you cannot know what processing has gone on in
the callback.

    sub estimate_done {
	# ...
	$self->{'estimate_cb'}->(undef, $size, $level);
	$self->{'estimate_in_progress'} = 0; # BUG!!
    }

In this case, the C<estimate_cb> invocation may have called
C<perform_estimate> again, setting C<estimate_in_progress> back to 1.
A technique to avoid this pitfall is to always C<return> a callback's
result, even though that result is not important.  This makes the bug
much more apparent:

    sub estimate_done {
	# ...
	return $self->{'estimate_cb'}->(undef, $size, $level);
	$self->{'estimate_in_progress'} = 0; # BUG (this just looks silly)
    }

=head1 LOW-LEVEL INTERFACE

MainLoop events are generated by event sources.  A source may produce
multiple events over its lifetime.  The higher-level methods in the
previous section provide a more Perlish abstraction of event sources,
but for efficiency it is sometimes necessary to use event sources
directly.

The method C<< $src->set_callback(\&cb) >> sets the function that will
be called for a given source, and "attaches" the source to the main
loop so that it will begin generating events.  The arguments to the
callback depend on the event source, but the first argument is always
the source itself.  Unless specified, no other arguments are provided.

Event sources persist until they are removed with
C<< $src->remove() >>, even if the source itself is no longer accessible from Perl.
Although Glib supports it, there is no provision for "automatically"
removing an event source.  Also, calling C<< $src->remove() >> more than
once is a potentially-fatal error. As an example:

  sub start_timer {
    my ($loops) = @_;
    Amanda::MainLoop::timeout_source(200)->set_callback(sub {
      my ($src) = @_;
      print "timer\n";
      if (--$loops <= 0) {
        $src->remove();
        Amanda::MainLoop::quit();
      }
    });
  }
  start_timer(10);
  Amanda::MainLoop::run();

There is no means in place to specify extra arguments to be provided
to a source callback when it is set.  If the callback needs access to
other data, it should use a Perl closure in the form of lexically
scoped variables and an anonymous sub.  In fact, this is exactly what
the higher-level functions (described above) do.

=head2 Timeout

  my $src = Amanda::MainLoop::timeout_source(10000);

A timeout source will create events at the specified interval,
specified in milliseconds (thousandths of a second).  The events will
continue until the source is destroyed.

=head2 Idle

  my $src = Amanda::MainLoop::idle_source(2);

An idle source will create events continuously except when a
higher-priority source is emitting events.  Priorities are generally
small positive integers, with larger integers denoting lower
priorities.  The events will continue until the source is destroyed.

=head2 Child Watch

  my $src = Amanda::MainLoop::child_watch_source($pid);

A child watch source will issue an event when the process with the
given PID dies.  To avoid race conditions, it will issue an event even
if the process dies before the source is created.  The callback is
called with three arguments: the event source, the PID, and the
child's exit status.

Note that this source is totally incompatible with any thing that
would cause perl to change the SIGCHLD handler.  If SIGCHLD is
changed, under some circumstances the module will recognize this
circumstance, add a warning to the debug log, and continue operating.
However, it is impossible to catch all possible situations.

=head2 File Descriptor

  my $src = Amanda::MainLoop::fd_source($fd, $G_IO_IN);

This source will issue an event whenever one of the given conditions
is true for the given file (a file handle or integer file descriptor).
The conditions are from Glib's GIOCondition, and are C<$G_IO_IN>,
C<G_IO_OUT>, C<$G_IO_PRI>, C<$G_IO_ERR>, C<$G_IO_HUP>, and
C<$G_IO_NVAL>.  These constants are available with the import tag
C<:GIOCondition>.

Generally, when reading from a file descriptor, use
C<$G_IO_IN|$G_IO_HUP|$G_IO_ERR> to ensure that an EOF triggers an
event as well.  Writing to a file descriptor can simply use
C<$G_IO_OUT|$G_IO_ERR>.

The callback attached to an FdSource should read from or write to the
underlying file descriptor before returning, or it will be called
again in the next iteration of the main loop, which can lead to
unexpected results.  Do I<not> use C<make_cb> here!

=head2 Combining Event Sources

Event sources are often set up in groups, e.g., a long-term operation
and a timeout.  When this is the case, be careful that all sources are
removed when the operation is complete.  The easiest way to accomplish
this is to include all sources in a lexical scope and remove them at
the appropriate times:

    {
	my $op_src = long_operation_src();
	my $timeout_src = Amanda::MainLoop::timeout_source($timeout);

	sub finish {
	    $op_src->remove();
	    $timeout_src->remove();
	}

	$op_src->set_callback(sub {
	    print "Operation complete\n";
	    finish();
	});

	$timeout_src->set_callback(sub {
	    print "Operation timed out\n";
	    finish();
	});
    }

=head2 Relationship to Glib

Glib's main event loop is described in the Glib manual:
L<http://library.gnome.org/devel/glib/stable/glib-The-Main-Event-Loop.html>.
Note that Amanda depends only on the functionality available in
Glib-2.2.0, so many functions described in that document are not
available in Amanda.  This module provides a much-simplified interface
to the glib library, and is not intended as a generic wrapper for it:
Amanda's perl-accessible main loop only runs a single C<GMainContext>,
and always runs in the main thread; and (aside from idle sources),
event priorities are not accessible from Perl.

=cut




use POSIX;
use Carp;

## basic functions

BEGIN {
    my $have_sub_name = eval "use Sub::Name; 1";
    if (!$have_sub_name) {
	eval <<'EOF'
	    sub subname {
		my ($name, $sub) = @_;
		$sub;
	    }
EOF
    }
}

# glib's g_is_main_loop_running() seems inaccurate, so we just
# track that information locally..
my $mainloop_running = 0;
sub run {
    $mainloop_running = 1;
    run_c();
    $mainloop_running = 0;
}
push @EXPORT_OK, "run";

sub is_running {
    return $mainloop_running;
}
push @EXPORT_OK, "is_running";

# quit is a direct call to C
push @EXPORT_OK, "quit";

## utility functions

my @waiting_to_call_later;
sub call_later {
    my ($sub, @args) = @_;

    confess "undefined sub" unless ($sub);

    # add the callback if nothing is waiting right now
    if (!@waiting_to_call_later) {
        timeout_source(0)->set_callback(sub {
            my ($src) = @_;
            $src->remove();

            while (@waiting_to_call_later) {
                my ($sub, @args) = @{shift @waiting_to_call_later};
                $sub->(@args) if $sub;
            }
        });
    }

    push @waiting_to_call_later, [ $sub, @args ];
}
push @EXPORT_OK, "call_later";

sub make_cb {
    my ($name, $sub) = @_;

    if ($sub) {
	my ($pkg, $filename, $line) = caller;
	my $newname = sprintf('$%s::%s@l%s', $pkg, $name, $line);
	$sub = subname($newname => $sub);
    } else {
	$sub = $name; # no name => sub is actually in first parameter
    }

    sub {
        Amanda::MainLoop::call_later($sub, @_);
    };
}
push @EXPORT, 'make_cb';

sub call_after {
    my ($delay_ms, $sub, @args) = @_;

    confess "undefined sub" unless ($sub);

    my $src = timeout_source($delay_ms);
    $src->set_callback(sub {
	$src->remove();
	$sub->(@args);
    });

    return $src;
}
push @EXPORT_OK, "call_after";

sub call_on_child_termination {
    my ($pid, $cb, @args) = @_;

    confess "undefined sub" unless ($cb);

    my $src = child_watch_source($pid);
    $src->set_callback(sub {
	my ($src, $pid, $exitstatus) = @_;
	$src->remove();
	return $cb->($exitstatus);
    });
}
push @EXPORT_OK, "call_on_child_termination";

sub async_read {
    my %params = @_;
    my $fd = $params{'fd'};
    my $size = $params{'size'} || 0;
    my $cb = $params{'async_read_cb'};
    my @args;
    @args = @{$params{'args'}} if exists $params{'args'};

    my $fd_cb = sub {
	my ($src) = @_;
	$src->remove();

	my $buf;
	my $res = POSIX::read($fd, $buf, $size || 32768);
	if (!defined $res) {
	    return $cb->($!, undef, @args);
	} else {
	    return $cb->(undef, $buf, @args);
	}
    };
    my $src = fd_source($fd, $G_IO_IN|$G_IO_HUP|$G_IO_ERR);
    $src->set_callback($fd_cb);
    return $src;
}
push @EXPORT_OK, "async_read";

my %outstanding_writes;
sub async_write {
    my %params = @_;
    my $fd = $params{'fd'};
    my $data = $params{'data'};
    my $cb = $params{'async_write_cb'};
    my @args;
    @args = @{$params{'args'}} if exists $params{'args'};

    # more often than not, writes will not block, so just try it.
    if (!exists $outstanding_writes{$fd}) {
	my $res = POSIX::write($fd, $data, length($data));
	if (!defined $res) {
	    if ($! != POSIX::EAGAIN) {
		return $cb->($!, 0, @args);
	    }
	} elsif ($res eq length($data)) {
	    return $cb->(undef, $res, @args);
	} else {
	    # chop off whatever data was written
	    $data = substr($data, $res);
	}
    }

    if (!exists $outstanding_writes{$fd}) {
	my $fd_writes = $outstanding_writes{$fd} = [];
	my $src = fd_source($fd, $G_IO_OUT|$G_IO_HUP|$G_IO_ERR);

	# (note that this does not coalesce consecutive outstanding writes
	# into a single POSIX::write call)
	my $fd_cb = sub {
	    my $ow = $fd_writes->[0];
	    my ($buf, $nwritten, $len, $cb, $args) = @$ow;

	    my $res = POSIX::write($fd, $buf, $len-$nwritten);
	    if (!defined $res) {
		shift @$fd_writes;
		$cb->($!, $nwritten, @$args);
	    } else {
		$ow->[1] = $nwritten = $nwritten + $res;
		if ($nwritten == $len) {
		    shift @$fd_writes;
		    $cb->(undef, $nwritten, @$args);
		} else {
		    $ow->[0] = substr($buf, $res);
		}
	    }

	    # (the following is *intentionally* done after calling $cb, allowing
	    # $cb to add a new message to $fd_writes if desired, and thus avoid
	    # removing and re-adding the source)
	    if (@$fd_writes == 0) {
		$src->remove();
		delete $outstanding_writes{$fd};
	    }
	};

	$src->set_callback($fd_cb);
    }
    
    push @{$outstanding_writes{$fd}}, [ $data, 0, length($data), $cb, \@args ];
}
push @EXPORT_OK, "async_write";

sub synchronized {
    my ($lock, $orig_cb, $sub) = @_;
    my $continuation_cb;

    $continuation_cb = sub {
	my @args = @_;

	# shift this invocation off the queue
	my ($last_sub, $last_orig_cb) = @{ shift @$lock };

	# start the next invocation, if the queue isn't empty
	if (@$lock) {
	    Amanda::MainLoop::call_later($lock->[0][0], $continuation_cb);
	}

	# call through to the original callback for the last invocation
	return $last_orig_cb->(@args);
    };

    # push this sub onto the lock queue
    if ((push @$lock, [ $sub, $orig_cb ]) == 1) {
	# if this is the first addition to the queue, start it
	$sub->($continuation_cb);
    }
}
push @EXPORT_OK, "synchronized";

{   # privat variables to track the "current" step definition
    my $current_steps;
    my $immediate;
    my $first_step;

    sub define_steps (@) {
	my (%params) = @_;
	my $cb_ref = $params{'cb_ref'};
	my $finalize = $params{'finalize'};
	my %steps;

	croak "cb_ref is undefined" unless defined $cb_ref;
	croak "cb_ref is not a reference" unless ref($cb_ref) eq 'REF';
	croak "cb_ref is not a code double-reference" unless ref($$cb_ref) eq 'CODE';

	# arrange to clear out $steps when $exit_cb is called; this eliminates
	# reference loops (values in %steps are closures which point to %steps).
	# This also clears $current_steps, which is likely holding a reference to
	# the steps hash.
	my $orig_cb = $$cb_ref;
	$$cb_ref = sub {
	    %steps = ();
	    $current_steps = undef;
	    $finalize->() if defined($finalize);
	    goto $orig_cb;
	};

	# set up state
	$current_steps = \%steps;
	$immediate = $params{'immediate'};
	$first_step = 1;

	return $current_steps;
    }
    push @EXPORT, "define_steps";

    sub step (@) {
	my (%params) = @_;
	my $step_immediate = $immediate || $params{'immediate'};
	delete $params{'immediate'} if $step_immediate;

	my ($name) = keys %params;
	my $cb = $params{$name};

	croak "expected a sub at key $name" unless ref($cb) eq 'CODE';

	# make the sub delayed
	unless ($step_immediate) {
	    my $orig_cb = $cb;
	    $cb = sub { Amanda::MainLoop::call_later($orig_cb, @_); }
	}

	# patch up the callback
	my ($pkg, $filename, $line) = caller;
	my $newname = sprintf('$%s::%s@l%s', $pkg, $name, $line);
	$cb = subname($newname => $cb);

	# store the step for later
	$current_steps->{$name} = $cb;

	# and invoke it, if it's the first step given
	if ($first_step) {
	    if ($step_immediate) {
		call_later($cb);
	    } else {
		$cb->();
	    }
	}
	$first_step = 0;
    }
    push @EXPORT, "step";
}

push @EXPORT_OK, qw(GIOCondition_to_strings);
push @{$EXPORT_TAGS{"GIOCondition"}}, qw(GIOCondition_to_strings);

my %_GIOCondition_VALUES;
#Convert a flag value to a list of names for flags that are set.
sub GIOCondition_to_strings {
    my ($flags) = @_;
    my @result = ();

    for my $k (keys %_GIOCondition_VALUES) {
	my $v = $_GIOCondition_VALUES{$k};

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

push @EXPORT_OK, qw($G_IO_IN);
push @{$EXPORT_TAGS{"GIOCondition"}}, qw($G_IO_IN);

$_GIOCondition_VALUES{"G_IO_IN"} = $G_IO_IN;

push @EXPORT_OK, qw($G_IO_OUT);
push @{$EXPORT_TAGS{"GIOCondition"}}, qw($G_IO_OUT);

$_GIOCondition_VALUES{"G_IO_OUT"} = $G_IO_OUT;

push @EXPORT_OK, qw($G_IO_PRI);
push @{$EXPORT_TAGS{"GIOCondition"}}, qw($G_IO_PRI);

$_GIOCondition_VALUES{"G_IO_PRI"} = $G_IO_PRI;

push @EXPORT_OK, qw($G_IO_ERR);
push @{$EXPORT_TAGS{"GIOCondition"}}, qw($G_IO_ERR);

$_GIOCondition_VALUES{"G_IO_ERR"} = $G_IO_ERR;

push @EXPORT_OK, qw($G_IO_HUP);
push @{$EXPORT_TAGS{"GIOCondition"}}, qw($G_IO_HUP);

$_GIOCondition_VALUES{"G_IO_HUP"} = $G_IO_HUP;

push @EXPORT_OK, qw($G_IO_NVAL);
push @{$EXPORT_TAGS{"GIOCondition"}}, qw($G_IO_NVAL);

$_GIOCondition_VALUES{"G_IO_NVAL"} = $G_IO_NVAL;

#copy symbols in GIOCondition to constants
push @{$EXPORT_TAGS{"constants"}},  @{$EXPORT_TAGS{"GIOCondition"}};
1;
