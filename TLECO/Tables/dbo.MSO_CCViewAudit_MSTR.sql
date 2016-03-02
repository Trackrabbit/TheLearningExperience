CREATE TABLE [dbo].[MSO_CCViewAudit_MSTR]
(
[MSO_CCViewAuditUser] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_AccessDate] [datetime] NOT NULL,
[MSO_AccessTime] [datetime] NOT NULL,
[MSO_CCViewAuditWindow] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardNumberPABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_TableName] [char] (49) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_StringKey1] [char] (73) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_StringKey2] [char] (73) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_IntKey1] [int] NOT NULL,
[MSO_IntKey2] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MSO_CCViewAudit_MSTR] ADD CONSTRAINT [CK__MSO_CCVie__MSO_A__68B6BCA8] CHECK ((datepart(day,[MSO_AccessTime])=(1) AND datepart(month,[MSO_AccessTime])=(1) AND datepart(year,[MSO_AccessTime])=(1900)))
GO
ALTER TABLE [dbo].[MSO_CCViewAudit_MSTR] ADD CONSTRAINT [CK__MSO_CCVie__MSO_A__67C2986F] CHECK ((datepart(hour,[MSO_AccessDate])=(0) AND datepart(minute,[MSO_AccessDate])=(0) AND datepart(second,[MSO_AccessDate])=(0) AND datepart(millisecond,[MSO_AccessDate])=(0)))
GO
ALTER TABLE [dbo].[MSO_CCViewAudit_MSTR] ADD CONSTRAINT [PKMSO_CCViewAudit_MSTR] PRIMARY KEY CLUSTERED  ([MSO_AccessDate], [MSO_AccessTime], [MSO_CCViewAuditUser], [MSO_TableName], [MSO_StringKey1], [MSO_StringKey2], [MSO_IntKey1], [MSO_IntKey2]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3MSO_CCViewAudit_MSTR] ON [dbo].[MSO_CCViewAudit_MSTR] ([CUSTNMBR], [MSO_AccessDate], [MSO_AccessTime], [MSO_CCViewAuditUser], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MSO_CCViewAudit_MSTR] ON [dbo].[MSO_CCViewAudit_MSTR] ([MSO_CCViewAuditUser], [MSO_AccessDate], [MSO_AccessTime], [CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4MSO_CCViewAudit_MSTR] ON [dbo].[MSO_CCViewAudit_MSTR] ([MSO_StringKey1], [MSO_StringKey2], [MSO_IntKey1], [MSO_IntKey2], [MSO_CCViewAuditUser], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_CCViewAudit_MSTR].[MSO_CCViewAuditUser]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MSO_CCViewAudit_MSTR].[MSO_AccessDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MSO_CCViewAudit_MSTR].[MSO_AccessTime]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_CCViewAudit_MSTR].[MSO_CCViewAuditWindow]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_CCViewAudit_MSTR].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_CCViewAudit_MSTR].[MSO_CardNumberPABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_CCViewAudit_MSTR].[MSO_TableName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_CCViewAudit_MSTR].[MSO_StringKey1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_CCViewAudit_MSTR].[MSO_StringKey2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MSO_CCViewAudit_MSTR].[MSO_IntKey1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MSO_CCViewAudit_MSTR].[MSO_IntKey2]'
GO
GRANT SELECT ON  [dbo].[MSO_CCViewAudit_MSTR] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MSO_CCViewAudit_MSTR] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MSO_CCViewAudit_MSTR] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MSO_CCViewAudit_MSTR] TO [DYNGRP]
GO
