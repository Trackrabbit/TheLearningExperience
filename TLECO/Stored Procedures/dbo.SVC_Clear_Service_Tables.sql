SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create PROCEDURE [dbo].[SVC_Clear_Service_Tables] AS declare @cStatement varchar(255) declare Clear_cursor CURSOR for select 'truncate table ' + name from sysobjects  where (type = 'U' )  and (name Like 'SVC%' ) set nocount on OPEN Clear_cursor FETCH NEXT FROM Clear_cursor INTO @cStatement  WHILE (@@FETCH_STATUS <> -1) begin  EXEC (@cStatement)  FETCH NEXT FROM Clear_cursor INTO @cStatement  end DEALLOCATE Clear_cursor    
GO
GRANT EXECUTE ON  [dbo].[SVC_Clear_Service_Tables] TO [DYNGRP]
GO
