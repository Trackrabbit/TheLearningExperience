SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taBRBankTransactionDistPost]   @I_vOption smallint,    @I_vACTNUMST varchar(75),   @I_vDEBITAMT numeric(19,5),    @I_vCRDTAMNT numeric(19,5),   @I_vDistRef char (30),    @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output,   @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taBRBankTransactionDistPost] TO [DYNGRP]
GO
