SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sopFillItemOptionJournalTemp]   @StartLocationCode  varchar(10),  @EndLocationCode  varchar(10),  @StartItemNumber varchar(31),  @EndItemNumber varchar(31),  @StartClassID varchar(15),  @EndClassID varchar(15),  @StartPeriod smallint,  @EndPeriod smallint,  @StartClassDescription varchar(31),  @EndClassDescription varchar(31),   @OSName varchar(31) AS  DECLARE @sql_statement as varchar(8000)  select @sql_statement = '' select @sql_statement = @sql_statement + 'delete from ' + @OSName  exec (@sql_statement)  select @sql_statement = '' select @sql_statement = @sql_statement + 'insert into ' + @OSName + ' select a.LOCNCODE, a.ITEMNMBR, b.ITEMDESC, ' select @sql_statement = @sql_statement + 'b.ITMGEDSC, b.ITMCLSCD, a.PICKTICKETITEMOPT, c.PICKTICKETSITEOPT, ' select @sql_statement = @sql_statement + 'c.BINBREAK from IV00102 a, IV00101 b, IV40700 c where ' select @sql_statement = @sql_statement + 'a.LOCNCODE between ''' + @StartLocationCode + ''' and ''' + @EndLocationCode + ''' and ' select @sql_statement = @sql_statement + 'a.ITEMNMBR between ''' + @StartItemNumber + ''' and ''' + @EndItemNumber + ''' and ' select @sql_statement = @sql_statement + 'b.ITMCLSCD between ''' + @StartClassID + ''' and ''' + @EndClassID + ''' and ' select @sql_statement = @sql_statement + 'a.PICKTICKETITEMOPT between ''' + str(@StartPeriod) + ''' and ''' + str(@EndPeriod) + ''' and ' select @sql_statement = @sql_statement + 'b.ITMGEDSC between ''' + @StartClassDescription + ''' and ''' + @EndClassDescription + ''' and ' select @sql_statement = @sql_statement + 'a.RCRDTYPE = 2 and b.ITEMNMBR = a.ITEMNMBR and c.LOCNCODE = a.LOCNCODE ' select @sql_statement = @sql_statement + 'order by a.LOCNCODE, a.ITEMNMBR'  exec (@sql_statement)    
GO
GRANT EXECUTE ON  [dbo].[sopFillItemOptionJournalTemp] TO [DYNGRP]
GO