SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SK020130SS_2] (@Query_Index smallint) AS  set nocount on SELECT TOP 1  Query_Index, Query_Name, DEX_ROW_ID FROM .SK020130 WHERE Query_Index = @Query_Index ORDER BY Query_Index ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SK020130SS_2] TO [DYNGRP]
GO
