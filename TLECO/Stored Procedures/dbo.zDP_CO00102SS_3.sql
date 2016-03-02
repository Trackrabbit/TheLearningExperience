SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_CO00102SS_3] (@BusObjKey char(201), @DELETE1 tinyint, @AttachmentOrigin smallint, @Attachment_ID char(37)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, HISTRX, AllowAttachmentFlow, DELETE1, AllowAttachmentEmail, AttachmentOrigin, WorkflowStepInstanceID, DEX_ROW_ID FROM .CO00102 WHERE BusObjKey = @BusObjKey AND DELETE1 = @DELETE1 AND AttachmentOrigin = @AttachmentOrigin AND Attachment_ID = @Attachment_ID ORDER BY BusObjKey ASC, DELETE1 ASC, AttachmentOrigin ASC, Attachment_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00102SS_3] TO [DYNGRP]
GO
