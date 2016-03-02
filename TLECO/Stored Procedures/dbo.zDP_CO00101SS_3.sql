SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00101SS_3] (@AttachmentImage tinyint, @Attachment_ID char(37)) AS  set nocount on SELECT TOP 1  Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN, View_Attachment, Internal_Attachment, Deletable, Replaced_Attachment, AttachmentImage, AttachmentProductDetails, DEX_ROW_ID FROM .CO00101 WHERE AttachmentImage = @AttachmentImage AND Attachment_ID = @Attachment_ID ORDER BY AttachmentImage ASC, Attachment_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00101SS_3] TO [DYNGRP]
GO
