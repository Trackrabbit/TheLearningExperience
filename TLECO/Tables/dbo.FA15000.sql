CREATE TABLE [dbo].[FA15000]
(
[GLINTBTCHNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTED] [tinyint] NOT NULL,
[GLINTTRXDATE] [datetime] NOT NULL,
[GL_Interface_Comment] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GL_Intf_Begin_Period] [smallint] NOT NULL,
[GL_Interface_Begin_Year] [smallint] NOT NULL,
[GL_Interface_End_Period] [smallint] NOT NULL,
[GL_Interface_End_Year] [smallint] NOT NULL,
[SSRCEDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSRCDC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Asset_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Asset_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Asset_ID_Suffix] [smallint] NOT NULL,
[End_Asset_ID_Suffix] [smallint] NOT NULL,
[STTCLSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCLSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BOOKINDX] [int] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA15000] ADD CONSTRAINT [CK__FA15000__GLINTTR__07D70320] CHECK ((datepart(hour,[GLINTTRXDATE])=(0) AND datepart(minute,[GLINTTRXDATE])=(0) AND datepart(second,[GLINTTRXDATE])=(0) AND datepart(millisecond,[GLINTTRXDATE])=(0)))
GO
ALTER TABLE [dbo].[FA15000] ADD CONSTRAINT [PKFA15000] PRIMARY KEY CLUSTERED  ([GLINTBTCHNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA15000] ON [dbo].[FA15000] ([POSTED], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA15000].[GLINTBTCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA15000].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA15000].[GLINTTRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA15000].[GL_Interface_Comment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA15000].[GL_Intf_Begin_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA15000].[GL_Interface_Begin_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA15000].[GL_Interface_End_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA15000].[GL_Interface_End_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA15000].[SSRCEDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA15000].[ENDSRCDC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA15000].[Start_Asset_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA15000].[End_Asset_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA15000].[Start_Asset_ID_Suffix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA15000].[End_Asset_ID_Suffix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA15000].[STTCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA15000].[ENDCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA15000].[BOOKINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA15000].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA15000].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA15000].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA15000].[USERID]'
GO
GRANT SELECT ON  [dbo].[FA15000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA15000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA15000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA15000] TO [DYNGRP]
GO
