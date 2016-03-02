SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateShiftCodePost]  @I_vSHFTCODE char(6),    @I_vDSCRIPTN char(30),    @I_vSHFTTYPE smallint,    @I_vSHFTAMT numeric(19,5),   @I_vSHFTPCT numeric(19,5),   @I_vINACTIVE tinyint,    @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint ,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),        @I_vUSRDEFND3 char(50),        @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateShiftCodePost] TO [DYNGRP]
GO
