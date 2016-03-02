SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00101F_3] (@AttachmentImage_RS tinyint, @Attachment_ID_RS char(37), @AttachmentImage_RE tinyint, @Attachment_ID_RE char(37)) AS  set nocount on IF @AttachmentImage_RS IS NULL BEGIN SELECT TOP 25  Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN, View_Attachment, Internal_Attachment, Deletable, Replaced_Attachment, AttachmentImage, AttachmentProductDetails, DEX_ROW_ID FROM .CO00101 ORDER BY AttachmentImage ASC, Attachment_ID ASC END ELSE IF @AttachmentImage_RS = @AttachmentImage_RE BEGIN SELECT TOP 25  Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN, View_Attachment, Internal_Attachment, Deletable, Replaced_Attachment, AttachmentImage, AttachmentProductDetails, DEX_ROW_ID FROM .CO00101 WHERE AttachmentImage = @AttachmentImage_RS AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE ORDER BY AttachmentImage ASC, Attachment_ID ASC END ELSE BEGIN SELECT TOP 25  Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN, View_Attachment, Internal_Attachment, Deletable, Replaced_Attachment, AttachmentImage, AttachmentProductDetails, DEX_ROW_ID FROM .CO00101 WHERE AttachmentImage BETWEEN @AttachmentImage_RS AND @AttachmentImage_RE AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE ORDER BY AttachmentImage ASC, Attachment_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00101F_3] TO [DYNGRP]
GO
