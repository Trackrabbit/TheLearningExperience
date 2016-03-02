CREATE TABLE [dbo].[AX010130]
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
ALTER TABLE [dbo].[AX010130] ADD CONSTRAINT [CK__AX010130__CHANGE__14BE5EF7] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AX010130] ADD CONSTRAINT [CK__AX010130__DATE1___15B28330] CHECK ((datepart(hour,[DATE1_I])=(0) AND datepart(minute,[DATE1_I])=(0) AND datepart(second,[DATE1_I])=(0) AND datepart(millisecond,[DATE1_I])=(0)))
GO
ALTER TABLE [dbo].[AX010130] ADD CONSTRAINT [CK__AX010130__DATE2___16A6A769] CHECK ((datepart(hour,[DATE2_I])=(0) AND datepart(minute,[DATE2_I])=(0) AND datepart(second,[DATE2_I])=(0) AND datepart(millisecond,[DATE2_I])=(0)))
GO
ALTER TABLE [dbo].[AX010130] ADD CONSTRAINT [CK__AX010130__DATE3___179ACBA2] CHECK ((datepart(hour,[DATE3_I])=(0) AND datepart(minute,[DATE3_I])=(0) AND datepart(second,[DATE3_I])=(0) AND datepart(millisecond,[DATE3_I])=(0)))
GO
ALTER TABLE [dbo].[AX010130] ADD CONSTRAINT [CK__AX010130__DATE4___188EEFDB] CHECK ((datepart(hour,[DATE4_I])=(0) AND datepart(minute,[DATE4_I])=(0) AND datepart(second,[DATE4_I])=(0) AND datepart(millisecond,[DATE4_I])=(0)))
GO
ALTER TABLE [dbo].[AX010130] ADD CONSTRAINT [CK__AX010130__DATE5___19831414] CHECK ((datepart(hour,[DATE5_I])=(0) AND datepart(minute,[DATE5_I])=(0) AND datepart(second,[DATE5_I])=(0) AND datepart(millisecond,[DATE5_I])=(0)))
GO
ALTER TABLE [dbo].[AX010130] ADD CONSTRAINT [PKAX010130] PRIMARY KEY CLUSTERED  ([APPLICANTNUMBER_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AX010130].[APPLICANTNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AX010130].[DATE1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AX010130].[DATE2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AX010130].[DATE3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AX010130].[DATE4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AX010130].[DATE5_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AX010130].[STRINGS_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AX010130].[STRINGS_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AX010130].[STRINGS_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AX010130].[STRINGS_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AX010130].[STRINGS_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AX010130].[NUMERICEXTRA_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AX010130].[NUMERICEXTRA_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AX010130].[NUMERICEXTRA_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AX010130].[NUMERICEXTRA_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AX010130].[NUMERICEXTRA_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AX010130].[DOLLARS_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AX010130].[DOLLARS_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AX010130].[DOLLARS_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AX010130].[DOLLARS_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AX010130].[DOLLARS_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AX010130].[CHECKBOXES_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AX010130].[CHECKBOXES_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AX010130].[CHECKBOXES_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AX010130].[CHECKBOXES_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AX010130].[CHECKBOXES_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AX010130].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AX010130].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AX010130].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[AX010130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AX010130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AX010130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AX010130] TO [DYNGRP]
GO
