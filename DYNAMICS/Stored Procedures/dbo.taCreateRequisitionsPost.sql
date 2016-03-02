SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateRequisitionsPost]  @I_vREQUISITIONNUMBER_I int,    @I_vREQSTATUS_I smallint,     @I_vDEPARTMENTCODE_I char(7),    @I_vPOSITIONCODE_I char(7),     @I_vCOMPANYCODE_I char(5),     @I_vDIVISIONCODE_I char(7),     @I_vMANAGER_I char(31),       @I_vSUPERVISORCODE_I char(7),    @I_vSTRTDATE datetime,      @I_vENDDATE datetime,      @I_vOPENINGDATE_I datetime,     @I_vRECRUITER_I char(31),     @I_vRECRUITMENT_I smallint,     @I_vADVERTISINGLIST_I_1 char(15),   @I_vADVERTISINGLIST_I_2 char(15),   @I_vADVERTISINGLIST_I_3 char(15),   @I_vADVERTISINGLIST_I_4 char(15),   @I_vADVERTISINGLIST_I_5 char(15),   @I_vPOSITIONSAVAILABLE_I smallint,   @I_vPOSITIONSFILLED_I smallint,    @I_vAPPLICANTSAPPLIED_I smallint,   @I_vAPPSINTERVIEWED_I smallint,    @I_vADVERTISINGCOSTS_I numeric(19,5),  @I_vRECRUITERSFEES_I numeric(19,5),   @I_vCHANGEBY_I char(15),     @I_vUpdateIfExists tinyint,     @I_vRequesterTrx smallint ,     @I_vUSRDEFND1 char(50),      @I_vUSRDEFND2 char(50),         @I_vUSRDEFND3 char(50),         @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,     @oErrString varchar(255) output     as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateRequisitionsPost] TO [DYNGRP]
GO
