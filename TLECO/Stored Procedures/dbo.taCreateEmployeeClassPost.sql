SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateEmployeeClassPost]  @I_vEMPLCLAS char(15),    @I_vDSCRIPTN char(30),    @I_vDEPRTMNT char(6),    @I_vJOBTITLE char(6),    @I_vSUTASTAT char(2),    @I_vWRKRCOMP char(6),    @I_vMINETPAY numeric(19,5),   @I_vWKHRPRYR smallint,    @I_vWCACFPAY smallint,    @I_vAccountNumber char(75),   @I_vUSERDEF1 char(20),    @I_vUSERDEF2 char(20),    @I_vATACRVAC tinyint,    @I_vVACCRMTH smallint,    @I_vVACCRAMT numeric(19,5),   @I_vVACAPRYR int,    @I_vVACAVLBL int,    @I_vWRNVCNFLSBLWZR tinyint,   @I_vATACRSTM tinyint,    @I_vSTMACMTH smallint,    @I_vSKTMACAM numeric(19,5),   @I_vSKTMHPYR int,    @I_vSIKTIMAV int,    @I_vWRNSTFLSBLWZR tinyint,   @I_vDEFLTCLS tinyint,    @I_vCalc_Min_Wage_Bal tinyint,   @I_vEMPLOYMENTTYPE smallint,    @I_vDefaultFromClass tinyint,   @I_vUpdateIfExists tinyint ,   @I_vRequesterTrx smallint ,   @I_vUSRDEFND1 char(50) ,   @I_vUSRDEFND2 char(50) ,       @I_vUSRDEFND3 char(50) ,       @I_vUSRDEFND4 varchar(8000) ,       @I_vUSRDEFND5 varchar(8000) ,       @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateEmployeeClassPost] TO [DYNGRP]
GO
