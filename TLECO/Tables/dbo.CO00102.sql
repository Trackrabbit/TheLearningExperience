CREATE TABLE [dbo].[CO00102]
(
[BusObjKey] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Attachment_ID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CREATETIME] [datetime] NOT NULL,
[HISTRX] [tinyint] NOT NULL,
[AllowAttachmentFlow] [smallint] NOT NULL,
[DELETE1] [tinyint] NOT NULL,
[AllowAttachmentEmail] [smallint] NOT NULL,
[AttachmentOrigin] [smallint] NOT NULL,
[WorkflowStepInstanceID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO00102] ADD CONSTRAINT [CK__CO00102__CREATET__741824C5] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[CO00102] ADD CONSTRAINT [CK__CO00102__CREATDD__7324008C] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[CO00102] ADD CONSTRAINT [PKCO00102] PRIMARY KEY CLUSTERED  ([BusObjKey], [Attachment_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CO00102] ON [dbo].[CO00102] ([Attachment_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CO00102] ON [dbo].[CO00102] ([BusObjKey], [DELETE1], [AttachmentOrigin], [Attachment_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00102].[BusObjKey]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00102].[Attachment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00102].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00102].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00102].[CREATETIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00102].[HISTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00102].[AllowAttachmentFlow]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00102].[DELETE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00102].[AllowAttachmentEmail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00102].[AttachmentOrigin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00102].[WorkflowStepInstanceID]'
GO
GRANT SELECT ON  [dbo].[CO00102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CO00102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CO00102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CO00102] TO [DYNGRP]
GO
