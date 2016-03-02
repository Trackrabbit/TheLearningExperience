SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGLTransactionHeaderInsertPost]  @I_vBACHNUMB  char(15),    @I_vJRNENTRY  int,          @I_vREFRENCE  char(30),    @I_vTRXDATE  datetime,   @I_vRVRSNGDT  datetime,    @I_vTRXTYPE smallint ,   @I_vSQNCLINE numeric(19,5),   @I_vSERIES smallint,   @I_vCURNCYID char(15),   @I_vXCHGRATE numeric(19,7),   @I_vRATETPID char(15),   @I_vEXPNDATE datetime,   @I_vEXCHDATE datetime,   @I_vEXGTBDSC char(30),   @I_vEXTBLSRC char(50),   @I_vRATEEXPR smallint,     @I_vDYSTINCR smallint,   @I_vRATEVARC numeric(19,7),   @I_vTRXDTDEF smallint,   @I_vRTCLCMTD smallint,   @I_vPRVDSLMT smallint,   @I_vDATELMTS smallint,   @I_vTIME1 datetime,   @I_vRequesterTrx smallint,   @I_vSOURCDOC  char(11),   @I_vLedger_ID smallint,   @I_vUSERID char(15),   @I_vAdjustment_Transaction smallint, @I_vNOTETEXT  varchar(8000),   @I_vUSRDEFND1 char(50),   @I_vUSRDEFND2  char(50),   @I_vUSRDEFND3  char(50),   @I_vUSRDEFND4  varchar(8000),   @I_vUSRDEFND5  varchar(8000),   @O_iErrorState int output,   @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGLTransactionHeaderInsertPost] TO [DYNGRP]
GO
