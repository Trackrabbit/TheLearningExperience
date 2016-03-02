SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taRMSchedPmntsPre]  @I_vORIG_DOC_NUMBER  char (21) output,  @I_vORIG_DOC_TYPE  smallint output,  @I_vREC_OFFSET_ACCT_IDX int output,   @I_vRecOffsetAccount  varchar(75) output,  @I_vFIRST_INV_DOC_DATE  datetime output,  @I_vFIRST_INV_DUE_DATE  datetime output,  @I_vINT_INCOME_ACCT_IDX int output,   @I_vIntIncomeAccount  varchar(75) output,  @I_vPAYMENT_AMOUNT  numeric (19,5) output,  @I_vNUM_PAYMENTS  smallint output,  @I_vSCHEDULE_NUMBER  char (21)output,  @I_vPYMNT_FREQUENCY  smallint output,  @I_vREC_ACCT_IDX  int output,   @I_vRecAccount   varchar(75) output,  @I_vSCH_DOC_DATE  datetime output,  @I_vSCHEDULE_AMOUNT  numeric (19,5) output,  @I_vSCHEDULE_DESC  char (31) output,  @I_vSCHEDULE_INT_RATE  numeric (19,5) output,  @I_vSCHEDULE_INT_TYPE1  smallint output,  @I_vRequesterTrx  smallint output,  @I_vUSRDEFND1   char(50) output,  @I_vUSRDEFND2   char(50) output,  @I_vUSRDEFND3   char(50) output,  @I_vUSRDEFND4   char(8000) output,  @I_vUSRDEFND5   char(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taRMSchedPmntsPre] TO [DYNGRP]
GO
