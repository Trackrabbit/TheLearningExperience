SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[FA_RWCalcRemainingLife]  (  @IN_Depreciated_to_Date datetime,  @I_dPlaceInServiceDate datetime,  @IN_Depreciation_Begin_Date datetime,  @IN_Original_Life_Years smallint,  @IN_Original_Life_Days smallint,  @IN_switch tinyint,   @IN_Averaging_Convention smallint  )  RETURNS integer AS BEGIN   declare  @l_End_of_Life datetime, @temp_end_date datetime  declare  @l_Remaining_Life_Years int  declare  @l_Remaining_Life_Days int  declare  @INOUT_Date datetime, @temp datetime  declare  @OUT_l_remaining_total int   if    @IN_Original_Life_Years = 0 and @IN_Original_Life_Days  = 0  begin  select @l_Remaining_Life_Years=0, @l_Remaining_Life_Days=0  select @OUT_l_remaining_total=0  RETURN(@OUT_l_remaining_total)  end   select @INOUT_Date = @IN_Depreciation_Begin_Date  if MONTH(@INOUT_Date)=2 and DAY(@INOUT_Date)=29  begin  select @INOUT_Date = @INOUT_Date+@IN_Original_Life_Days  if MONTH(@INOUT_Date)=2 and DAY(@INOUT_Date)=29 and   not(((@IN_Original_Life_Years%4=0) and ((@IN_Original_Life_Years%100)<>0) or (@IN_Original_Life_Years%400)=0))  select @INOUT_Date=@INOUT_Date+1  select @l_End_of_Life = DATEADD(yyyy,@IN_Original_Life_Years,@INOUT_Date)  end  else  begin  select @INOUT_Date = DATEADD(yyyy,@IN_Original_Life_Years,@INOUT_Date)  select @l_End_of_Life = @INOUT_Date+@IN_Original_Life_Days  end  if @l_End_of_Life < @I_dPlaceInServiceDate  select @l_End_of_Life = @I_dPlaceInServiceDate   select @l_Remaining_Life_Days = DATEDIFF(dd,@IN_Depreciated_to_Date,@l_End_of_Life)  select @l_Remaining_Life_Years = (@l_Remaining_Life_Days/365)  select @temp_end_date = DATEADD(yy,@l_Remaining_Life_Years,@IN_Depreciated_to_Date)  select @l_Remaining_Life_Days = DATEDIFF(dd,@temp_end_date,@l_End_of_Life)   if   @l_Remaining_Life_Years < 0  or @l_Remaining_Life_Days  < 0  select @l_Remaining_Life_Years = 0, @l_Remaining_Life_Days  = 0   if @l_Remaining_Life_Years >= @IN_Original_Life_Years and @l_Remaining_Life_Days >= @IN_Original_Life_Days  and @IN_Averaging_Convention<>1   begin  select @l_Remaining_Life_Years = @IN_Original_Life_Years  select @l_Remaining_Life_Days = @IN_Original_Life_Days  end   if @IN_switch=0   select @OUT_l_remaining_total=@l_Remaining_Life_Years  else  select @OUT_l_remaining_total=@l_Remaining_Life_Days   RETURN(@OUT_l_remaining_total)  END   
GO
GRANT EXECUTE ON  [dbo].[FA_RWCalcRemainingLife] TO [DYNGRP]
GO
