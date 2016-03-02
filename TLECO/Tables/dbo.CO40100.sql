CREATE TABLE [dbo].[CO40100]
(
[SETUPKEY] [smallint] NOT NULL,
[Enable_Feature] [tinyint] NOT NULL,
[View_Attachment] [tinyint] NOT NULL,
[Internal_Attachment] [tinyint] NOT NULL,
[Allow_Removal] [tinyint] NOT NULL,
[Flow_From_Item] [tinyint] NOT NULL,
[Flow_From_Vendor] [tinyint] NOT NULL,
[Flow_From_Customer] [tinyint] NOT NULL,
[Scan_Location] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Delete_After_Attach] [tinyint] NOT NULL,
[EmailSetFileSize] [tinyint] NOT NULL,
[EmailMaxFileSize] [numeric] (19, 5) NOT NULL,
[AllowToDelete] [tinyint] NOT NULL,
[DeletePassword] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Attribute_1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Attribute_2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Attribute_3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Attribute_4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Attribute_5] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AttachAttributeDefault] [smallint] NOT NULL,
[CustomerAttachmentType] [smallint] NOT NULL,
[ItemAttachmentType] [smallint] NOT NULL,
[VendorAttachmentType] [smallint] NOT NULL,
[AllowAttachmentsEmail] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO40100] ADD CONSTRAINT [PKCO40100] PRIMARY KEY CLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[Enable_Feature]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[View_Attachment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[Internal_Attachment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[Allow_Removal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[Flow_From_Item]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[Flow_From_Vendor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[Flow_From_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO40100].[Scan_Location]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[Delete_After_Attach]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[EmailSetFileSize]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CO40100].[EmailMaxFileSize]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[AllowToDelete]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO40100].[DeletePassword]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO40100].[Attribute_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO40100].[Attribute_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO40100].[Attribute_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO40100].[Attribute_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO40100].[Attribute_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[AttachAttributeDefault]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[CustomerAttachmentType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[ItemAttachmentType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[VendorAttachmentType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO40100].[AllowAttachmentsEmail]'
GO
GRANT SELECT ON  [dbo].[CO40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CO40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CO40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CO40100] TO [DYNGRP]
GO
