SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetInsurancePost]  @I_vASSETID char(15),    @I_vASSETIDSUF smallint,   @I_vINSURANCECLASS char(15),   @I_vINSURANCEYEAR smallint,   @I_vINSURANCEVALUE numeric(19,5),   @I_vREPLACEMENTCOST numeric(19,5),   @I_vREPROCOST numeric(19,5),   @I_vDEPRREPROCOST numeric(19,5),   @I_vEXCLUSIONAMT numeric(19,5),   @I_vEXCLUSIONTYPE char(15),   @I_vUSRDEFND1    char(50),       @I_vUSRDEFND2   char(50),       @I_vUSRDEFND3   char(50),       @I_vUSRDEFND4   varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString   varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetInsurancePost] TO [DYNGRP]
GO
