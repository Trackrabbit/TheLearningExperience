SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateEmployeeTaxPre]  @I_vEMPLOYID char(15) output,   @I_vFDFLGSTS char(6) output,   @I_vFEDEXMPT smallint output,   @I_vADFDWHDG numeric(19,5) output,  @I_vESTFEDWH numeric(19,5) output,  @I_vSTATECD char(2) output,   @I_vLOCALTAX char(6) output,   @I_vW2BF942E tinyint output,   @I_vW2BFDCSD tinyint output,   @I_vW2BFDCMP tinyint output,   @I_vW2BFLREP tinyint output,   @I_vW2BFPPLN tinyint output,   @I_vW2BFSTEM tinyint output,   @I_vMCRQGEMP tinyint output,   @I_vEICFLGST char(6) output,   @I_vNYTXDiff tinyint output,   @I_vUpdateIfExists tinyint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateEmployeeTaxPre] TO [DYNGRP]
GO
