SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ncAddReportRecord] 	@I_sReportTableName char(64), 	@I_sMessageText char(255) as declare @sCmdText varchar(1500) select @sCmdText = 'insert into '+rtrim(@I_sReportTableName)+' select isnull(max(INDXLONG),0)+1, '''', ''' 	+replace(rtrim(@I_sMessageText),'''','''''')+''' from '+rtrim(@I_sReportTableName) exec(@sCmdText)  
GO
GRANT EXECUTE ON  [dbo].[ncAddReportRecord] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[ncAddReportRecord] TO [public]
GO
