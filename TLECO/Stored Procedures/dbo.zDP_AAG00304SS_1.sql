SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00304SS_1] (@USERID char(15), @aaWorkbookName char(65)) AS  set nocount on SELECT TOP 1  USERID, aaWorkbookName, aaHdrIDCol, DEX_ROW_ID FROM .AAG00304 WHERE USERID = @USERID AND aaWorkbookName = @aaWorkbookName ORDER BY USERID ASC, aaWorkbookName ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00304SS_1] TO [DYNGRP]
GO
