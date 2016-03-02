SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[FA_CalcYTDDepreciationSummary]  (  @ASSETINDEX int,   @BOOKINDX int,   @dep_as_of_date datetime,  @max_date datetime,  @use_original_values tinyint   )  RETURNS numeric(19,5)  AS BEGIN   declare  @depreciation numeric(19,5)  declare @final_date datetime, @temp_date datetime, @max_period_end_date datetime, @max_deprtodate datetime  declare @PERIODID smallint, @temp_period smallint,@FISCALYEAR smallint  if @dep_as_of_date=@max_date   begin  select @depreciation=(select YTDDEPRAMT from FA00200 where ASSETINDEX=@ASSETINDEX and BOOKINDX=@BOOKINDX)  RETURN(@depreciation)   end   select @PERIODID=PERIODID,@FISCALYEAR=FISCALYEAR from FA42100   where PERIODSTARTDATE<=@dep_as_of_date and PERIODENDDATE>=@dep_as_of_date    select @temp_period = MAX(PERIODID) from FA42100 where FISCALYEAR=(@FISCALYEAR-1)   select @final_date =  isnull(PERIODENDDATE+1,'12/31/9999') from FA42100 where FISCALYEAR=(@FISCALYEAR-1) and PERIODID=@temp_period    if @use_original_values=1  begin  select @depreciation = (select isnull(SUM(a.AMOUNT),0) from FA00902 a, FA00100 b where a.ASSETINDEX=@ASSETINDEX and a.ASSETINDEX=b.ASSETINDEX and   a.TRANSACCTTYPE=2 and (a.SOURCDOC='FADEP-O' or a.SOURCDOC='FADEP')  and   a.BOOKINDX=@BOOKINDX and a.DEPRTODATE>=@final_date and a.DEPRTODATE<=@dep_as_of_date)  end  else  begin  select @depreciation = (select isnull(SUM(a.AMOUNT),0) from FA00902 a, FA00100 b where a.ASSETINDEX=@ASSETINDEX and a.ASSETINDEX=b.ASSETINDEX and   a.TRANSACCTTYPE=2 and a.FA_Reset_User_ID=''  and   a.BOOKINDX=@BOOKINDX and a.DEPRTODATE>=@final_date and a.DEPRTODATE<=@dep_as_of_date)  end   RETURN(@depreciation)  END   
GO
GRANT EXECUTE ON  [dbo].[FA_CalcYTDDepreciationSummary] TO [DYNGRP]
GO
