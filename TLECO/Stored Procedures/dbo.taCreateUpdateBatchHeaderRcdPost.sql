SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateUpdateBatchHeaderRcdPost]  @I_vBACHNUMB char(15), @I_vBCHCOMNT char(60), @I_vSERIES int, @I_vGLPOSTDT datetime, @I_vBCHSOURC char(15), @I_vDOCAMT numeric(19,5), @I_vORIGIN int, @I_vNUMOFTRX int, @I_vCHEKBKID char(15), @I_vCNTRLTOT numeric(19,5),   @I_vCNTRLTRX int, @I_vPOSTTOGL smallint, @I_vPmtMethod smallint,    @I_vEFTFileFormat smallint,   @I_vRequesterTrx smallint,   @I_vBRKDNALL tinyint, @I_vUSERID char(15), @I_vBACHFREQ tinyint,    @I_vRECPSTGS smallint,    @I_vMSCBDINC smallint,    @I_vAPPROVL tinyint,    @I_vAPPRVLDT datetime,    @I_vAPRVLUSERID char(15),   @I_vTRXSOURC char(25),    @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateUpdateBatchHeaderRcdPost] TO [DYNGRP]
GO
