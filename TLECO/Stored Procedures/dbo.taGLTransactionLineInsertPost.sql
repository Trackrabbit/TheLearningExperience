SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGLTransactionLineInsertPost]  @I_vBACHNUMB char(15),   @I_vJRNENTRY int,    @I_vSQNCLINE numeric (19,5),   @I_vACTINDX int,    @I_vCRDTAMNT numeric (19,5),   @I_vDEBITAMT numeric (19,5),   @I_vACTNUMST char(75),   @I_vDSCRIPTN char(30),   @I_vORCTRNUM char(20),   @I_vORDOCNUM char(20),   @I_vORMSTRID char(30),   @I_vORMSTRNM char(64),   @I_vORTRXTYP smallint,   @I_vOrigSeqNum int,    @I_vORTRXDESC char(30),    @I_vTAXDTLID char(15),   @I_vTAXAMNT numeric(19,5),   @I_vTAXACTNUMST char(75),   @I_vDOCDATE datetime,   @I_vCURNCYID char(15) = '',   @I_vXCHGRATE numeric(19,7)=0,  @I_vRATETPID char(15) = '',   @I_vEXPNDATE datetime = '',   @I_vEXCHDATE datetime = '',   @I_vEXGTBDSC char(30) = '',   @I_vEXTBLSRC char(50) = '',   @I_vRATEEXPR smallint = -1,     @I_vDYSTINCR smallint = -1,   @I_vRATEVARC numeric(19,7)=0,  @I_vTRXDTDEF smallint = -1,   @I_vRTCLCMTD smallint = -1,   @I_vPRVDSLMT smallint = 0,   @I_vDATELMTS smallint = 0,   @I_vTIME1 datetime = '',   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),      @I_vUSRDEFND2  char(50),      @I_vUSRDEFND3  char(50),      @I_vUSRDEFND4  varchar(8000),      @I_vUSRDEFND5  varchar(8000),      @O_iErrorState int output,   @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGLTransactionLineInsertPost] TO [DYNGRP]
GO
