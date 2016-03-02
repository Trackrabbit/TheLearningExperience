SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_UpdateNextBillDate] (  @CONSTS smallint,  @CONTNBR char(11),  @LNSEQNBR numeric(19,5) ) As declare @MinDate datetime,@MaxDate datetime declare @NextBillDate datetime, @LineNextBillDate datetime, @HdrNextBillDate datetime declare @Total numeric(19,2) declare @BillingPeriods integer declare @ContLineBillStartDate datetime declare @ContLineBillEndDate datetime  exec smGetMinDate @MinDate output  select @MaxDate = DATEADD(yy, 1000, @MinDate)  select @LineNextBillDate = MIN(SVC00603.INVODATE) from SVC00603 WITH (NOLOCK)  where SVC00603.CONSTS = @CONSTS and  SVC00603.CONTNBR = @CONTNBR and  SVC00603.LNSEQNBR = @LNSEQNBR AND  SVC00603.POSTED = 0 if @LineNextBillDate is null or @LineNextBillDate = @MinDate select @LineNextBillDate = @MaxDate update SVC00601 with (rowlock)  set NXTBLDTE = @LineNextBillDate where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR  select @NextBillDate = min(NXTBLDTE) from SVC00601 where CONSTS = @CONSTS and CONTNBR = @CONTNBR  update SVC00600 with (rowlock)  set NXTBLDTE = @NextBillDate where CONSTS = @CONSTS and CONTNBR = @CONTNBR   return     
GO
GRANT EXECUTE ON  [dbo].[SVC_UpdateNextBillDate] TO [DYNGRP]
GO
