SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateCheckbookPost]  @I_vCHEKBKID char(15) ,    @I_vDSCRIPTN char(30) ,    @I_vBANKID char(15) ,    @I_vCURNCYID char(15) ,    @I_vACTNUMST char(75) ,    @I_vBNKACTNM char(15) ,    @I_vNXTCHNUM char(20) ,    @I_vNext_Deposit_Number char(20) ,   @I_vINACTIVE tinyint ,    @I_vMXCHDLR numeric(19,5) ,    @I_vDUPCHNUM tinyint ,    @I_vOVCHNUM1 tinyint ,    @I_vLOCATNID char(15) ,    @I_vCMUSRDF1 char(20) ,    @I_vCMUSRDF2 char(20) ,    @I_vLast_Reconciled_Date  datetime ,   @I_vLast_Reconciled_Balance numeric(19,5) ,  @I_vDDACTNUM char(17) ,    @I_vDDINDNAM char(22) ,    @I_vDDTRANS char(2) ,     @I_vPaymentRateTypeID char(15) ,    @I_vDepositRateTypeID char(15) ,   @I_vRequesterTrx smallint,     @I_vUSRDEFND1   char(50) ,        @I_vUSRDEFND2  char(50) ,        @I_vUSRDEFND3  char(50) ,        @I_vUSRDEFND4  varchar(8000) ,        @I_vUSRDEFND5 varchar(8000) ,        @O_iErrorState int output,    @oErrString  varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateCheckbookPost] TO [DYNGRP]
GO
