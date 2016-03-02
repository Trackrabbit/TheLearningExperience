SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00101SI] (@Attachment_ID char(37), @fileName char(255), @Attachment_Description char(255), @CRUSRID char(15), @CREATDDT datetime, @CREATETIME datetime, @ODESCTN char(51), @View_Attachment tinyint, @Internal_Attachment tinyint, @Deletable tinyint, @Replaced_Attachment char(37), @AttachmentImage tinyint, @AttachmentProductDetails tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CO00101 (Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN, View_Attachment, Internal_Attachment, Deletable, Replaced_Attachment, AttachmentImage, AttachmentProductDetails) VALUES ( @Attachment_ID, @fileName, @Attachment_Description, @CRUSRID, @CREATDDT, @CREATETIME, @ODESCTN, @View_Attachment, @Internal_Attachment, @Deletable, @Replaced_Attachment, @AttachmentImage, @AttachmentProductDetails) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00101SI] TO [DYNGRP]
GO
