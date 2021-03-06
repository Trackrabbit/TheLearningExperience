SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DW010013SS_4] (@STATUSLINE_I char(255)) AS  set nocount on SELECT TOP 1  ITEMNMBR, ITEMDESC, STATUSLINE_I, CREATDDT, DWGSIZE_I, DRAWINGTYPE_I, SUPERVISOR2_I, USERID, CHANGEDATE_I, CHANGETIME_I, MFGNOTEINDEX_I, DEX_ROW_ID FROM .DW010013 WHERE STATUSLINE_I = @STATUSLINE_I ORDER BY STATUSLINE_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DW010013SS_4] TO [DYNGRP]
GO
