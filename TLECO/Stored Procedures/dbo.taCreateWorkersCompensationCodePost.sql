SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateWorkersCompensationCodePost]  @I_vWRKRCOMP char(6),    @I_vSTATECD char(2),    @I_vDSCRIPTN char(30),    @I_vWKCMPMTH smallint,    @I_vWKCMPAMT numeric(19,5),   @I_vWKCMPUNT numeric(19,5),   @I_vWKCMPCNT numeric(19,5),   @I_vWCMOTMTH smallint,    @I_vWCWGLIMT numeric(19,5),   @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint ,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),        @I_vUSRDEFND3 char(50),        @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateWorkersCompensationCodePost] TO [DYNGRP]
GO
