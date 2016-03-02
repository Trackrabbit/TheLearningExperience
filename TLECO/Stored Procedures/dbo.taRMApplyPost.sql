SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taRMApplyPost]  @I_vAPTODCNM char(21),   @I_vAPFRDCNM char(21),   @I_vAPPTOAMT numeric(19,5),   @I_vAPFRDCTY integer,   @I_vAPTODCTY integer,   @I_vDISTKNAM numeric(19,5),   @I_vWROFAMNT numeric(19,5),   @I_vAPPLYDATE   datetime,   @I_vGLPOSTDT datetime,   @I_vUSRDEFND1 char(50),        @I_vUSRDEFND2 char(50),        @I_vUSRDEFND3 char(50),        @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output,   @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return(@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taRMApplyPost] TO [DYNGRP]
GO
