SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DW010013N_5] (@BS int, @DWGSIZE_I char(3), @DEX_ROW_ID int, @DWGSIZE_I_RS char(3), @DWGSIZE_I_RE char(3)) AS  set nocount on IF @DWGSIZE_I_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, STATUSLINE_I, CREATDDT, DWGSIZE_I, DRAWINGTYPE_I, SUPERVISOR2_I, USERID, CHANGEDATE_I, CHANGETIME_I, MFGNOTEINDEX_I, DEX_ROW_ID FROM .DW010013 WHERE ( DWGSIZE_I = @DWGSIZE_I AND DEX_ROW_ID > @DEX_ROW_ID OR DWGSIZE_I > @DWGSIZE_I ) ORDER BY DWGSIZE_I ASC, DEX_ROW_ID ASC END ELSE IF @DWGSIZE_I_RS = @DWGSIZE_I_RE BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, STATUSLINE_I, CREATDDT, DWGSIZE_I, DRAWINGTYPE_I, SUPERVISOR2_I, USERID, CHANGEDATE_I, CHANGETIME_I, MFGNOTEINDEX_I, DEX_ROW_ID FROM .DW010013 WHERE DWGSIZE_I = @DWGSIZE_I_RS AND ( DWGSIZE_I = @DWGSIZE_I AND DEX_ROW_ID > @DEX_ROW_ID OR DWGSIZE_I > @DWGSIZE_I ) ORDER BY DWGSIZE_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, STATUSLINE_I, CREATDDT, DWGSIZE_I, DRAWINGTYPE_I, SUPERVISOR2_I, USERID, CHANGEDATE_I, CHANGETIME_I, MFGNOTEINDEX_I, DEX_ROW_ID FROM .DW010013 WHERE DWGSIZE_I BETWEEN @DWGSIZE_I_RS AND @DWGSIZE_I_RE AND ( DWGSIZE_I = @DWGSIZE_I AND DEX_ROW_ID > @DEX_ROW_ID OR DWGSIZE_I > @DWGSIZE_I ) ORDER BY DWGSIZE_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DW010013N_5] TO [DYNGRP]
GO
