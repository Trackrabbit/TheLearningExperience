CREATE TABLE [dbo].[HR2NOT01]
(
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPLICANTNUMBER_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[NOTES32000_I] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2NOT01] ADD CONSTRAINT [CK__HR2NOT01__CHANGE__483E02FD] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2NOT01] ADD CONSTRAINT [PKHR2NOT01] PRIMARY KEY CLUSTERED  ([NOTESINDEX_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3HR2NOT01] ON [dbo].[HR2NOT01] ([APPLICANTNUMBER_I], [NOTESINDEX_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HR2NOT01] ON [dbo].[HR2NOT01] ([EMPID_I], [NOTESINDEX_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2NOT01].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2NOT01].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2NOT01].[APPLICANTNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2NOT01].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2NOT01].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[HR2NOT01] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2NOT01] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2NOT01] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2NOT01] TO [DYNGRP]
GO
