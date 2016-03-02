CREATE TABLE [dbo].[SY01200]
(
[Master_Type] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Master_ID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INET1] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INET2] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INET3] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INET4] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INET5] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INET6] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INET7] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INET8] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Messenger_Address] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__SY01200__DEX_ROW__7DDAF99F] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[INETINFO] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailToAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailCcAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailBccAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_SY01200U] ON [dbo].[SY01200] AFTER UPDATE AS set nocount on BEGIN  UPDATE dbo.SY01200 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.SY01200, inserted WHERE SY01200.Master_ID = inserted.Master_ID AND SY01200.ADRSCODE = inserted.ADRSCODE AND SY01200.Master_Type = inserted.Master_Type  END set nocount off   
GO
ALTER TABLE [dbo].[SY01200] ADD CONSTRAINT [PKSY01200] PRIMARY KEY NONCLUSTERED  ([Master_Type], [Master_ID], [ADRSCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY01200] ON [dbo].[SY01200] ([Messenger_Address], [Master_Type], [Master_ID], [ADRSCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01200].[Master_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01200].[Master_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01200].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01200].[INET1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01200].[INET2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01200].[INET3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01200].[INET4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01200].[INET5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01200].[INET6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01200].[INET7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01200].[INET8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01200].[Messenger_Address]'
GO
GRANT SELECT ON  [dbo].[SY01200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01200] TO [DYNGRP]
GO
