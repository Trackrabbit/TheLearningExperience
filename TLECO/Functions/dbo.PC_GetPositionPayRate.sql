SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Function [dbo].[PC_GetPositionPayRate] (  @v_Plan char(15),  @v_JobTitle char(6),  @v_PAYRATEBASEDON smallint,  @v_PAYRTAMT numeric(19,5),  @v_PAYRATESeat numeric(19,5),  @v_PYSTPTBLID char(15),  @v_Base_Step_Increased_On smallint,  @v_Step smallint,  @v_PayCode char(7),  @v_PAYTYPE smallint,  @v_PAYPEROD smallint,  @v_PAYUNPER smallint,  @v_EMPLOYID char(15),  @v_WKHRPRYR smallint,  @v_INHERITSTATUS smallint,  @v_HireDate datetime,  @v_AdjHireDate datetime,  @v_SENIORITYDATE_I datetime,  @v_Step_Effective_Date datetime,  @v_CurrentDate datetime,  @PRIMARYPOSSEAT tinyint)  ReturnS numeric(19,5)   Begin  Declare  @PAYRATE numeric(19,5),  @SalDate datetime,  @MonthsLapsed int  If @v_PAYRATEBASEDON = 0 and @PRIMARYPOSSEAT = 1  Begin  Set @PAYRATE = @v_PAYRATESeat  End  Else  Begin   If @v_PYSTPTBLID = '' and @v_INHERITSTATUS <> 1  Set @PAYRATE = @v_PAYRTAMT  Else If @v_INHERITSTATUS = 1  and @v_PYSTPTBLID = ''   Select @PAYRATE = isnull(PAYRTAMT, 0)   From UPR00400 Where EMPLOYID = @v_EMPLOYID and PAYRCORD = @v_PayCode  Else  Begin  if @v_Base_Step_Increased_On = 1   Set @SalDate = @v_HireDate  Else If @v_Base_Step_Increased_On = 2   Set @SalDate = @v_AdjHireDate  Else If @v_Base_Step_Increased_On = 3   Set @SalDate = isnull(@v_SENIORITYDATE_I, '1/1/1900')  Else    Set @SalDate = @v_Step_Effective_Date  Set @MonthsLapsed = DATEDIFF(month, @SalDate, @v_CurrentDate)   Set @PAYRATE = 0  if @v_Base_Step_Increased_On = 4   Begin  Select top 1 @PAYRATE = isnull(PAYRTAMT, 0) From HRPS0401   Where PYSTPTBLID = @v_PYSTPTBLID and Effective_Date >= @SalDate and   Step = @v_Step   Order by Effective_Date desc  End  Else  Begin  Select top 1 @PAYRATE = isnull(PAYRTAMT, 0) From HRPS0401   Where PYSTPTBLID = @v_PYSTPTBLID and Effective_Date <= @SalDate and   @MonthsLapsed >= Months_In_Step_Start and @MonthsLapsed <= Months_In_Step_End  Order by Effective_Date desc  End  End  End  Set @PAYRATE  = dbo.PC_AnnualizePay(@v_PAYTYPE, @v_WKHRPRYR, @v_PAYUNPER, @v_PAYPEROD, @PAYRATE)   Return @PAYRATE  End   
GO
GRANT EXECUTE ON  [dbo].[PC_GetPositionPayRate] TO [DYNGRP]
GO