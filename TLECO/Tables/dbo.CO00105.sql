CREATE TABLE [dbo].[CO00105]
(
[BusObjKey] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDSCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Attachment_ID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CREATETIME] [datetime] NOT NULL,
[FileType] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Size] [int] NOT NULL,
[EmailAllowAttachments] [tinyint] NOT NULL,
[ORD] [int] NOT NULL,
[DELETE1] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO00105] ADD CONSTRAINT [CK__CO00105__CREATET__7B264821] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[CO00105] ADD CONSTRAINT [CK__CO00105__CREATDD__7A3223E8] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[CO00105] ADD CONSTRAINT [PKCO00105] PRIMARY KEY CLUSTERED  ([BusObjKey], [Attachment_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CO00105] ON [dbo].[CO00105] ([DOCNUMBR], [ORD], [STRTDSCR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00105].[BusObjKey]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00105].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00105].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00105].[STRTDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00105].[Attachment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00105].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00105].[CREATETIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00105].[FileType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00105].[Size]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00105].[EmailAllowAttachments]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00105].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00105].[DELETE1]'
GO
GRANT SELECT ON  [dbo].[CO00105] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CO00105] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CO00105] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CO00105] TO [DYNGRP]
GO
