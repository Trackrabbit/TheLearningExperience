CREATE TABLE [dbo].[MS273528]
(
[MSO_BookKey_Globals] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_SaleKey_Globals] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_SwipeKey_Globals] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT3] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT4] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT5] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Disable_TRIGGERS] [tinyint] NOT NULL,
[MSO_SendEMailAfterTracki] [tinyint] NOT NULL,
[NDS_AuthMode] [smallint] NOT NULL,
[NDS_SMTPServer] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_UserName] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Password_PABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_TRKEML_FileLoc] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_EmailReceipt] [tinyint] NOT NULL,
[NDS_EmailReceiptLoc] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_DBUser] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_DBPassword_PABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_DBName] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_DBServer] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ServerPort] [int] NOT NULL,
[NDS_DisableSaveCCACH] [tinyint] NOT NULL,
[DisableSalesBatchWarning] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273528] ADD CONSTRAINT [PKMS273528] PRIMARY KEY NONCLUSTERED  ([MSO_BookKey_Globals], [MSO_SaleKey_Globals], [MSO_SwipeKey_Globals]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[MSO_BookKey_Globals]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[MSO_SaleKey_Globals]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[MSO_SwipeKey_Globals]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[MSO_COMMENT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[MSO_COMMENT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[MSO_COMMENT3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[MSO_COMMENT4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[MSO_COMMENT5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273528].[MSO_Disable_TRIGGERS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273528].[MSO_SendEMailAfterTracki]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273528].[NDS_AuthMode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[NDS_SMTPServer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[NDS_UserName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[NDS_Password_PABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[NDS_TRKEML_FileLoc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273528].[NDS_EmailReceipt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[NDS_EmailReceiptLoc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[NDS_DBUser]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[NDS_DBPassword_PABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[NDS_DBName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273528].[NDS_DBServer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273528].[MSO_ServerPort]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273528].[NDS_DisableSaveCCACH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273528].[DisableSalesBatchWarning]'
GO
GRANT SELECT ON  [dbo].[MS273528] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273528] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273528] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273528] TO [DYNGRP]
GO
