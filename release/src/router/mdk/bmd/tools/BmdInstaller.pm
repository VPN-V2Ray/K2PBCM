################################################################################
#
#
#
package BmdInstaller;

use strict; 

sub new 
{    
    my ($class) = @_;
    my $self = {};
    bless($self, $class);
    $self;
}

sub begin_bmd_devlist
{
    my ($self, $fh) = @_;

    print $fh <<EOT; 
/*
 * DO NOT EDIT THIS FILE!
 * This file is auto-generated.
 * Edits to this file will be lost when it is regenerated.
 */

#include <bmd_config.h>

#ifndef BMD_DEVLIST_ENTRY
/* Execute macro sequence but do nothing with it */
#define BMD_DEVLIST_ENTRY(_nm,_vn,_dv,_rv,_md,_pi,_bd,_bc,_fn,_fl,_cn,_pf,_pd,_r0,_r1)
#endif

#ifdef BMD_DEVLIST_ENTRY
/*
 * BMD_DEVLIST_ENTRY MACROS
 * 
 * Before including this file, define BMD_DEVLIST_ENTRY
 * as a macro to operate on the following parameters:
 *     #define BMD_DEVLIST_ENTRY(_nm,_vn,_dv,_rv,_md,_pi,_bd,_bc,_fn,_fl,_cn,_pf,_pd,_r0,_r1)
 * 
 *     _nm: Chip Name
 *     _vn: Chip Vendor ID
 *     _dv: Chip Device ID
 *     _rv: Chip Revision
 *     _md: Chip Model
 *     _pi: Probe Information
 *     _bd: SW Base Driver
 *     _bc: SW Base Configuration
 *     _fn: SW Full Name
 *     _fl: Flags
 *     _cn: Code Name
 *     _pf: Product Full Name
 *     _pd: Product Description
 *     _r0: Reserved
 *     _r1: Reserved
 * 
 * Note that this macro will be undefined at the end of this file.
 */

EOT
}

sub end_bmd_devlist
{
    my ($self, $fh, @chips) = @_;

    print $fh <<EOT; 
/* End BMD_DEVLIST_ENTRY Macros */

#ifdef BMD_DEVLIST_INCLUDE_ALL
#undef BMD_DEVLIST_INCLUDE_ALL
#endif
#undef BMD_DEVLIST_ENTRY
#endif /* BMD_DEVLIST_ENTRY */


EOT
      
}

1;
