SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetIDPost]  @I_vASSETID char(15),    @I_vASSETIDSUF smallint,   @I_vSHRTNAME char(15),   @I_vASSETDESC char(40),   @I_vEXTASSETDESC char(40),   @I_vMaster_Asset_ID char(19),   @I_vSTRUCTUREID char(30),   @I_vASSETCLASSID char(15),   @I_vLOCATNID char(15),   @I_vACQDATE datetime,   @I_vAcquisition_Cost numeric(19,5),   @I_vASSETTYPE smallint,   @I_vASSETSTATUS smallint,    @I_vPROPTYPE smallint,     @I_vASSETQTY int,    @I_vASSETBEGQTY int,     @I_vASSETCURRMAINT numeric(19,5),   @I_vASSETYTDMAINT numeric(19,5),   @I_vASSETLTDMAINT numeric(19,5),   @I_vLASTMAINTDATE datetime,   @I_vASSESSEDVALUE numeric(19,5),   @I_vMFGRNAME char(25),   @I_vSERLNMBR char(20),   @I_vMODELNUMBER char(20),   @I_vWARRENTYDATE datetime,   @I_vCUSTODIAN char(25),   @I_vDATEADDED datetime,   @I_vDELETEDATE datetime,    @I_vPhysical_Location_ID char(15),   @I_vAsset_Label char(19),   @I_vVerified_Date datetime,   @I_vPIN char(15),   @I_vACCTGRPID           char(15), @I_vUpdateIfExists  tinyint,   @I_vUSRDEFND1    char(50),       @I_vUSRDEFND2   char(50),       @I_vUSRDEFND3   char(50),       @I_vUSRDEFND4   varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString   varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetIDPost] TO [DYNGRP]
GO
