SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_CO00102N_3] (@BS int, @BusObjKey char(201), @DELETE1 tinyint, @AttachmentOrigin smallint, @Attachment_ID char(37), @DEX_ROW_ID int, @BusObjKey_RS char(201), @DELETE1_RS tinyint, @AttachmentOrigin_RS smallint, @Attachment_ID_RS char(37), @BusObjKey_RE char(201), @DELETE1_RE tinyint, @AttachmentOrigin_RE smallint, @Attachment_ID_RE char(37)) AS /* 14.00.0084.000 */ set nocount on IF @BusObjKey_RS IS NULL BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, HISTRX, AllowAttachmentFlow, DELETE1, AllowAttachmentEmail, AttachmentOrigin, WorkflowStepInstanceID, DEX_ROW_ID FROM .CO00102 WHERE ( BusObjKey = @BusObjKey AND DELETE1 = @DELETE1 AND AttachmentOrigin = @AttachmentOrigin AND Attachment_ID = @Attachment_ID AND DEX_ROW_ID > @DEX_ROW_ID OR BusObjKey = @BusObjKey AND DELETE1 = @DELETE1 AND AttachmentOrigin = @AttachmentOrigin AND Attachment_ID > @Attachment_ID OR BusObjKey = @BusObjKey AND DELETE1 = @DELETE1 AND AttachmentOrigin > @AttachmentOrigin OR BusObjKey = @BusObjKey AND DELETE1 > @DELETE1 OR BusObjKey > @BusObjKey ) ORDER BY BusObjKey ASC, DELETE1 ASC, AttachmentOrigin ASC, Attachment_ID ASC, DEX_ROW_ID ASC END ELSE IF @BusObjKey_RS = @BusObjKey_RE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, HISTRX, AllowAttachmentFlow, DELETE1, AllowAttachmentEmail, AttachmentOrigin, WorkflowStepInstanceID, DEX_ROW_ID FROM .CO00102 WHERE BusObjKey = @BusObjKey_RS AND DELETE1 BETWEEN @DELETE1_RS AND @DELETE1_RE AND AttachmentOrigin BETWEEN @AttachmentOrigin_RS AND @AttachmentOrigin_RE AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE AND ( BusObjKey = @BusObjKey AND DELETE1 = @DELETE1 AND AttachmentOrigin = @AttachmentOrigin AND Attachment_ID = @Attachment_ID AND DEX_ROW_ID > @DEX_ROW_ID OR BusObjKey = @BusObjKey AND DELETE1 = @DELETE1 AND AttachmentOrigin = @AttachmentOrigin AND Attachment_ID > @Attachment_ID OR BusObjKey = @BusObjKey AND DELETE1 = @DELETE1 AND AttachmentOrigin > @AttachmentOrigin OR BusObjKey = @BusObjKey AND DELETE1 > @DELETE1 OR BusObjKey > @BusObjKey ) ORDER BY BusObjKey ASC, DELETE1 ASC, AttachmentOrigin ASC, Attachment_ID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, HISTRX, AllowAttachmentFlow, DELETE1, AllowAttachmentEmail, AttachmentOrigin, WorkflowStepInstanceID, DEX_ROW_ID FROM .CO00102 WHERE BusObjKey BETWEEN @BusObjKey_RS AND @BusObjKey_RE AND DELETE1 BETWEEN @DELETE1_RS AND @DELETE1_RE AND AttachmentOrigin BETWEEN @AttachmentOrigin_RS AND @AttachmentOrigin_RE AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE AND ( BusObjKey = @BusObjKey AND DELETE1 = @DELETE1 AND AttachmentOrigin = @AttachmentOrigin AND Attachment_ID = @Attachment_ID AND DEX_ROW_ID > @DEX_ROW_ID OR BusObjKey = @BusObjKey AND DELETE1 = @DELETE1 AND AttachmentOrigin = @AttachmentOrigin AND Attachment_ID > @Attachment_ID OR BusObjKey = @BusObjKey AND DELETE1 = @DELETE1 AND AttachmentOrigin > @AttachmentOrigin OR BusObjKey = @BusObjKey AND DELETE1 > @DELETE1 OR BusObjKey > @BusObjKey ) ORDER BY BusObjKey ASC, DELETE1 ASC, AttachmentOrigin ASC, Attachment_ID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00102N_3] TO [DYNGRP]
GO
