SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07230SS_1] (@ListDictID smallint, @ListID smallint, @ViewID int) AS  set nocount on SELECT TOP 1  ListDictID, ListID, ViewID, DEX_ROW_ID, FilterCriteria FROM .SY07230 WHERE ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID ORDER BY ListDictID ASC, ListID ASC, ViewID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07230SS_1] TO [DYNGRP]
GO
