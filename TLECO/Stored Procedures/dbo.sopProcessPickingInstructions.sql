SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sopProcessPickingInstructions]   @ProcessOption   tinyint,  @OSName varchar(31)  AS  DECLARE @sql_statement as varchar(8000)  if @ProcessOption = 0   begin   select @sql_statement = ''  select @sql_statement = @sql_statement + 'insert into SOP60200 select a.INSTRUCTIONID, a.CUSTNMBR, a.ADRSCODE, '  select @sql_statement = @sql_statement + 'a.ITEMNMBR, DEX_ROW_ID from '  select @sql_statement = @sql_statement + @OSName + ' a where a.Check_Mark_2 = 1 and a.SEQNUMBR = 0'   end else   begin  select @sql_statement = ''  select @sql_statement = @sql_statement + 'delete from SOP60200 where DEX_ROW_ID in (select a.DEX_ROW_ID from '  select @sql_statement = @sql_statement + 'SOP60200 a, ' + @OSName + ' b where a.INSTRUCTIONID = b.INSTRUCTIONID '  select @sql_statement = @sql_statement + 'and a.CUSTNMBR = b.CUSTNMBR and a.ADRSCODE = b.ADRSCODE and '  select @sql_statement = @sql_statement + 'a.ITEMNMBR = b.ITEMNMBR and b.Check_Mark_2 = 1)'   end  exec (@sql_statement)    
GO
GRANT EXECUTE ON  [dbo].[sopProcessPickingInstructions] TO [DYNGRP]
GO
