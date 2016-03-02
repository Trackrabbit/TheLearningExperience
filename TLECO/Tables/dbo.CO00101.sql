CREATE TABLE [dbo].[CO00101]
(
[Attachment_ID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Attachment_Description] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CREATETIME] [datetime] NOT NULL,
[ODESCTN] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[View_Attachment] [tinyint] NOT NULL,
[Internal_Attachment] [tinyint] NOT NULL,
[Deletable] [tinyint] NOT NULL,
[Replaced_Attachment] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AttachmentImage] [tinyint] NOT NULL,
[AttachmentProductDetails] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO00101] ADD CONSTRAINT [CK__CO00101__CREATET__66812E17] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[CO00101] ADD CONSTRAINT [CK__CO00101__CREATDD__658D09DE] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[CO00101] ADD CONSTRAINT [PKCO00101] PRIMARY KEY CLUSTERED  ([Attachment_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CO00101] ON [dbo].[CO00101] ([AttachmentImage], [Attachment_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4CO00101] ON [dbo].[CO00101] ([AttachmentProductDetails], [Attachment_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CO00101] ON [dbo].[CO00101] ([CRUSRID], [CREATDDT], [CREATETIME], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00101].[Attachment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00101].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00101].[Attachment_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00101].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00101].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00101].[CREATETIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00101].[ODESCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00101].[View_Attachment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00101].[Internal_Attachment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00101].[Deletable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00101].[Replaced_Attachment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00101].[AttachmentImage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00101].[AttachmentProductDetails]'
GO
GRANT SELECT ON  [dbo].[CO00101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CO00101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CO00101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CO00101] TO [DYNGRP]
GO
