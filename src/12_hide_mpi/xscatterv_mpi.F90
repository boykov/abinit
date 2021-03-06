!{\src2tex{textfont=tt}}
!!****f* ABINIT/xscatterv_mpi
!! NAME
!!  xscatterv_mpi
!!
!! FUNCTION
!!  This module contains functions that calls MPI routine,
!!  if we compile the code using the MPI CPP flags.
!!  xscatterv_mpi is the generic function.
!!
!! COPYRIGHT
!!  Copyright (C) 2001-2012 ABINIT group (MT)
!!  This file is distributed under the terms of the
!!  GNU General Public License, see ~ABINIT/COPYING
!!  or http://www.gnu.org/copyleft/gpl.txt .
!!
!! SOURCE

#if defined HAVE_CONFIG_H
#include "config.h"
#endif

!!***

!!****f* ABINIT/xscatterv_mpi_int
!! NAME
!!  xscatterv_mpi_int
!!
!! FUNCTION
!!  Gathers data from all tasks and delivers it to all.
!!  Target: one-dimensional integer arrays.
!!
!! INPUTS
!!  xval= buffer array
!!  recvcount= number of received elements
!!  displs= relative offsets for incoming data (array)
!!  sendcounts= number of sent elements (array)
!!  root= rank of receiving process
!!  spaceComm= MPI communicator
!!
!! OUTPUT
!!  ier= exit status, a non-zero value meaning there is an error
!!
!! SIDE EFFECTS
!!  recvbuf= received buffer
!!
!! PARENTS
!!
!! CHILDREN
!!      mpi_scatterv
!!
!! SOURCE
subroutine xscatterv_mpi_int(xval,sendcounts,displs,recvbuf,recvcount,root,spaceComm,ier)


 use defs_basis
#if defined HAVE_MPI && defined HAVE_MPI2 && ! defined HAVE_MPI_INCLUDED_ONCE
 use mpi
#endif

!This section has been created automatically by the script Abilint (TD).
!Do not modify the following lines by hand.
#undef ABI_FUNC
#define ABI_FUNC 'xscatterv_mpi_int'
!End of the abilint section

 implicit none

#if defined HAVE_MPI && defined HAVE_MPI1
 include 'mpif.h'
#endif

!Arguments-------------------------
 integer,intent(in) :: xval(:)
 integer,intent(inout)   :: recvbuf(:)
 integer,intent(in) :: sendcounts(:),displs(:)
 integer,intent(in) :: recvcount,root,spaceComm
 integer,intent(out)   :: ier

!Local variables-------------------

! *************************************************************************

 ier=0
#if defined HAVE_MPI
 if (spaceComm /= MPI_COMM_SELF .and. spaceComm /= MPI_COMM_NULL) then
   call MPI_SCATTERV(xval,sendcounts,displs,MPI_INTEGER,recvbuf,recvcount,&
&   MPI_INTEGER,root,spaceComm,ier)
 end if
#endif
end subroutine xscatterv_mpi_int
!!***

!!****f* ABINIT/xscatterv_mpi_int2d
!! NAME
!!  xscatterv_mpi_int2d
!!
!! FUNCTION
!!  Gathers data from all tasks and delivers it to all.
!!  Target: two-dimensional integer arrays.
!!
!! INPUTS
!!  xval= buffer array
!!  recvcount= number of received elements
!!  displs= relative offsets for incoming data (array)
!!  sendcounts= number of sent elements (array)
!!  root= rank of receiving process
!!  spaceComm= MPI communicator
!!
!! OUTPUT
!!  ier= exit status, a non-zero value meaning there is an error
!!
!! SIDE EFFECTS
!!  recvbuf= received buffer
!!
!! PARENTS
!!
!! CHILDREN
!!      mpi_scatterv
!!
!! SOURCE
subroutine xscatterv_mpi_int2d(xval,sendcounts,displs,recvbuf,recvcount,root,spaceComm,ier)


 use defs_basis
#if defined HAVE_MPI && defined HAVE_MPI2 && ! defined HAVE_MPI_INCLUDED_ONCE
 use mpi
#endif

!This section has been created automatically by the script Abilint (TD).
!Do not modify the following lines by hand.
#undef ABI_FUNC
#define ABI_FUNC 'xscatterv_mpi_int2d'
!End of the abilint section

 implicit none

#if defined HAVE_MPI && defined HAVE_MPI1
 include 'mpif.h'
#endif

!Arguments-------------------------
 integer,intent(in) :: xval(:,:)
 integer,intent(inout)   :: recvbuf(:,:)
 integer,intent(in) :: sendcounts(:),displs(:)
 integer,intent(in) :: recvcount,root,spaceComm
 integer,intent(out)   :: ier

!Local variables-------------------

! *************************************************************************

 ier=0
#if defined HAVE_MPI
 if (spaceComm /= MPI_COMM_SELF .and. spaceComm /= MPI_COMM_NULL) then
   call MPI_SCATTERV(xval,sendcounts,displs,MPI_INTEGER,recvbuf,recvcount,&
&   MPI_INTEGER,root,spaceComm,ier)
 end if
#endif
end subroutine xscatterv_mpi_int2d
!!***

!!****f* ABINIT/xscatterv_mpi_dp
!! NAME
!!  xscatterv_mpi_dp
!!
!! FUNCTION
!!  Gathers data from all tasks and delivers it to all.
!!  Target: one-dimensional real arrays.
!!
!! INPUTS
!!  xval= buffer array
!!  recvcount= number of received elements
!!  displs= relative offsets for incoming data (array)
!!  sendcounts= number of sent elements (array)
!!  root= rank of receiving process
!!  spaceComm= MPI communicator
!!
!! OUTPUT
!!  ier= exit status, a non-zero value meaning there is an error
!!
!! SIDE EFFECTS
!!  recvbuf= received buffer
!!
!! PARENTS
!!
!! CHILDREN
!!      mpi_scatterv
!!
!! SOURCE
subroutine xscatterv_mpi_dp(xval,sendcounts,displs,recvbuf,recvcount,root,spaceComm,ier)


 use defs_basis
#if defined HAVE_MPI && defined HAVE_MPI2 && ! defined HAVE_MPI_INCLUDED_ONCE
 use mpi
#endif

!This section has been created automatically by the script Abilint (TD).
!Do not modify the following lines by hand.
#undef ABI_FUNC
#define ABI_FUNC 'xscatterv_mpi_dp'
!End of the abilint section

 implicit none

#if defined HAVE_MPI && defined HAVE_MPI1
 include 'mpif.h'
#endif

!Arguments-------------------------
 real(dp),intent(in) :: xval(:)
 real(dp),intent(inout)   :: recvbuf(:)
 integer,intent(in) :: sendcounts(:),displs(:)
 integer,intent(in) :: recvcount,root,spaceComm
 integer,intent(out)   :: ier

!Local variables-------------------

! *************************************************************************

 ier=0
#if defined HAVE_MPI
 if (spaceComm /= MPI_COMM_SELF .and. spaceComm /= MPI_COMM_NULL) then
   call MPI_SCATTERV(xval,sendcounts,displs,MPI_DOUBLE_PRECISION,recvbuf,recvcount,&
&   MPI_DOUBLE_PRECISION,root,spaceComm,ier)
 end if
#endif
end subroutine xscatterv_mpi_dp
!!***

!!****f* ABINIT/xscatterv_mpi_dp2d
!! NAME
!!  xscatterv_mpi_dp2d
!!
!! FUNCTION
!!  Gathers data from all tasks and delivers it to all.
!!  Target: two-dimensional real arrays.
!!
!! INPUTS
!!  xval= buffer array
!!  recvcount= number of received elements
!!  displs= relative offsets for incoming data (array)
!!  sendcounts= number of sent elements (array)
!!  root= rank of receiving process
!!  spaceComm= MPI communicator
!!
!! OUTPUT
!!  ier= exit status, a non-zero value meaning there is an error
!!
!! SIDE EFFECTS
!!  recvbuf= received buffer
!!
!! PARENTS
!!
!! CHILDREN
!!      mpi_scatterv
!!
!! SOURCE
subroutine xscatterv_mpi_dp2d(xval,sendcounts,displs,recvbuf,recvcount,root,spaceComm,ier)


 use defs_basis
#if defined HAVE_MPI && defined HAVE_MPI2 && ! defined HAVE_MPI_INCLUDED_ONCE
 use mpi
#endif

!This section has been created automatically by the script Abilint (TD).
!Do not modify the following lines by hand.
#undef ABI_FUNC
#define ABI_FUNC 'xscatterv_mpi_dp2d'
!End of the abilint section

 implicit none

#if defined HAVE_MPI && defined HAVE_MPI1
 include 'mpif.h'
#endif

!Arguments-------------------------
 real(dp),intent(in) :: xval(:,:)
 real(dp),intent(inout)   :: recvbuf(:,:)
 integer,intent(in) :: sendcounts(:),displs(:)
 integer,intent(in) :: recvcount,root,spaceComm
 integer,intent(out)   :: ier

!Local variables-------------------

! *************************************************************************

 ier=0
#if defined HAVE_MPI
 if (spaceComm /= MPI_COMM_SELF .and. spaceComm /= MPI_COMM_NULL) then
   call MPI_SCATTERV(xval,sendcounts,displs,MPI_DOUBLE_PRECISION,recvbuf,recvcount,&
&   MPI_DOUBLE_PRECISION,root,spaceComm,ier)
 end if
#endif
end subroutine xscatterv_mpi_dp2d
!!***

!!****f* ABINIT/xscatterv_mpi_dp3d
!! NAME
!!  xscatterv_mpi_dp3d
!!
!! FUNCTION
!!  Gathers data from all tasks and delivers it to all.
!!  Target: three-dimensional real arrays.
!!
!! INPUTS
!!  xval= buffer array
!!  recvcount= number of received elements
!!  displs= relative offsets for incoming data (array)
!!  sendcounts= number of sent elements (array)
!!  root= rank of receiving process
!!  spaceComm= MPI communicator
!!
!! OUTPUT
!!  ier= exit status, a non-zero value meaning there is an error
!!
!! SIDE EFFECTS
!!  recvbuf= received buffer
!!
!! PARENTS
!!
!! CHILDREN
!!      mpi_scatterv
!!
!! SOURCE
subroutine xscatterv_mpi_dp3d(xval,sendcounts,displs,recvbuf,recvcount,root,spaceComm,ier)


 use defs_basis
#if defined HAVE_MPI && defined HAVE_MPI2 && ! defined HAVE_MPI_INCLUDED_ONCE
 use mpi
#endif

!This section has been created automatically by the script Abilint (TD).
!Do not modify the following lines by hand.
#undef ABI_FUNC
#define ABI_FUNC 'xscatterv_mpi_dp3d'
!End of the abilint section

 implicit none

#if defined HAVE_MPI && defined HAVE_MPI1
 include 'mpif.h'
#endif

!Arguments-------------------------
 real(dp),intent(in) :: xval(:,:,:)
 real(dp),intent(inout)   :: recvbuf(:,:,:)
 integer,intent(in) :: sendcounts(:),displs(:)
 integer,intent(in) :: recvcount,root,spaceComm
 integer,intent(out)   :: ier

!Local variables-------------------

! *************************************************************************

 ier=0
#if defined HAVE_MPI
 if (spaceComm /= MPI_COMM_SELF .and. spaceComm /= MPI_COMM_NULL) then
   call MPI_SCATTERV(xval,sendcounts,displs,MPI_DOUBLE_PRECISION,recvbuf,recvcount,&
&   MPI_DOUBLE_PRECISION,root,spaceComm,ier)
 end if
#endif
end subroutine xscatterv_mpi_dp3d
!!***

!!****f* ABINIT/xscatterv_mpi_dp4d
!! NAME
!!  xscatterv_mpi_dp4d
!!
!! FUNCTION
!!  Gathers data from all tasks and delivers it to all.
!!  Target: four-dimensional real arrays.
!!
!! INPUTS
!!  xval= buffer array
!!  recvcount= number of received elements
!!  displs= relative offsets for incoming data (array)
!!  sendcounts= number of sent elements (array)
!!  root= rank of receiving process
!!  spaceComm= MPI communicator
!!
!! OUTPUT
!!  ier= exit status, a non-zero value meaning there is an error
!!
!! SIDE EFFECTS
!!  recvbuf= received buffer
!!
!! PARENTS
!!
!! CHILDREN
!!      mpi_scatterv
!!
!! SOURCE
subroutine xscatterv_mpi_dp4d(xval,sendcounts,displs,recvbuf,recvcount,root,spaceComm,ier)


 use defs_basis
#if defined HAVE_MPI && defined HAVE_MPI2 && ! defined HAVE_MPI_INCLUDED_ONCE
 use mpi
#endif

!This section has been created automatically by the script Abilint (TD).
!Do not modify the following lines by hand.
#undef ABI_FUNC
#define ABI_FUNC 'xscatterv_mpi_dp4d'
!End of the abilint section

 implicit none

#if defined HAVE_MPI && defined HAVE_MPI1
 include 'mpif.h'
#endif

!Arguments-------------------------
 real(dp),intent(in) :: xval(:,:,:,:)
 real(dp),intent(inout)   :: recvbuf(:,:,:,:)
 integer,intent(in) :: sendcounts(:),displs(:)
 integer,intent(in) :: recvcount,root,spaceComm
 integer,intent(out)   :: ier

!Local variables-------------------

! *************************************************************************

 ier=0
#if defined HAVE_MPI
 if (spaceComm /= MPI_COMM_SELF .and. spaceComm /= MPI_COMM_NULL) then
   call MPI_SCATTERV(xval,sendcounts,displs,MPI_DOUBLE_PRECISION,recvbuf,recvcount,&
&   MPI_DOUBLE_PRECISION,root,spaceComm,ier)
 end if
#endif
end subroutine xscatterv_mpi_dp4d
!!***
