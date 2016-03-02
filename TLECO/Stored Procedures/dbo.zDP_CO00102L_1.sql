SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_CO00102L_1] (@BusObjKey_RS char(201), @Attachment_ID_RS char(37), @BusObjKey_RE char(201), @Attachment_ID_RE char(37)) AS /* 14.00.0084.000 */ set nocount on IF @BusObjKey_RS IS NULL BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, HISTRX, AllowAttachmentFlow, DELETE1, AllowAttachmentEmail, AttachmentOrigin, WorkflowStepInstanceID, DEX_ROW_ID FROM .CO00102 ORDER BY BusObjKey DESC, Attachment_ID DESC END ELSE IF @BusObjKey_RS = @BusObjKey_RE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, HISTRX, AllowAttachmentFlow, DELETE1, AllowAttachmentEmail, AttachmentOrigin, WorkflowStepInstanceID, DEX_ROW_ID FROM .CO00102 WHERE BusObjKey = @BusObjKey_RS AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE ORDER BY BusObjKey DESC, Attachment_ID DESC END ELSE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, HISTRX, AllowAttachmentFlow, DELETE1, AllowAttachmentEmail, AttachmentOrigin, WorkflowStepInstanceID, DEX_ROW_ID FROM .CO00102 WHERE BusObjKey BETWEEN @BusObjKey_RS AND @BusObjKey_RE AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE ORDER BY BusObjKey DESC, Attachment_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00102L_1] TO [DYNGRP]
GO
