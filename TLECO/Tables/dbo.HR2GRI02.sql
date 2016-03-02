CREATE TABLE [dbo].[HR2GRI02]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTRYNUMBER_I] [smallint] NOT NULL,
[STAGENUMBER_I] [smallint] NOT NULL,
[SEQORDER_I] [smallint] NOT NULL,
[STAGENAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2GRI02] ADD CONSTRAINT [CK__HR2GRI02__CHANGE__381089BB] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2GRI02] ADD CONSTRAINT [CK__HR2GRI02__DATE1__3904ADF4] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[HR2GRI02] ADD CONSTRAINT [PKHR2GRI02] PRIMARY KEY CLUSTERED  ([EMPID_I], [ENTRYNUMBER_I], [STAGENUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HR2GRI02] ON [dbo].[HR2GRI02] ([EMPID_I], [ENTRYNUMBER_I], [SEQORDER_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2GRI02].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2GRI02].[ENTRYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2GRI02].[STAGENUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2GRI02].[SEQORDER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2GRI02].[STAGENAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2GRI02].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2GRI02].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2GRI02].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2GRI02].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[HR2GRI02] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2GRI02] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2GRI02] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2GRI02] TO [DYNGRP]
GO
