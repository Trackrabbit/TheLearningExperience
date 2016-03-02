SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taRMApplyPre]  @I_vAPTODCNM char(21) output,  @I_vAPFRDCNM char(21) output,  @I_vAPPTOAMT numeric(19,5) output,  @I_vAPFRDCTY integer output,   @I_vAPTODCTY integer output,   @I_vDISTKNAM numeric(19,5) output,  @I_vWROFAMNT numeric(19,5) output,  @I_vAPPLYDATE   datetime output,  @I_vGLPOSTDT datetime output,  @I_vUSRDEFND1 char(50) output,       @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return(@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taRMApplyPre] TO [DYNGRP]
GO
