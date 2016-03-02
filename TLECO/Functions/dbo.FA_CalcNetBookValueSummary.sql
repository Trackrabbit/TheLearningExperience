SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[FA_CalcNetBookValueSummary]  (  @ASSETINDEX int,   @BOOKINDX int,   @dep_as_of_date datetime,  @max_date datetime,  @use_original_values tinyint   )  RETURNS numeric(19,5)  AS BEGIN   declare  @net_book_value numeric(19,5), @ltd_depreciation numeric(19,5)   if @dep_as_of_date=@max_date   begin  select @net_book_value=(select NETBOOKVALUE from FA00200 where ASSETINDEX=@ASSETINDEX and BOOKINDX=@BOOKINDX)  RETURN(@net_book_value)   end   if @use_original_values=1  begin  select @ltd_depreciation=isnull(SUM(a.AMOUNT),0) from FA00902 a, FA00100 b where a.ASSETINDEX=@ASSETINDEX and a.ASSETINDEX=b.ASSETINDEX and   a.TRANSACCTTYPE=2 and (a.SOURCDOC='FADEP-O' or a.SOURCDOC='FADEP')   and   a.BOOKINDX=@BOOKINDX and a.DEPRTODATE<=@dep_as_of_date   select @net_book_value = (select isnull((sum(c.COSTBASIS)-@ltd_depreciation),0) from FA00200 c,FA00100 d where   c.ASSETINDEX=@ASSETINDEX and c.ASSETINDEX=d.ASSETINDEX and c.BOOKINDX=@BOOKINDX )  end  else  begin  select @ltd_depreciation=isnull(SUM(a.AMOUNT),0) from FA00902 a, FA00100 b where a.ASSETINDEX=@ASSETINDEX and a.ASSETINDEX=b.ASSETINDEX and   a.TRANSACCTTYPE=2 and a.FA_Reset_User_ID=''  and   a.BOOKINDX=@BOOKINDX and a.DEPRTODATE<=@dep_as_of_date   select @net_book_value = (select isnull((sum(c.COSTBASIS)-@ltd_depreciation),0) from FA00200 c,FA00100 d where   c.ASSETINDEX=@ASSETINDEX and c.ASSETINDEX=d.ASSETINDEX and c.BOOKINDX=@BOOKINDX )  end   RETURN(@net_book_value)  END   
GO
GRANT EXECUTE ON  [dbo].[FA_CalcNetBookValueSummary] TO [DYNGRP]
GO
