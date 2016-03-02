SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[PC_GetPositionSeatsAmountsProjected]    @v_Plan char(15),   @v_JobTitle char(6),   @v_IncludeTemp bit,   @v_CurrentDate datetime,   @v_Seat int,   @v_TaxPos numeric(19,5) output,   @v_BenefitPos numeric(19,5) output,   @v_PayPos numeric(19,5) output  As  set nocount on  Begin  Declare   @StartDate datetime,   @EndDate datetime,   @EMPLOYID char(15),   @PAYRATEBASEDON smallint,   @PAYRATESeat numeric(19,5),   @PAYRATE numeric(19,5),   @PYSTPTBLID char(15),   @Base_Step_Increased_On smallint,   @HireDate datetime,   @AdjHireDate datetime,   @SalDate datetime,   @SENIORITYDATE_I datetime,   @Step_Effective_Date datetime,   @MonthsLapsed int,   @Step int,   @INHERITSTATUS smallint,   @PayCode char(7),   @WKHRPRYR smallint,   @PAYTYPE smallint,   @PAYUNPER smallint,   @DaysRemaining int,   @BUGETBENPERCENT numeric(19,5),   @BUDGETBENAMOUNT numeric(19,5),   @BUDGETTAXPERCENT numeric(19,5),   @BUDGETTAXAMOUNT numeric(19,5),   @Seat int   Set @v_TaxPos = 0  Set @v_BenefitPos = 0  Set @v_PayPos = 0   Select   @StartDate = dateadd(day, 1, Max(isnull(POSTEDDT, '1/1/1900')))  From UPR30100 a  inner join (Select PYADNMBR, AUCTRLCD From UPR30300 Where PYRLRTYP = 1 and JOBTITLE = @v_JobTitle   Group By PYADNMBR, AUCTRLCD) f on a.PYADNMBR = f.PYADNMBR and a.AUCTRLCD = f.AUCTRLCD   Where VOIDED = 0   Set @StartDate = isnull(@StartDate, '1/1/1900')  Select @BUGETBENPERCENT = BUGETBENPERCENT/100,   @BUDGETTAXPERCENT = BUDGETTAXPERCENT/100,   @BUDGETBENAMOUNT = BUDGETBENAMOUNT,   @BUDGETTAXAMOUNT = BUDGETTAXAMOUNT  From PC40301  Where JOBTITLE = @v_JobTitle and PLANCODE = @v_Plan   Declare SeatDetails cursor For   Select a.SEAT, a.EMPLOYID,  a.PAYRATEBASEDON,  a.PAYRATE,  a.ENDDATE,   Case   When @StartDate < a.STRTDATE Then   a.STRTDATE   Else  @StartDate   End,   c.STRTDATE,  c.BENADJDATE,  isnull(d.SENIORITYDATE_I, '1/1/1900'),  a.INHERITSTATUS,  b.WKHRPRYR   From PC40305 a  Inner Join PC40304 b ON a.PLANCODE = b.PLANCODE and a.JOBTITLE = b.JOBTITLE   and a.TEMPSEAT = b.TEMPSEAT and a.SEAT = b.SEAT   Inner Join UPR00100 c On a.EMPLOYID = c.EMPLOYID   left Outer Join HR2UNI01 d ON d.EMPID_I = a.EMPLOYID   Where a.PLANCODE = @v_Plan and a.JOBTITLE = @v_JobTitle   and (a.TEMPSEAT = (Case When @v_IncludeTemp = 0 Then 0 Else 1 End) or a.TEMPSEAT = (Case When @v_IncludeTemp = 0 Then 0 Else 0 End))   and (ASSIGNMENTSTATUS = 1 or ASSIGNMENTSTATUS = 3 or ASSIGNMENTSTATUS = 6)   and a.EXPIREDCB = 0 and b.INACTIVE = 0  and a.SEAT = @v_Seat   Open SeatDetails  Fetch Next From SeatDetails  Into @Seat, @EMPLOYID, @PAYRATEBASEDON, @PAYRATESeat, @EndDate, @StartDate, @HireDate, @AdjHireDate,   @SENIORITYDATE_I, @INHERITSTATUS, @WKHRPRYR  WHILE @@FETCH_STATUS = 0   BEGIN  Set @PAYRATE = 0  Set @DaysRemaining = 0   Select @PAYRATE = Sum(  dbo.PC_GetPositionPayRate(@v_Plan, @v_JobTitle,   @PAYRATEBASEDON,   a.PAYRTAMT,   @PAYRATESeat,  a.PYSTPTBLID,   a.Base_Step_Increased_On,  a.Step,  a.PayCode,  b.PAYTYPE,   Case   When @INHERITSTATUS = 1 Then   isnull(c.PAYPEROD, 0)  Else  b.PAYPEROD  End,   Case   When @INHERITSTATUS = 1 Then   isnull(c.PAYUNPER, 0)  Else  b.PAYUNPER  End,   @EMPLOYID,  @WKHRPRYR,  @INHERITSTATUS,  @HireDate,  @AdjHireDate,  @SENIORITYDATE_I,   a.Step_Effective_Date,  @v_CurrentDate,  a.PRIMARYPOSSEAT))   From PC40302 a  Inner Join UPR40600 b on b.PAYRCORD = a.PayCode   Left Outer Join UPR00400 c On c.EMPLOYID = @EMPLOYID And c.PAYRCORD = a.PayCode   Where a.PLANCODE = @v_Plan and a.JOBTITLE = @v_JobTitle and a.BUDGETED = 1   Group By a.PLANCODE, a.JOBTITLE    if @StartDate = '1/1/1900' or @StartDate is null   Select @StartDate = isnull(min(STRTDATE), '1/1/1900')   From PC40306   Where PLANCODE = @v_Plan and JOBTITLE = @v_JobTitle   if @EndDate = '1/1/1900'   Begin  Select @EndDate = isnull(Max(ENDDATE), '1/1/1900')   From PC40306 Where PLANCODE = @v_Plan and JOBTITLE = @v_JobTitle   End   if @EndDate < @StartDate   Set @DaysRemaining = 0   Else  Set @DaysRemaining = DateDiff(day, @StartDate, @EndDate)   if DATEPART(d, DATEADD(d, 1, (CONVERT(VARCHAR(4), year(@EndDate)) + '0228'))) = 29   Set @v_PayPos = @v_PayPos + (@DaysRemaining * @PAYRATE / 366)   Else  Set @v_PayPos = @v_PayPos + (@DaysRemaining * @PAYRATE / 365)   Set @v_BenefitPos = @v_BenefitPos + (@DaysRemaining * @BUDGETBENAMOUNT)   Set @v_TaxPos = @v_TaxPos + (@DaysRemaining * @BUDGETTAXAMOUNT)  Fetch Next From SeatDetails  Into @Seat,   @EMPLOYID, @PAYRATEBASEDON, @PAYRATESeat, @EndDate, @StartDate, @HireDate, @AdjHireDate, @SENIORITYDATE_I, @INHERITSTATUS, @WKHRPRYR  END  Set @v_BenefitPos = @v_BenefitPos + (@v_PayPos * @BUGETBENPERCENT)  Set @v_TaxPos = @v_TaxPos + (@v_PayPos * @BUDGETTAXPERCENT)  Close SeatDetails Deallocate SeatDetails End     
GO
GRANT EXECUTE ON  [dbo].[PC_GetPositionSeatsAmountsProjected] TO [DYNGRP]
GO
