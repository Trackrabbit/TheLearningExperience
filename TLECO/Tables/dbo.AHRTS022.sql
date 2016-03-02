CREATE TABLE [dbo].[AHRTS022]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISEQUENCENUMBER_I] [smallint] NOT NULL,
[TESTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[TESTSCORE_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHRTS022] ADD CONSTRAINT [CK__AHRTS022__CHANGE__523A7012] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHRTS022] ADD CONSTRAINT [CK__AHRTS022__EXPNDA__532E944B] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[AHRTS022] ADD CONSTRAINT [CK__AHRTS022__STRTDA__5422B884] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[AHRTS022] ADD CONSTRAINT [PKAHRTS022] PRIMARY KEY CLUSTERED  ([EMPID_I], [ISEQUENCENUMBER_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTS022].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTS022].[ISEQUENCENUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTS022].[TESTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRTS022].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTS022].[TESTSCORE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRTS022].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTS022].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRTS022].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRTS022].[EXPNDATE]'
GO
GRANT SELECT ON  [dbo].[AHRTS022] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHRTS022] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHRTS022] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHRTS022] TO [DYNGRP]
GO
