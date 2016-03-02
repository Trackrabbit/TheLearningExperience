SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sopMarkUnmarkPickingInstructions]   @ProcessInd tinyint,  @OSName varchar(31) AS  DECLARE @sql_statement as varchar(8000)  set @sql_statement = '' set @sql_statement = 'update ' + @OSName + ' set Check_Mark_2 = '+ str(@ProcessInd) exec (@sql_statement)    
GO
GRANT EXECUTE ON  [dbo].[sopMarkUnmarkPickingInstructions] TO [DYNGRP]
GO
