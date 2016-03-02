SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPMSchedPmntsPost]  @I_vORIG_VOUCHER_NUM char(21),   @I_vORIG_DOC_TYPE  smallint,   @I_vPAY_OFFSET_ACCT_IDX int,    @I_vPayOffsetAccount  varchar(75),   @I_vFIRST_INV_DOC_DATE  datetime,   @I_vFIRST_INV_DUE_DATE  datetime,   @I_vINT_EXP_ACCT_IDX int,    @I_vIntExpenseAccount  varchar(75),   @I_vPAYMENT_AMOUNT  numeric(19,5),   @I_vNUM_PAYMENTS  smallint,   @I_vSCHEDULE_NUMBER  char(21),   @I_vPYMNT_FREQUENCY  smallint,   @I_vPAY_ACCT_IDX  int,    @I_vPayAccount   varchar(75),   @I_vSCH_DOC_DATE  datetime,   @I_vSCHEDULE_AMOUNT  numeric(19,5),   @I_vSCHEDULE_DESC  char(31),   @I_vSCHEDULE_INT_RATE  numeric(19,5),   @I_vSCHEDULE_INT_TYPE1  smallint,   @I_vUSERID char(15),   @I_vRequesterTrx  smallint,   @I_vUSRDEFND1   char(50),   @I_vUSRDEFND2   char(50),   @I_vUSRDEFND3   char(50),   @I_vUSRDEFND4   char(8000),   @I_vUSRDEFND5   char(8000),   @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPMSchedPmntsPost] TO [DYNGRP]
GO
