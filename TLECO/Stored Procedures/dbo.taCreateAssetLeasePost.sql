SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetLeasePost]  @I_vASSETID char(15),    @I_vASSETIDSUF smallint,   @I_vLEASECOMPID char(15),   @I_vLEASETYPE smallint,   @I_vLEASECONTRACTID char(15),   @I_vLEASEPAYMENT numeric(19,5),   @I_vLEASEINTRATE numeric(19,5),   @I_vLEASEENDDATE datetime,   @I_vUSRDEFND1    char(50),       @I_vUSRDEFND2   char(50),       @I_vUSRDEFND3   char(50),       @I_vUSRDEFND4   varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString   varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetLeasePost] TO [DYNGRP]
GO
