SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DW010013N_3] (@BS int, @CREATDDT datetime, @DEX_ROW_ID int, @CREATDDT_RS datetime, @CREATDDT_RE datetime) AS  set nocount on IF @CREATDDT_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, STATUSLINE_I, CREATDDT, DWGSIZE_I, DRAWINGTYPE_I, SUPERVISOR2_I, USERID, CHANGEDATE_I, CHANGETIME_I, MFGNOTEINDEX_I, DEX_ROW_ID FROM .DW010013 WHERE ( CREATDDT = @CREATDDT AND DEX_ROW_ID > @DEX_ROW_ID OR CREATDDT > @CREATDDT ) ORDER BY CREATDDT ASC, DEX_ROW_ID ASC END ELSE IF @CREATDDT_RS = @CREATDDT_RE BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, STATUSLINE_I, CREATDDT, DWGSIZE_I, DRAWINGTYPE_I, SUPERVISOR2_I, USERID, CHANGEDATE_I, CHANGETIME_I, MFGNOTEINDEX_I, DEX_ROW_ID FROM .DW010013 WHERE CREATDDT = @CREATDDT_RS AND ( CREATDDT = @CREATDDT AND DEX_ROW_ID > @DEX_ROW_ID OR CREATDDT > @CREATDDT ) ORDER BY CREATDDT ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, STATUSLINE_I, CREATDDT, DWGSIZE_I, DRAWINGTYPE_I, SUPERVISOR2_I, USERID, CHANGEDATE_I, CHANGETIME_I, MFGNOTEINDEX_I, DEX_ROW_ID FROM .DW010013 WHERE CREATDDT BETWEEN @CREATDDT_RS AND @CREATDDT_RE AND ( CREATDDT = @CREATDDT AND DEX_ROW_ID > @DEX_ROW_ID OR CREATDDT > @CREATDDT ) ORDER BY CREATDDT ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DW010013N_3] TO [DYNGRP]
GO