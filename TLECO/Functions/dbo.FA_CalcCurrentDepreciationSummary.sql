SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[FA_CalcCurrentDepreciationSummary]  (  @ASSETINDEX int,   @BOOKINDX int,   @dep_as_of_date datetime,  @max_date datetime,  @use_original_values tinyint   )  RETURNS numeric(19,5)  AS BEGIN   declare  @depreciation numeric(19,5)  declare @depdate table   (ASSETINDEX int,   AMOUNT numeric(19,5),   DEPRTODATE datetime)    if @dep_as_of_date=@max_date   begin  select @depreciation=(select CURRUNDEPRAMT from FA00200 where ASSETINDEX=@ASSETINDEX and BOOKINDX=@BOOKINDX)  RETURN(@depreciation)   end   if @use_original_values=1  begin  insert into @depdate   select a.ASSETINDEX,a.AMOUNT,a.DEPRTODATE from FA00902 a, FA00100 b where a.ASSETINDEX=@ASSETINDEX and a.ASSETINDEX=b.ASSETINDEX and   a.TRANSACCTTYPE=2 and (a.SOURCDOC='FADEP-O' or a.SOURCDOC='FADEP')  and   a.BOOKINDX=@BOOKINDX and a.DEPRTODATE<=@dep_as_of_date and   a.DEPRTODATE <= (select top 1(c.DEPRTODATE) from FA00902 c, FA00100 d where c.TRANSACCTTYPE=2 and c.FA_Reset_User_ID<>'' and (c.SOURCDOC='FADEP-O' or c.SOURCDOC='FADEP')  and   c.BOOKINDX=@BOOKINDX and c.DEPRTODATE<=@dep_as_of_date order by c.DEPRTODATE desc) group by a.ASSETINDEX, a.BOOKINDX,a.AMOUNT,a.DEPRTODATE   select @depreciation = (select isnull(SUM(d1.AMOUNT) ,0.0)   from @depdate as d1   left outer join @depdate as d2 on d1.ASSETINDEX=d2.ASSETINDEX   and d1.DEPRTODATE<d2.DEPRTODATE   where d2.DEPRTODATE is null)   end  else  begin  insert into @depdate   select a.ASSETINDEX,a.AMOUNT,a.DEPRTODATE from FA00902 a, FA00100 b where a.ASSETINDEX=@ASSETINDEX and a.ASSETINDEX=b.ASSETINDEX and   a.TRANSACCTTYPE=2 and a.FA_Reset_User_ID=''  and   a.BOOKINDX=@BOOKINDX and a.DEPRTODATE<=@dep_as_of_date and   a.DEPRTODATE <= (select top 1(c.DEPRTODATE) from FA00902 c, FA00100 d where c.TRANSACCTTYPE=2 and c.FA_Reset_User_ID=''  and   c.BOOKINDX=@BOOKINDX and c.DEPRTODATE<=@dep_as_of_date order by c.DEPRTODATE desc) group by a.ASSETINDEX, a.BOOKINDX,a.AMOUNT,a.DEPRTODATE   select @depreciation = (select isnull(SUM(d1.AMOUNT) ,0.0)   from @depdate as d1   left outer join @depdate as d2 on d1.ASSETINDEX=d2.ASSETINDEX   and d1.DEPRTODATE<d2.DEPRTODATE   where d2.DEPRTODATE is null)  end   RETURN(@depreciation)  END   
GO
GRANT EXECUTE ON  [dbo].[FA_CalcCurrentDepreciationSummary] TO [DYNGRP]
GO
