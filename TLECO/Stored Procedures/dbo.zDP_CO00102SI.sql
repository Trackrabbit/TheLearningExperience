SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_CO00102SI] (@BusObjKey char(201), @Attachment_ID char(37), @CRUSRID char(15), @CREATDDT datetime, @CREATETIME datetime, @HISTRX tinyint, @AllowAttachmentFlow smallint, @DELETE1 tinyint, @AllowAttachmentEmail smallint, @AttachmentOrigin smallint, @WorkflowStepInstanceID char(37), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .CO00102 (BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, HISTRX, AllowAttachmentFlow, DELETE1, AllowAttachmentEmail, AttachmentOrigin, WorkflowStepInstanceID) VALUES ( @BusObjKey, @Attachment_ID, @CRUSRID, @CREATDDT, @CREATETIME, @HISTRX, @AllowAttachmentFlow, @DELETE1, @AllowAttachmentEmail, @AttachmentOrigin, @WorkflowStepInstanceID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00102SI] TO [DYNGRP]
GO
