SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_CO00102L_2] (@Attachment_ID_RS char(37), @Attachment_ID_RE char(37)) AS /* 14.00.0084.000 */ set nocount on IF @Attachment_ID_RS IS NULL BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, HISTRX, AllowAttachmentFlow, DELETE1, AllowAttachmentEmail, AttachmentOrigin, WorkflowStepInstanceID, DEX_ROW_ID FROM .CO00102 ORDER BY Attachment_ID DESC, DEX_ROW_ID DESC END ELSE IF @Attachment_ID_RS = @Attachment_ID_RE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, HISTRX, AllowAttachmentFlow, DELETE1, AllowAttachmentEmail, AttachmentOrigin, WorkflowStepInstanceID, DEX_ROW_ID FROM .CO00102 WHERE Attachment_ID = @Attachment_ID_RS ORDER BY Attachment_ID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, HISTRX, AllowAttachmentFlow, DELETE1, AllowAttachmentEmail, AttachmentOrigin, WorkflowStepInstanceID, DEX_ROW_ID FROM .CO00102 WHERE Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE ORDER BY Attachment_ID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00102L_2] TO [DYNGRP]
GO
