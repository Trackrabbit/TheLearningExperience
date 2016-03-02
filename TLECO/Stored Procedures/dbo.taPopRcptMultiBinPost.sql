SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPopRcptMultiBinPost]  @I_vPOPRCTNM char(17),      @I_vRCPTLNNM int = 0,   @I_vITEMNMBR char(30),      @I_vBIN char(15),   @I_vQUANTITY numeric(19,5),      @I_vUOFM char(8),       @I_vCreateBin int,   @I_vRequesterTrx smallint,  @I_vUSRDEFND1 char(50),   @I_vUSRDEFND2 char(50),   @I_vUSRDEFND3 char(50),   @I_vUSRDEFND4 varchar(8000),  @I_vUSRDEFND5 varchar(8000),  @O_iErrorState int output,  @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPopRcptMultiBinPost] TO [DYNGRP]
GO
