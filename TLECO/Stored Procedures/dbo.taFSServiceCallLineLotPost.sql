SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSServiceCallLineLotPost]  @I_vSRVRECTYPE  smallint,   @I_vCALLNBR char(11),    @I_vEQPLINE int,    @I_vLINITMTYP char(3),    @I_vLNITMSEQ int,    @I_vQTYTYPE smallint,    @I_vITEMNMBR char(31),    @I_vSERLTNUM char(21),    @I_vSERLTQTY numeric(19,5),   @I_vSOLD tinyint,    @I_vSLTSQNUM bigint,    @I_vLOCNCODE char(11),    @I_vDTSEQNUM numeric(19,5),    @I_vDATERECD datetime,    @I_vBIN char(15),    @I_vENTDTE datetime,    @I_vAUTOCREATELOT smallint,   @I_vMFGDATE datetime,    @I_vEXPNDATE datetime,    @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int = NULL output, @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSServiceCallLineLotPost] TO [DYNGRP]
GO
