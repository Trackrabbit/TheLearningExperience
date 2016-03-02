SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVTransactionHeaderInsertPost]  @I_vBACHNUMB char(15),    @I_vIVDOCNBR char(17),   @I_vIVDOCTYP smallint,   @I_vDOCDATE datetime,   @I_vRequesterTrx smallint,   @I_vPOSTTOGL smallint,   @I_vMDFUSRID char(15),   @I_vPTDUSRID char(15),   @I_vPOSTEDDT datetime,   @I_vNOTETEXT  varchar(8000),   @I_vUSRDEFND1 char(50),      @I_vUSRDEFND2  char(50),      @I_vUSRDEFND3  char(50),      @I_vUSRDEFND4  varchar(8000),      @I_vUSRDEFND5  varchar(8000),      @O_iErrorState int output,   @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVTransactionHeaderInsertPost] TO [DYNGRP]
GO
