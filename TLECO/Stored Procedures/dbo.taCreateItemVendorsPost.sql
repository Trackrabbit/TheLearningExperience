SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateItemVendorsPost]  @I_vITEMNMBR char(30),    @I_vVENDORID char(15),   @I_vVNDITNUM char(30),   @I_vQTYRQSTN numeric(19,5),   @I_vAVRGLDTM int,    @I_vNORCTITM smallint,   @I_vMINORQTY numeric(19,5),   @I_vMAXORDQTY numeric(19,5),   @I_vECORDQTY numeric(19,5),   @I_vVNDITDSC char(100),   @I_vLast_Originating_Cost numeric(19,5),   @I_vLast_Currency_ID char(15),   @I_vFREEONBOARD smallint,    @I_vPRCHSUOM char(8),   @I_vPLANNINGLEADTIME smallint,   @I_vORDERMULTIPLE numeric(19,5),   @I_vMNFCTRITMNMBR char(30),   @I_vUpdateIfExists   tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1     char(50),       @I_vUSRDEFND2    char(50),       @I_vUSRDEFND3    char(50),       @I_vUSRDEFND4    varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString    varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateItemVendorsPost] TO [DYNGRP]
GO
