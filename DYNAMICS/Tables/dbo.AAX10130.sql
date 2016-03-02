CREATE TABLE [dbo].[AAX10130]
(
[APPLICANTNUMBER_I] [numeric] (19, 5) NOT NULL,
[DATE1_I] [datetime] NOT NULL,
[DATE2_I] [datetime] NOT NULL,
[DATE3_I] [datetime] NOT NULL,
[DATE4_I] [datetime] NOT NULL,
[DATE5_I] [datetime] NOT NULL,
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
ALTER TABLE [dbo].[AAX10130] ADD CONSTRAINT [CK__AAX10130__CHANGE__4D37C244] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AAX10130] ADD CONSTRAINT [CK__AAX10130__DATE1___4E2BE67D] CHECK ((datepart(hour,[DATE1_I])=(0) AND datepart(minute,[DATE1_I])=(0) AND datepart(second,[DATE1_I])=(0) AND datepart(millisecond,[DATE1_I])=(0)))
GO
ALTER TABLE [dbo].[AAX10130] ADD CONSTRAINT [CK__AAX10130__DATE2___4F200AB6] CHECK ((datepart(hour,[DATE2_I])=(0) AND datepart(minute,[DATE2_I])=(0) AND datepart(second,[DATE2_I])=(0) AND datepart(millisecond,[DATE2_I])=(0)))
GO
ALTER TABLE [dbo].[AAX10130] ADD CONSTRAINT [CK__AAX10130__DATE3___50142EEF] CHECK ((datepart(hour,[DATE3_I])=(0) AND datepart(minute,[DATE3_I])=(0) AND datepart(second,[DATE3_I])=(0) AND datepart(millisecond,[DATE3_I])=(0)))
GO
ALTER TABLE [dbo].[AAX10130] ADD CONSTRAINT [CK__AAX10130__DATE4___51085328] CHECK ((datepart(hour,[DATE4_I])=(0) AND datepart(minute,[DATE4_I])=(0) AND datepart(second,[DATE4_I])=(0) AND datepart(millisecond,[DATE4_I])=(0)))
GO
ALTER TABLE [dbo].[AAX10130] ADD CONSTRAINT [CK__AAX10130__DATE5___51FC7761] CHECK ((datepart(hour,[DATE5_I])=(0) AND datepart(minute,[DATE5_I])=(0) AND datepart(second,[DATE5_I])=(0) AND datepart(millisecond,[DATE5_I])=(0)))
GO
ALTER TABLE [dbo].[AAX10130] ADD CONSTRAINT [PKAAX10130] PRIMARY KEY CLUSTERED  ([APPLICANTNUMBER_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAX10130].[APPLICANTNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAX10130].[DATE1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAX10130].[DATE2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAX10130].[DATE3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAX10130].[DATE4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAX10130].[DATE5_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAX10130].[STRINGS_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAX10130].[STRINGS_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAX10130].[STRINGS_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAX10130].[STRINGS_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAX10130].[STRINGS_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAX10130].[NUMERICEXTRA_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAX10130].[NUMERICEXTRA_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAX10130].[NUMERICEXTRA_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAX10130].[NUMERICEXTRA_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAX10130].[NUMERICEXTRA_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAX10130].[DOLLARS_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAX10130].[DOLLARS_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAX10130].[DOLLARS_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAX10130].[DOLLARS_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAX10130].[DOLLARS_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAX10130].[CHECKBOXES_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAX10130].[CHECKBOXES_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAX10130].[CHECKBOXES_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAX10130].[CHECKBOXES_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAX10130].[CHECKBOXES_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAX10130].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAX10130].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAX10130].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[AAX10130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAX10130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAX10130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAX10130] TO [DYNGRP]
GO
