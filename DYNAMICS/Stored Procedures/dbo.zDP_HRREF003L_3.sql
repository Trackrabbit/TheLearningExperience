SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRREF003L_3] (@BusObjKey_RS char(201), @DELETE1_RS tinyint, @Attachment_ID_RS char(37), @BusObjKey_RE char(201), @DELETE1_RE tinyint, @Attachment_ID_RE char(37)) AS  set nocount on IF @BusObjKey_RS IS NULL BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, DELETE1, DEX_ROW_ID FROM .HRREF003 ORDER BY BusObjKey DESC, DELETE1 DESC, Attachment_ID DESC, DEX_ROW_ID DESC END ELSE IF @BusObjKey_RS = @BusObjKey_RE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, DELETE1, DEX_ROW_ID FROM .HRREF003 WHERE BusObjKey = @BusObjKey_RS AND DELETE1 BETWEEN @DELETE1_RS AND @DELETE1_RE AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE ORDER BY BusObjKey DESC, DELETE1 DESC, Attachment_ID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, DELETE1, DEX_ROW_ID FROM .HRREF003 WHERE BusObjKey BETWEEN @BusObjKey_RS AND @BusObjKey_RE AND DELETE1 BETWEEN @DELETE1_RS AND @DELETE1_RE AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE ORDER BY BusObjKey DESC, DELETE1 DESC, Attachment_ID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRREF003L_3] TO [DYNGRP]
GO
