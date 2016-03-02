CREATE TABLE [dbo].[HRCOM022]
(
[COMPANYCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
ALTER TABLE [dbo].[HRCOM022] ADD CONSTRAINT [CK__HRCOM022__CHANGE__017F6EE0] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRCOM022] ADD CONSTRAINT [CK__HRCOM022__DATES___02739319] CHECK ((datepart(hour,[DATES_I_1])=(0) AND datepart(minute,[DATES_I_1])=(0) AND datepart(second,[DATES_I_1])=(0) AND datepart(millisecond,[DATES_I_1])=(0)))
GO
ALTER TABLE [dbo].[HRCOM022] ADD CONSTRAINT [CK__HRCOM022__DATES___0367B752] CHECK ((datepart(hour,[DATES_I_2])=(0) AND datepart(minute,[DATES_I_2])=(0) AND datepart(second,[DATES_I_2])=(0) AND datepart(millisecond,[DATES_I_2])=(0)))
GO
ALTER TABLE [dbo].[HRCOM022] ADD CONSTRAINT [CK__HRCOM022__DATES___045BDB8B] CHECK ((datepart(hour,[DATES_I_3])=(0) AND datepart(minute,[DATES_I_3])=(0) AND datepart(second,[DATES_I_3])=(0) AND datepart(millisecond,[DATES_I_3])=(0)))
GO
ALTER TABLE [dbo].[HRCOM022] ADD CONSTRAINT [CK__HRCOM022__DATES___054FFFC4] CHECK ((datepart(hour,[DATES_I_4])=(0) AND datepart(minute,[DATES_I_4])=(0) AND datepart(second,[DATES_I_4])=(0) AND datepart(millisecond,[DATES_I_4])=(0)))
GO
ALTER TABLE [dbo].[HRCOM022] ADD CONSTRAINT [CK__HRCOM022__DATES___064423FD] CHECK ((datepart(hour,[DATES_I_5])=(0) AND datepart(minute,[DATES_I_5])=(0) AND datepart(second,[DATES_I_5])=(0) AND datepart(millisecond,[DATES_I_5])=(0)))
GO
ALTER TABLE [dbo].[HRCOM022] ADD CONSTRAINT [PKHRCOM022] PRIMARY KEY CLUSTERED  ([COMPANYCODE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRCOM022].[COMPANYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRCOM022].[DATES_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRCOM022].[DATES_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRCOM022].[DATES_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRCOM022].[DATES_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRCOM022].[DATES_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRCOM022].[STRINGS_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRCOM022].[STRINGS_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRCOM022].[STRINGS_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRCOM022].[STRINGS_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRCOM022].[STRINGS_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRCOM022].[NUMERICEXTRA_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRCOM022].[NUMERICEXTRA_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRCOM022].[NUMERICEXTRA_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRCOM022].[NUMERICEXTRA_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRCOM022].[NUMERICEXTRA_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRCOM022].[DOLLARS_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRCOM022].[DOLLARS_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRCOM022].[DOLLARS_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRCOM022].[DOLLARS_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRCOM022].[DOLLARS_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRCOM022].[CHECKBOXES_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRCOM022].[CHECKBOXES_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRCOM022].[CHECKBOXES_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRCOM022].[CHECKBOXES_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRCOM022].[CHECKBOXES_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRCOM022].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRCOM022].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRCOM022].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[HRCOM022] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRCOM022] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRCOM022] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRCOM022] TO [DYNGRP]
GO
