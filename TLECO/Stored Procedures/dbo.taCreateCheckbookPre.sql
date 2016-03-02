SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateCheckbookPre]  @I_vCHEKBKID char(15) output,    @I_vDSCRIPTN char(30) output,    @I_vBANKID char(15) output,    @I_vCURNCYID char(15) output,    @I_vACTNUMST char(75) output,    @I_vBNKACTNM char(15) output,    @I_vNXTCHNUM char(20) output,    @I_vNext_Deposit_Number char(20) output,   @I_vINACTIVE tinyint output,     @I_vMXCHDLR numeric(19,5) output,    @I_vDUPCHNUM tinyint output,     @I_vOVCHNUM1 tinyint output,     @I_vLOCATNID char(15) output,    @I_vCMUSRDF1 char(20) output,    @I_vCMUSRDF2 char(20) output,    @I_vLast_Reconciled_Date  datetime output,   @I_vLast_Reconciled_Balance numeric(19,5) output,  @I_vDDACTNUM char(17) output,    @I_vDDINDNAM char(22) output,    @I_vDDTRANS char(2) output,     @I_vPaymentRateTypeID char(15) output,     @I_vDepositRateTypeID char(15) output,    @I_vRequesterTrx smallint output,    @I_vUSRDEFND1   char(50) output,        @I_vUSRDEFND2  char(50) output,        @I_vUSRDEFND3  char(50) output,        @I_vUSRDEFND4  varchar(8000) output,        @I_vUSRDEFND5 varchar(8000) output,        @O_iErrorState int output,     @oErrString  varchar(255) output     as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateCheckbookPre] TO [DYNGRP]
GO
