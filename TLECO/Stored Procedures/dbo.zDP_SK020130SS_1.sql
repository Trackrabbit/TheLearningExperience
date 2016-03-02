SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SK020130SS_1] (@Query_Name char(31)) AS  set nocount on SELECT TOP 1  Query_Index, Query_Name, DEX_ROW_ID FROM .SK020130 WHERE Query_Name = @Query_Name ORDER BY Query_Name ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SK020130SS_1] TO [DYNGRP]
GO
