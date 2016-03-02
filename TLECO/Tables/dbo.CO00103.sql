CREATE TABLE [dbo].[CO00103]
(
[BusObjKey] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Attachment_ID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DefaultAttachType] [smallint] NOT NULL,
[AttachAttributeDefault] [smallint] NOT NULL,
[AttributeShortName_1] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AttributeShortName_2] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AttributeShortName_3] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AttributeShortName_4] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AttributeShortName_5] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AllowAttachmentsEmail] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO00103] ADD CONSTRAINT [PKCO00103] PRIMARY KEY CLUSTERED  ([BusObjKey], [Attachment_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00103].[BusObjKey]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00103].[Attachment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00103].[DefaultAttachType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00103].[AttachAttributeDefault]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00103].[AttributeShortName_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00103].[AttributeShortName_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00103].[AttributeShortName_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00103].[AttributeShortName_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00103].[AttributeShortName_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00103].[AllowAttachmentsEmail]'
GO
GRANT SELECT ON  [dbo].[CO00103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CO00103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CO00103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CO00103] TO [DYNGRP]
GO
