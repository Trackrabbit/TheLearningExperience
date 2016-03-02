CREATE TABLE [dbo].[AU010130]
(
[MSEQUENCE_I] [smallint] NOT NULL,
[APPLICANTNUMBER_I] [numeric] (19, 5) NOT NULL,
[MSTRING_I_1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSTRING_I_2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSTRING_I_3] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSTRING_I_4] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSTRING_I_5] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MLINT_I_1] [int] NOT NULL,
[MLINT_I_2] [int] NOT NULL,
[MLINT_I_3] [int] NOT NULL,
[MLINT_I_4] [int] NOT NULL,
[MLINT_I_5] [int] NOT NULL,
[MDLR_I_1] [numeric] (19, 5) NOT NULL,
[MDLR_I_2] [numeric] (19, 5) NOT NULL,
[MDLR_I_3] [numeric] (19, 5) NOT NULL,
[MDLR_I_4] [numeric] (19, 5) NOT NULL,
[MDLR_I_5] [numeric] (19, 5) NOT NULL,
[MCHECK_I_1] [tinyint] NOT NULL,
[MCHECK_I_2] [tinyint] NOT NULL,
[MCHECK_I_3] [tinyint] NOT NULL,
[MCHECK_I_4] [tinyint] NOT NULL,
[MCHECK_I_5] [tinyint] NOT NULL,
[MCHECK_I_6] [tinyint] NOT NULL,
[MCHECK_I_7] [tinyint] NOT NULL,
[MCHECK_I_8] [tinyint] NOT NULL,
[MCHECK_I_9] [tinyint] NOT NULL,
[MCHECK_I_10] [tinyint] NOT NULL,
[MDATE1_I] [datetime] NOT NULL,
[MDATE2_I] [datetime] NOT NULL,
[MDATE3_I] [datetime] NOT NULL,
[MDATE4_I] [datetime] NOT NULL,
[MDATE5_I] [datetime] NOT NULL,
[MTIME_I_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MTIME_I_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MTIME_I_3] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MTIME_I_4] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MTIME_I_5] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AU010130] ADD CONSTRAINT [CK__AU010130__MDATE1__0C2918F6] CHECK ((datepart(hour,[MDATE1_I])=(0) AND datepart(minute,[MDATE1_I])=(0) AND datepart(second,[MDATE1_I])=(0) AND datepart(millisecond,[MDATE1_I])=(0)))
GO
ALTER TABLE [dbo].[AU010130] ADD CONSTRAINT [CK__AU010130__MDATE2__0D1D3D2F] CHECK ((datepart(hour,[MDATE2_I])=(0) AND datepart(minute,[MDATE2_I])=(0) AND datepart(second,[MDATE2_I])=(0) AND datepart(millisecond,[MDATE2_I])=(0)))
GO
ALTER TABLE [dbo].[AU010130] ADD CONSTRAINT [CK__AU010130__MDATE3__0E116168] CHECK ((datepart(hour,[MDATE3_I])=(0) AND datepart(minute,[MDATE3_I])=(0) AND datepart(second,[MDATE3_I])=(0) AND datepart(millisecond,[MDATE3_I])=(0)))
GO
ALTER TABLE [dbo].[AU010130] ADD CONSTRAINT [CK__AU010130__MDATE4__0F0585A1] CHECK ((datepart(hour,[MDATE4_I])=(0) AND datepart(minute,[MDATE4_I])=(0) AND datepart(second,[MDATE4_I])=(0) AND datepart(millisecond,[MDATE4_I])=(0)))
GO
ALTER TABLE [dbo].[AU010130] ADD CONSTRAINT [CK__AU010130__MDATE5__0FF9A9DA] CHECK ((datepart(hour,[MDATE5_I])=(0) AND datepart(minute,[MDATE5_I])=(0) AND datepart(second,[MDATE5_I])=(0) AND datepart(millisecond,[MDATE5_I])=(0)))
GO
ALTER TABLE [dbo].[AU010130] ADD CONSTRAINT [PKAU010130] PRIMARY KEY CLUSTERED  ([APPLICANTNUMBER_I], [MSEQUENCE_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AU010130] ON [dbo].[AU010130] ([APPLICANTNUMBER_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MSEQUENCE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AU010130].[APPLICANTNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AU010130].[MSTRING_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AU010130].[MSTRING_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AU010130].[MSTRING_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AU010130].[MSTRING_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AU010130].[MSTRING_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MLINT_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MLINT_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MLINT_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MLINT_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MLINT_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AU010130].[MDLR_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AU010130].[MDLR_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AU010130].[MDLR_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AU010130].[MDLR_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AU010130].[MDLR_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MCHECK_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MCHECK_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MCHECK_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MCHECK_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MCHECK_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MCHECK_I_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MCHECK_I_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MCHECK_I_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MCHECK_I_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AU010130].[MCHECK_I_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AU010130].[MDATE1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AU010130].[MDATE2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AU010130].[MDATE3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AU010130].[MDATE4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AU010130].[MDATE5_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AU010130].[MTIME_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AU010130].[MTIME_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AU010130].[MTIME_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AU010130].[MTIME_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AU010130].[MTIME_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AU010130].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[AU010130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AU010130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AU010130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AU010130] TO [DYNGRP]
GO
