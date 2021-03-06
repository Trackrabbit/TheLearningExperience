SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taRMTransactionTaxInsertPost]  @I_vCUSTNMBR char(15),        @I_vDOCNUMBR char(20),   @I_vRMDTYPAL smallint,    @I_vBACHNUMB char(15),        @I_vTAXDTLID char(15),  @I_vTAXAMNT numeric(19,5),  @I_vSTAXAMNT numeric(19,5),  @I_vFRTTXAMT numeric(19,5),   @I_vMSCTXAMT numeric(19,5),   @I_vTAXDTSLS numeric(19,5),  @I_vSEQNUMBR int,   @I_vACTINDX int,   @I_vACTNUMST varchar(75),  @I_vTDTTXSLS numeric(19,5),  @I_vRequesterTrx smallint,  @I_vUSRDEFND1 char(50),  @I_vUSRDEFND2  char(50),  @I_vUSRDEFND3  char(50),  @I_vUSRDEFND4  varchar(8000),  @I_vUSRDEFND5  varchar(8000),  @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taRMTransactionTaxInsertPost] TO [DYNGRP]
GO
