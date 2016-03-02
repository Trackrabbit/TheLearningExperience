CREATE TABLE [dbo].[HRDIV022]
(
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATES_I_1] [datetime] NOT NULL,
[DATES_I_2] [datetime] NOT NULL,
[DATES_I_3] [datetime] NOT NULL,
[DATES_I_4] [datetime] NOT NULL,
[DATES_I_5] [datetime] NOT NULL,
[STRINGS_I_1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRINGS_I_2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRINGS_I_3] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRINGS_I_4] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRINGS_I_5] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NUMERICEXTRA_1] [int] NOT NULL,
[NUMERICEXTRA_2] [int] NOT NULL,
[NUMERICEXTRA_3] [int] NOT NULL,
[NUMERICEXTRA_4] [int] NOT NULL,
[NUMERICEXTRA_5] [int] NOT NULL,
[DOLLARS_I_1] [numeric] (19, 5) NOT NULL,
[DOLLARS_I_2] [numeric] (19, 5) NOT NULL,
[DOLLARS_I_3] [numeric] (19, 5) NOT NULL,
[DOLLARS_I_4] [numeric] (19, 5) NOT NULL,
[DOLLARS_I_5] [numeric] (19, 5) NOT NULL,
[CHECKBOXES_I_1] [tinyint] NOT NULL,
[CHECKBOXES_I_2] [tinyint] NOT NULL,
[CHECKBOXES_I_3] [tinyint] NOT NULL,
[CHECKBOXES_I_4] [tinyint] NOT NULL,
[CHECKBOXES_I_5] [tinyint] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRDIV022] ADD CONSTRAINT [CK__HRDIV022__CHANGE__10C1B270] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRDIV022] ADD CONSTRAINT [CK__HRDIV022__DATES___11B5D6A9] CHECK ((datepart(hour,[DATES_I_1])=(0) AND datepart(minute,[DATES_I_1])=(0) AND datepart(second,[DATES_I_1])=(0) AND datepart(millisecond,[DATES_I_1])=(0)))
GO
ALTER TABLE [dbo].[HRDIV022] ADD CONSTRAINT [CK__HRDIV022__DATES___12A9FAE2] CHECK ((datepart(hour,[DATES_I_2])=(0) AND datepart(minute,[DATES_I_2])=(0) AND datepart(second,[DATES_I_2])=(0) AND datepart(millisecond,[DATES_I_2])=(0)))
GO
ALTER TABLE [dbo].[HRDIV022] ADD CONSTRAINT [CK__HRDIV022__DATES___139E1F1B] CHECK ((datepart(hour,[DATES_I_3])=(0) AND datepart(minute,[DATES_I_3])=(0) AND datepart(second,[DATES_I_3])=(0) AND datepart(millisecond,[DATES_I_3])=(0)))
GO
ALTER TABLE [dbo].[HRDIV022] ADD CONSTRAINT [CK__HRDIV022__DATES___14924354] CHECK ((datepart(hour,[DATES_I_4])=(0) AND datepart(minute,[DATES_I_4])=(0) AND datepart(second,[DATES_I_4])=(0) AND datepart(millisecond,[DATES_I_4])=(0)))
GO
ALTER TABLE [dbo].[HRDIV022] ADD CONSTRAINT [CK__HRDIV022__DATES___1586678D] CHECK ((datepart(hour,[DATES_I_5])=(0) AND datepart(minute,[DATES_I_5])=(0) AND datepart(second,[DATES_I_5])=(0) AND datepart(millisecond,[DATES_I_5])=(0)))
GO
ALTER TABLE [dbo].[HRDIV022] ADD CONSTRAINT [PKHRDIV022] PRIMARY KEY CLUSTERED  ([DIVISIONCODE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRDIV022].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRDIV022].[DATES_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRDIV022].[DATES_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRDIV022].[DATES_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRDIV022].[DATES_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRDIV022].[DATES_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRDIV022].[STRINGS_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRDIV022].[STRINGS_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRDIV022].[STRINGS_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRDIV022].[STRINGS_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRDIV022].[STRINGS_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRDIV022].[NUMERICEXTRA_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRDIV022].[NUMERICEXTRA_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRDIV022].[NUMERICEXTRA_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRDIV022].[NUMERICEXTRA_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRDIV022].[NUMERICEXTRA_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRDIV022].[DOLLARS_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRDIV022].[DOLLARS_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRDIV022].[DOLLARS_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRDIV022].[DOLLARS_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRDIV022].[DOLLARS_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRDIV022].[CHECKBOXES_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRDIV022].[CHECKBOXES_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRDIV022].[CHECKBOXES_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRDIV022].[CHECKBOXES_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRDIV022].[CHECKBOXES_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRDIV022].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRDIV022].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRDIV022].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[HRDIV022] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRDIV022] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRDIV022] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRDIV022] TO [DYNGRP]
GO