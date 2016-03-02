SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateEmployeeTaxPost]  @I_vEMPLOYID char(15),    @I_vFDFLGSTS char(6),    @I_vFEDEXMPT smallint,    @I_vADFDWHDG numeric(19,5),   @I_vESTFEDWH numeric(19,5),   @I_vSTATECD char(2),    @I_vLOCALTAX char(6),    @I_vW2BF942E tinyint,    @I_vW2BFDCSD tinyint,    @I_vW2BFDCMP tinyint,    @I_vW2BFLREP tinyint,    @I_vW2BFPPLN tinyint,    @I_vW2BFSTEM tinyint,    @I_vMCRQGEMP tinyint,    @I_vEICFLGST char(6),    @I_vNYTXDiff tinyint,    @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),        @I_vUSRDEFND3 char(50),        @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateEmployeeTaxPost] TO [DYNGRP]
GO
