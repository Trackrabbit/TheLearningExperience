SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DW010013L_2] (@SUPERVISOR2_I_RS char(101), @SUPERVISOR2_I_RE char(101)) AS  set nocount on IF @SUPERVISOR2_I_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, STATUSLINE_I, CREATDDT, DWGSIZE_I, DRAWINGTYPE_I, SUPERVISOR2_I, USERID, CHANGEDATE_I, CHANGETIME_I, MFGNOTEINDEX_I, DEX_ROW_ID FROM .DW010013 ORDER BY SUPERVISOR2_I DESC, DEX_ROW_ID DESC END ELSE IF @SUPERVISOR2_I_RS = @SUPERVISOR2_I_RE BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, STATUSLINE_I, CREATDDT, DWGSIZE_I, DRAWINGTYPE_I, SUPERVISOR2_I, USERID, CHANGEDATE_I, CHANGETIME_I, MFGNOTEINDEX_I, DEX_ROW_ID FROM .DW010013 WHERE SUPERVISOR2_I = @SUPERVISOR2_I_RS ORDER BY SUPERVISOR2_I DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, STATUSLINE_I, CREATDDT, DWGSIZE_I, DRAWINGTYPE_I, SUPERVISOR2_I, USERID, CHANGEDATE_I, CHANGETIME_I, MFGNOTEINDEX_I, DEX_ROW_ID FROM .DW010013 WHERE SUPERVISOR2_I BETWEEN @SUPERVISOR2_I_RS AND @SUPERVISOR2_I_RE ORDER BY SUPERVISOR2_I DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DW010013L_2] TO [DYNGRP]
GO
