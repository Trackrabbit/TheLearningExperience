SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[ivGetCurrentCumulativeATP]    @UserDate datetime,  @OSName varchar(31),  @CurrentCumulativeATP decimal(17,5) Output,  @UserDateExists tinyint Output AS  DECLARE @sql_statement as varchar(8000),  @ConvertedDate as varchar(10)  set @ConvertedDate= ltrim(str(datepart(month,@UserDate))) + '/'  + ltrim(str(datepart(day,@UserDate))) + '/'   + ltrim(str(datepart(year,@UserDate)))  select @sql_statement = '' select @sql_statement = @sql_statement + 'select max(CUMULATIVEATP) as CurrentCumulativeATP ' select @sql_statement = @sql_statement + 'into ##temp from ' + @OSName + ' where PRMDATE = ''' + @ConvertedDate + '''' exec (@sql_statement)  select @CurrentCumulativeATP = isnull(CurrentCumulativeATP, 0) from ##temp  if (select count(##temp.CurrentCumulativeATP)from ##temp) > 0   set @UserDateExists = 1 else  set @ConvertedDate = 0  drop table ##temp    
GO
GRANT EXECUTE ON  [dbo].[ivGetCurrentCumulativeATP] TO [DYNGRP]
GO
