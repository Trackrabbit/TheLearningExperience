SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRREF003N_1] (@BS int, @BusObjKey char(201), @Attachment_ID char(37), @BusObjKey_RS char(201), @Attachment_ID_RS char(37), @BusObjKey_RE char(201), @Attachment_ID_RE char(37)) AS  set nocount on IF @BusObjKey_RS IS NULL BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, DELETE1, DEX_ROW_ID FROM .HRREF003 WHERE ( BusObjKey = @BusObjKey AND Attachment_ID > @Attachment_ID OR BusObjKey > @BusObjKey ) ORDER BY BusObjKey ASC, Attachment_ID ASC END ELSE IF @BusObjKey_RS = @BusObjKey_RE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, DELETE1, DEX_ROW_ID FROM .HRREF003 WHERE BusObjKey = @BusObjKey_RS AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE AND ( BusObjKey = @BusObjKey AND Attachment_ID > @Attachment_ID OR BusObjKey > @BusObjKey ) ORDER BY BusObjKey ASC, Attachment_ID ASC END ELSE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, DELETE1, DEX_ROW_ID FROM .HRREF003 WHERE BusObjKey BETWEEN @BusObjKey_RS AND @BusObjKey_RE AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE AND ( BusObjKey = @BusObjKey AND Attachment_ID > @Attachment_ID OR BusObjKey > @BusObjKey ) ORDER BY BusObjKey ASC, Attachment_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRREF003N_1] TO [DYNGRP]
GO
