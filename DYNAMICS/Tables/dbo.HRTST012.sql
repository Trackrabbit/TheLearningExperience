CREATE TABLE [dbo].[HRTST012]
(
[TESTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TEST_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRTST012] ADD CONSTRAINT [CK__HRTST012__CHANGE__157D7906] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRTST012] ADD CONSTRAINT [PKHRTST012] PRIMARY KEY CLUSTERED  ([TESTCODE_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HRTST012] ON [dbo].[HRTST012] ([TEST_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRTST012].[TESTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRTST012].[TEST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRTST012].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRTST012].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRTST012].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[HRTST012] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRTST012] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRTST012] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRTST012] TO [DYNGRP]
GO
