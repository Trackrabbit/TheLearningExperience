SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DW010013L_1] (@ITEMNMBR_RS char(31), @ITEMNMBR_RE char(31)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, STATUSLINE_I, CREATDDT, DWGSIZE_I, DRAWINGTYPE_I, SUPERVISOR2_I, USERID, CHANGEDATE_I, CHANGETIME_I, MFGNOTEINDEX_I, DEX_ROW_ID FROM .DW010013 ORDER BY ITEMNMBR DESC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, STATUSLINE_I, CREATDDT, DWGSIZE_I, DRAWINGTYPE_I, SUPERVISOR2_I, USERID, CHANGEDATE_I, CHANGETIME_I, MFGNOTEINDEX_I, DEX_ROW_ID FROM .DW010013 WHERE ITEMNMBR = @ITEMNMBR_RS ORDER BY ITEMNMBR DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, STATUSLINE_I, CREATDDT, DWGSIZE_I, DRAWINGTYPE_I, SUPERVISOR2_I, USERID, CHANGEDATE_I, CHANGETIME_I, MFGNOTEINDEX_I, DEX_ROW_ID FROM .DW010013 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY ITEMNMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DW010013L_1] TO [DYNGRP]
GO