SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_old_Purge] AS declare @cStatement varchar(255) declare G_cursor CURSOR for select 'drop table ' + name from sysobjects   where (type = 'U')  and (name Like 'old_SVC%') set nocount on OPEN G_cursor FETCH NEXT FROM G_cursor INTO @cStatement  WHILE (@@FETCH_STATUS <> -1) begin EXEC (@cStatement)  FETCH NEXT FROM G_cursor INTO @cStatement  end DEALLOCATE G_cursor    
GO
GRANT EXECUTE ON  [dbo].[SVC_old_Purge] TO [DYNGRP]
GO
