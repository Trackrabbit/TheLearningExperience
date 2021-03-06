SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRREF003F_2] (@Attachment_ID_RS char(37), @Attachment_ID_RE char(37)) AS  set nocount on IF @Attachment_ID_RS IS NULL BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, DELETE1, DEX_ROW_ID FROM .HRREF003 ORDER BY Attachment_ID ASC, DEX_ROW_ID ASC END ELSE IF @Attachment_ID_RS = @Attachment_ID_RE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, DELETE1, DEX_ROW_ID FROM .HRREF003 WHERE Attachment_ID = @Attachment_ID_RS ORDER BY Attachment_ID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, DELETE1, DEX_ROW_ID FROM .HRREF003 WHERE Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE ORDER BY Attachment_ID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRREF003F_2] TO [DYNGRP]
GO
