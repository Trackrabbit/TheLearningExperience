SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[cmGetDepositTotal]  @sTableName char(15)  = NULL,  @O_CheckbookAmt numeric(19,5) = NULL  output  AS  declare @SQLString NVARCHAR(500),  @ParamDef NVARCHAR(500)  select @SQLString = '',  @ParamDef = ''  if @sTableName is NULL begin  return 21036 end  select @SQLString = '',   @ParamDef = '' select @SQLString = 'select @Total = ISNULL(sum(Checkbook_Amount),0) from ' + @sTableName + ' where MARKED = 1' select @ParamDef = '@Total numeric(19,5) OUTPUT'  EXECUTE sp_executesql   @SQLString,   @ParamDef,   @Total=@O_CheckbookAmt OUTPUT  return     
GO
GRANT EXECUTE ON  [dbo].[cmGetDepositTotal] TO [DYNGRP]
GO
