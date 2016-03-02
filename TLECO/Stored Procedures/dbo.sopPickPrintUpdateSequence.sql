SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create  PROCEDURE [dbo].[sopPickPrintUpdateSequence] @OSName varchar(31), @UpdateForBulkPrint smallint AS  DECLARE @sql_statement as varchar(8000)   SET @sql_statement = ''  if @UpdateForBulkPrint = 1  SET @sql_statement = @sql_statement + 'update ' + @OSName + ' set SLTSQNUM = DEX_ROW_ID' else  SET @sql_statement = @sql_statement + 'update ' + @OSName + ' set SEQNUMBR = DEX_ROW_ID'  exec (@sql_statement)  set nocount on   
GO
GRANT EXECUTE ON  [dbo].[sopPickPrintUpdateSequence] TO [DYNGRP]
GO
