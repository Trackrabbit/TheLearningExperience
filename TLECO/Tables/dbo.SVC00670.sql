CREATE TABLE [dbo].[SVC00670]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Contract_Version] [smallint] NOT NULL,
[CNTTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[STTDOCDT] [datetime] NOT NULL,
[ENDDOCDT] [datetime] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MKDTOPST] [tinyint] NOT NULL,
[POSTED] [tinyint] NOT NULL,
[HISTORY] [tinyint] NOT NULL,
[RENCNTTYP] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00670] ADD CONSTRAINT [CK__SVC00670__ENDDAT__6E372CAE] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00670] ADD CONSTRAINT [CK__SVC00670__ENDDOC__6F2B50E7] CHECK ((datepart(hour,[ENDDOCDT])=(0) AND datepart(minute,[ENDDOCDT])=(0) AND datepart(second,[ENDDOCDT])=(0) AND datepart(millisecond,[ENDDOCDT])=(0)))
GO
ALTER TABLE [dbo].[SVC00670] ADD CONSTRAINT [CK__SVC00670__STRTDA__701F7520] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00670] ADD CONSTRAINT [CK__SVC00670__STTDOC__71139959] CHECK ((datepart(hour,[STTDOCDT])=(0) AND datepart(minute,[STTDOCDT])=(0) AND datepart(second,[STTDOCDT])=(0) AND datepart(millisecond,[STTDOCDT])=(0)))
GO
ALTER TABLE [dbo].[SVC00670] ADD CONSTRAINT [PKSVC00670] PRIMARY KEY CLUSTERED  ([CONSTS], [CONTNBR], [SVC_Contract_Version]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00670] ON [dbo].[SVC00670] ([POSTED], [CONSTS], [CONTNBR], [SVC_Contract_Version]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00670].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00670].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00670].[SVC_Contract_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00670].[CNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00670].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00670].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00670].[STTDOCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00670].[ENDDOCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00670].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00670].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00670].[MKDTOPST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00670].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00670].[HISTORY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00670].[RENCNTTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00670].[USERID]'
GO
GRANT SELECT ON  [dbo].[SVC00670] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00670] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00670] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00670] TO [DYNGRP]
GO
