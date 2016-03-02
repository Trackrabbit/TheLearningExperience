SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVTransferLineInsertPost]  @I_vIVDOCNBR char(17),    @I_vITEMNMBR char(30),   @I_vReason_Code char(15),   @I_vLNSEQNBR numeric(19,5),  @I_vTRXQTY numeric(19,5),   @I_vUOFM char(8),    @I_vUNITCOST numeric(19,5),  @I_vTRXLOCTN  char(10),   @I_vTRNSTLOC char(10),   @I_vTRFQTYTY smallint,   @I_vTRTQTYTY smallint,   @I_vIVIVINDX int,    @I_vInventoryAccount varchar(75),  @I_vIVIVOFIX int,    @I_vInventoryAccountOffSet varchar(75),  @I_vOverrideQty tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),   @I_vUSRDEFND2  char(50),   @I_vUSRDEFND3  char(50),   @I_vUSRDEFND4  varchar(8000),  @I_vUSRDEFND5  varchar(8000),  @O_iErrorState int output,   @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVTransferLineInsertPost] TO [DYNGRP]
GO
