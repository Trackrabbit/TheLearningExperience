SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[svcUtilReCreateRevenues] AS declare @CONSTS                 smallint,  @CONTNBR                char(11),  @LNSEQNBR               numeric(19,5),  @Address         char(15),  @StartDate          datetime,  @EndDate          datetime,  @Line numeric (19,5),  @RevLineEndDdate datetime,  @TotalPostedRevenue  numeric(19,5),   @InvoiceAmount numeric(19,2),  @TransactionDate datetime,   @MinDate datetime,  @CoverageStart datetime,   @CoverageEnd datetime,  @UserID   Varchar(30),   @SourceDocument  Varchar(255),  @DiscountPercent numeric (19,5),   @ErrorCondition int,  @Evergreen tinyint,  @SourceType char(3)  exec smGetMinDate @MinDate output   declare FixNonEVGRRevenue cursor for select CONTNBR, SVC_Evergreen_Contract from SVC00600  where CONSTS = 2 and SVC_Liability_Type = 1 and (BILCYC = 4 or (BILCYC = 3 and (svcFrequencyQty > 1 or Liabiltiy_Reduction = 1))) open FixNonEVGRRevenue fetch next from FixNonEVGRRevenue into @CONTNBR, @Evergreen while @@FETCH_STATUS = 0   BEGIN   declare NonEverLineCursor CURSOR for select LNSEQNBR, DSCPCTAM/10000.0, STRTDATE,ENDDATE from SVC00601  where CONSTS=2 and CONTNBR = @CONTNBR and (Contract_Line_Status = 'N' or Contract_Line_Status = 'R')  OPEN NonEverLineCursor  fetch next from NonEverLineCursor into @Line, @DiscountPercent, @StartDate, @EndDate  while @@FETCH_STATUS = 0   BEGIN   delete from SVC00604 where CONSTS = 2 and CONTNBR = @CONTNBR and LNSEQNBR = @Line and Status = 0  select @UserID = SUSER_SNAME()  select @RevLineEndDdate = max(SVC_Coverage_End_Date) from SVC00604 where CONSTS = 2 and CONTNBR = @CONTNBR and LNSEQNBR = @Line  select @CoverageStart = isnull(dateadd(dd, 1, @RevLineEndDdate),@StartDate)  select @SourceDocument = '2-' + RTRIM(@CONTNBR) + '-' + CONVERT(varchar(20),@Line),  @TransactionDate = convert(char(12),getdate(),102)  select @TotalPostedRevenue = SUM(isnull(Transaction_Amount,0)) from SVC00604 WITH (NOLOCK)  where CONSTS = 2 and CONTNBR = @CONTNBR and LNSEQNBR = @Line  select @InvoiceAmount = ROUND(SUM(IsNull(SVC00603.DOCAMNT,0) - IsNull(SVC00603.SVC_Invoice_Credit_Amoun,0) ),2),  @CoverageEnd = max(SVC_Coverage_End_Date)  from SVC00603 WITH (NOLOCK) where CONSTS = 2 and CONTNBR = @CONTNBR and LNSEQNBR = @Line   select @InvoiceAmount = @InvoiceAmount - isnull(@TotalPostedRevenue,0)  if @Evergreen = 1  select @SourceType = 'EGR'  else  select @SourceType = 'CAL'  if @InvoiceAmount > 0   begin  exec SVC_RET_Create_Revenue_Recognition_Lines  -1,   -1,  2,  @CONTNBR,  @Line ,  0 ,  @MinDate,  @SourceType,  @SourceDocument ,  @TransactionDate,  @InvoiceAmount,  @UserID ,  @CoverageStart,  @CoverageEnd,  @DiscountPercent,  @ErrorCondition OUTPUT  print 'Re-calculate contract: '+@CONTNBR +' - '+ str(@Line)  end   fetch next from NonEverLineCursor into @Line, @DiscountPercent, @StartDate, @EndDate  END   close NonEverLineCursor  DEALLOCATE NonEverLineCursor   fetch next from FixNonEVGRRevenue into @CONTNBR, @Evergreen  END  close FixNonEVGRRevenue DEALLOCATE FixNonEVGRRevenue  return     
GO
GRANT EXECUTE ON  [dbo].[svcUtilReCreateRevenues] TO [DYNGRP]
GO
