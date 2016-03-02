SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[FA_CalcLTDDepreciation]  (  @ASSETINDEX int,   @BOOKINDX int,   @dep_as_of_date datetime,  @use_original_values tinyint   )  RETURNS numeric(19,5)  AS BEGIN   declare  @depreciation numeric(19,5), @max_date datetime  select @max_date=''  select @max_date=DATEADD(YEAR,8099,@max_date)  select @max_date=DATEADD(DAY,30,@max_date)  select @max_date=DATEADD(MONTH,11,@max_date)    if @dep_as_of_date=@max_date   begin  select @depreciation=(select LTDDEPRAMT from FA00200 where ASSETINDEX=@ASSETINDEX and BOOKINDX=@BOOKINDX)  RETURN(@depreciation)   end   if @use_original_values=1  select @depreciation = (select isnull(SUM(a.AMOUNT),0) from FA00902 a, FA00100 b where a.ASSETINDEX=@ASSETINDEX and a.ASSETINDEX=b.ASSETINDEX and   a.TRANSACCTTYPE=2 and (a.SOURCDOC='FADEP-O' or a.SOURCDOC='FADEP') and   a.BOOKINDX=@BOOKINDX and a.DEPRTODATE<=@dep_as_of_date)  else  select @depreciation = (select isnull(SUM(a.AMOUNT),0) from FA00902 a, FA00100 b where a.ASSETINDEX=@ASSETINDEX and a.ASSETINDEX=b.ASSETINDEX and   a.TRANSACCTTYPE=2 and a.FA_Reset_User_ID='' and   a.BOOKINDX=@BOOKINDX and a.DEPRTODATE<=@dep_as_of_date)   RETURN(@depreciation)  END   
GO
GRANT EXECUTE ON  [dbo].[FA_CalcLTDDepreciation] TO [DYNGRP]
GO
