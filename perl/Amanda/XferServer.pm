# This file was automatically generated by SWIG (http://www.swig.org).
# Version 3.0.8
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package Amanda::XferServer;
use base qw(Exporter);
use base qw(DynaLoader);
require Amanda::Xfer;
require Amanda::MainLoop;
require Amanda::Device;
require Amanda::Header;
package Amanda::XferServerc;
bootstrap Amanda::XferServer;
package Amanda::XferServer;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package Amanda::XferServer;

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

package Amanda::XferServer;

*xfer_source_device = *Amanda::XferServerc::xfer_source_device;
*xfer_dest_device = *Amanda::XferServerc::xfer_dest_device;
*xfer_source_holding = *Amanda::XferServerc::xfer_source_holding;
*xfer_source_holding_start_recovery = *Amanda::XferServerc::xfer_source_holding_start_recovery;
*xfer_source_holding_get_bytes_read = *Amanda::XferServerc::xfer_source_holding_get_bytes_read;
*xfer_dest_holding = *Amanda::XferServerc::xfer_dest_holding;
*xfer_dest_holding_start_chunk = *Amanda::XferServerc::xfer_dest_holding_start_chunk;
*xfer_dest_holding_finish_chunk = *Amanda::XferServerc::xfer_dest_holding_finish_chunk;
*xfer_dest_taper_splitter = *Amanda::XferServerc::xfer_dest_taper_splitter;
*xfer_dest_taper_cacher = *Amanda::XferServerc::xfer_dest_taper_cacher;
*xfer_dest_taper_directtcp = *Amanda::XferServerc::xfer_dest_taper_directtcp;
*xfer_dest_taper_start_part = *Amanda::XferServerc::xfer_dest_taper_start_part;
*xfer_dest_taper_use_device = *Amanda::XferServerc::xfer_dest_taper_use_device;
*xfer_dest_taper_cache_inform = *Amanda::XferServerc::xfer_dest_taper_cache_inform;
*xfer_dest_taper_get_part_bytes_written = *Amanda::XferServerc::xfer_dest_taper_get_part_bytes_written;
*xfer_dest_taper_new_space_available = *Amanda::XferServerc::xfer_dest_taper_new_space_available;
*xfer_source_recovery = *Amanda::XferServerc::xfer_source_recovery;
*xfer_source_recovery_start_part = *Amanda::XferServerc::xfer_source_recovery_start_part;
*xfer_source_recovery_use_device = *Amanda::XferServerc::xfer_source_recovery_use_device;
*xfer_source_recovery_get_bytes_read = *Amanda::XferServerc::xfer_source_recovery_get_bytes_read;
*xfer_source_recovery_cancel = *Amanda::XferServerc::xfer_source_recovery_cancel;

# ------- VARIABLE STUBS --------

package Amanda::XferServer;


@EXPORT_OK = ();
%EXPORT_TAGS = ();


=head1 NAME

Amanda::XferServer - server-only parts of Amanda::Xfer

This package is automatically imported into L<Amanda::Xfer> if it
exists; it is completely documented there.

=cut



package Amanda::Xfer::Source::Device;

use vars qw(@ISA);
@ISA = qw( Amanda::Xfer::Element );

sub new { 
    my $pkg = shift;
#The C function adds the proper blessing -- this function
#just gets $pkg out of the way.
    Amanda::XferServer::xfer_source_device(@_);
}

package Amanda::Xfer::Dest::Device;

use vars qw(@ISA);
@ISA = qw( Amanda::Xfer::Element );

sub new { 
    my $pkg = shift;
#The C function adds the proper blessing -- this function
#just gets $pkg out of the way.
    Amanda::XferServer::xfer_dest_device(@_);
}

package Amanda::Xfer::Source::Holding;

use vars qw(@ISA);
@ISA = qw( Amanda::Xfer::Element );

sub new { 
    my $pkg = shift;
#The C function adds the proper blessing -- this function
#just gets $pkg out of the way.
    Amanda::XferServer::xfer_source_holding(@_);
}
 *start_recovery = *Amanda::XferServer::xfer_source_holding_start_recovery;
 *get_bytes_read = *Amanda::XferServer::xfer_source_holding_get_bytes_read;

package Amanda::Xfer::Dest::Holding;

use vars qw(@ISA);
@ISA = qw( Amanda::Xfer::Element );

sub new { 
    my $pkg = shift;
#The C function adds the proper blessing -- this function
#just gets $pkg out of the way.
    Amanda::XferServer::xfer_dest_holding(@_);
}
 *start_chunk = *Amanda::XferServer::xfer_dest_holding_start_chunk;
 *finish_chunk = *Amanda::XferServer::xfer_dest_holding_finish_chunk;

package Amanda::Xfer::Dest::Taper;

use vars qw(@ISA);
@ISA = qw( Amanda::Xfer::Element );
 *use_device = *Amanda::XferServer::xfer_dest_taper_use_device;
 *start_part = *Amanda::XferServer::xfer_dest_taper_start_part;
 *cache_inform = *Amanda::XferServer::xfer_dest_taper_cache_inform;
 *get_part_bytes_written = *Amanda::XferServer::xfer_dest_taper_get_part_bytes_written;
 *new_space_available = *Amanda::XferServer::xfer_dest_taper_new_space_available;

package Amanda::Xfer::Dest::Taper::Splitter;

use vars qw(@ISA);
@ISA = qw( Amanda::Xfer::Dest::Taper );

sub new { 
    my $pkg = shift;
#The C function adds the proper blessing -- this function
#just gets $pkg out of the way.
    Amanda::XferServer::xfer_dest_taper_splitter(@_);
}

package Amanda::Xfer::Dest::Taper::Cacher;

use vars qw(@ISA);
@ISA = qw( Amanda::Xfer::Dest::Taper );

sub new { 
    my $pkg = shift;
#The C function adds the proper blessing -- this function
#just gets $pkg out of the way.
    Amanda::XferServer::xfer_dest_taper_cacher(@_);
}

package Amanda::Xfer::Dest::Taper::DirectTCP;

use vars qw(@ISA);
@ISA = qw( Amanda::Xfer::Dest::Taper );

sub new { 
    my $pkg = shift;
#The C function adds the proper blessing -- this function
#just gets $pkg out of the way.
    Amanda::XferServer::xfer_dest_taper_directtcp(@_);
}

package Amanda::Xfer::Source::Recovery;

use vars qw(@ISA);
@ISA = qw( Amanda::Xfer::Element );

sub new { 
    my $pkg = shift;
#The C function adds the proper blessing -- this function
#just gets $pkg out of the way.
    Amanda::XferServer::xfer_source_recovery(@_);
}
 *start_part = *Amanda::XferServer::xfer_source_recovery_start_part;
 *use_device = *Amanda::XferServer::xfer_source_recovery_use_device;
 *get_bytes_read = *Amanda::XferServer::xfer_source_recovery_get_bytes_read;
 *cancel = *Amanda::XferServer::xfer_source_recovery_cancel;
1;