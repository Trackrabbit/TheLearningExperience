SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSRTVLineSerialPost]  @I_vRTV_Number char(15),   @I_vRTV_Line numeric(19,5),   @I_vVENDORID char(15),    @I_vADRSCODE char(15),    @I_vQTYTYPE smallint,    @I_vSERLTQTY numeric(19,5),   @I_vSLTSQNUM integer,    @I_vInOrOut smallint,    @I_vITEMNMBR char(31),    @I_vSERLNMBR char(21),     @I_vBIN char(15),    @I_vLOCNCODE char(11),    @I_vSVC_Original_Serial tinyint,  @I_vDATERECD datetime,    @I_vShipped tinyint,    @I_vCREATEEQUIPMENT tinyint,    @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int = NULL output,  @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSRTVLineSerialPost] TO [DYNGRP]
GO
