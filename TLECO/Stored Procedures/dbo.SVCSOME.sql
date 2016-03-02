SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVCSOME] AS declare @cStatement varchar(255)  declare P_cursor CURSOR for select 'drop procedure ' + name + ' to DYNGRP' from sysobjects   where (type = 'P') and (name Like 'SVC%' or name Like 'zDP_SVC%') set nocount on OPEN P_cursor FETCH NEXT FROM P_cursor INTO @cStatement  WHILE (@@FETCH_STATUS <> -1) begin  EXEC (@cStatement)  FETCH NEXT FROM P_cursor INTO @cStatement  end DEALLOCATE P_cursor  declare TR_cursor CURSOR for select 'drop trigger ' + name + ' to DYNGRP' from sysobjects   where (type = 'TR') and (name Like 'SVC%' or name Like 'zDP_SVC%') set nocount on OPEN TR_cursor FETCH NEXT FROM TR_cursor INTO @cStatement  WHILE (@@FETCH_STATUS <> -1) begin  EXEC (@cStatement)  FETCH NEXT FROM TR_cursor INTO @cStatement  end DEALLOCATE TR_cursor  declare V_cursor CURSOR for select 'drop view ' + name + ' to DYNGRP' from sysobjects   where (type = 'V') and (name Like 'SVC%' or name Like 'zDP_SVC%') set nocount on OPEN V_cursor FETCH NEXT FROM V_cursor INTO @cStatement  WHILE (@@FETCH_STATUS <> -1) begin  EXEC (@cStatement)  FETCH NEXT FROM V_cursor INTO @cStatement  end DEALLOCATE V_cursor    
GO
GRANT EXECUTE ON  [dbo].[SVCSOME] TO [DYNGRP]
GO
