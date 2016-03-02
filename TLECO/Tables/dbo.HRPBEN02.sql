CREATE TABLE [dbo].[HRPBEN02]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IINDEX_I] [smallint] NOT NULL,
[RELATIONSHIP] [smallint] NOT NULL,
[COMMENTSTR20] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRIMARY_I] [tinyint] NOT NULL,
[FFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFICIARYPERCENT_I] [smallint] NOT NULL,
[MI_I] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LLASTNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPSSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GENDER] [smallint] NOT NULL,
[DATEOFBIRTH_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRPBEN02] ADD CONSTRAINT [CK__HRPBEN02__DATEOF__4164E9CB] CHECK ((datepart(hour,[DATEOFBIRTH_I])=(0) AND datepart(minute,[DATEOFBIRTH_I])=(0) AND datepart(second,[DATEOFBIRTH_I])=(0) AND datepart(millisecond,[DATEOFBIRTH_I])=(0)))
GO
ALTER TABLE [dbo].[HRPBEN02] ADD CONSTRAINT [PKHRPBEN02] PRIMARY KEY CLUSTERED  ([EMPID_I], [BENEFIT], [IINDEX_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HRPBEN02] ON [dbo].[HRPBEN02] ([EMPID_I], [BENEFIT], [PRIMARY_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN02].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN02].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN02].[IINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN02].[RELATIONSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN02].[COMMENTSTR20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN02].[PRIMARY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN02].[FFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN02].[BENEFICIARYPERCENT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN02].[MI_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN02].[LLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN02].[DEPSSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN02].[GENDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPBEN02].[DATEOFBIRTH_I]'
GO
GRANT SELECT ON  [dbo].[HRPBEN02] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRPBEN02] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRPBEN02] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRPBEN02] TO [DYNGRP]
GO
