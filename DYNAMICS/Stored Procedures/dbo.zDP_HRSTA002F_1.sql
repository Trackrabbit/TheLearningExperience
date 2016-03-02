SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRSTA002F_1] (@BusObjKey_RS char(201), @Attachment_ID_RS char(37), @CREATDDT_RS datetime, @CREATETIME_RS datetime, @BusObjKey_RE char(201), @Attachment_ID_RE char(37), @CREATDDT_RE datetime, @CREATETIME_RE datetime) AS  set nocount on IF @BusObjKey_RS IS NULL BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, AttachmentStatus, CREATDDT, CREATETIME, CRUSRID, DEX_ROW_ID FROM .HRSTA002 ORDER BY BusObjKey ASC, Attachment_ID ASC, CREATDDT ASC, CREATETIME ASC END ELSE IF @BusObjKey_RS = @BusObjKey_RE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, AttachmentStatus, CREATDDT, CREATETIME, CRUSRID, DEX_ROW_ID FROM .HRSTA002 WHERE BusObjKey = @BusObjKey_RS AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE AND CREATDDT BETWEEN @CREATDDT_RS AND @CREATDDT_RE AND CREATETIME BETWEEN @CREATETIME_RS AND @CREATETIME_RE ORDER BY BusObjKey ASC, Attachment_ID ASC, CREATDDT ASC, CREATETIME ASC END ELSE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, AttachmentStatus, CREATDDT, CREATETIME, CRUSRID, DEX_ROW_ID FROM .HRSTA002 WHERE BusObjKey BETWEEN @BusObjKey_RS AND @BusObjKey_RE AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE AND CREATDDT BETWEEN @CREATDDT_RS AND @CREATDDT_RE AND CREATETIME BETWEEN @CREATETIME_RS AND @CREATETIME_RE ORDER BY BusObjKey ASC, Attachment_ID ASC, CREATDDT ASC, CREATETIME ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRSTA002F_1] TO [DYNGRP]
GO
