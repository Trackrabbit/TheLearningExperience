CREATE TABLE [dbo].[CO00104]
(
[BusObjKey] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Attachment_ID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AttachmentStatus] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CREATETIME] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO00104] ADD CONSTRAINT [CK__CO00104__CREATET__7755B73D] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[CO00104] ADD CONSTRAINT [CK__CO00104__CREATDD__76619304] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[CO00104] ADD CONSTRAINT [PKCO00104] PRIMARY KEY CLUSTERED  ([BusObjKey], [Attachment_ID], [CREATDDT], [CREATETIME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00104].[BusObjKey]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00104].[Attachment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00104].[AttachmentStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00104].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00104].[CREATETIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00104].[CRUSRID]'
GO
GRANT SELECT ON  [dbo].[CO00104] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CO00104] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CO00104] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CO00104] TO [DYNGRP]
GO
