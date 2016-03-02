CREATE TABLE [dbo].[AEU10130]
(
[MSEQUENCE_I] [smallint] NOT NULL,
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
ALTER TABLE [dbo].[AEU10130] ADD CONSTRAINT [CK__AEU10130__MDATE1__4CB6A0E6] CHECK ((datepart(hour,[MDATE1_I])=(0) AND datepart(minute,[MDATE1_I])=(0) AND datepart(second,[MDATE1_I])=(0) AND datepart(millisecond,[MDATE1_I])=(0)))
GO
ALTER TABLE [dbo].[AEU10130] ADD CONSTRAINT [CK__AEU10130__MDATE2__4DAAC51F] CHECK ((datepart(hour,[MDATE2_I])=(0) AND datepart(minute,[MDATE2_I])=(0) AND datepart(second,[MDATE2_I])=(0) AND datepart(millisecond,[MDATE2_I])=(0)))
GO
ALTER TABLE [dbo].[AEU10130] ADD CONSTRAINT [CK__AEU10130__MDATE3__4E9EE958] CHECK ((datepart(hour,[MDATE3_I])=(0) AND datepart(minute,[MDATE3_I])=(0) AND datepart(second,[MDATE3_I])=(0) AND datepart(millisecond,[MDATE3_I])=(0)))
GO
ALTER TABLE [dbo].[AEU10130] ADD CONSTRAINT [CK__AEU10130__MDATE4__4F930D91] CHECK ((datepart(hour,[MDATE4_I])=(0) AND datepart(minute,[MDATE4_I])=(0) AND datepart(second,[MDATE4_I])=(0) AND datepart(millisecond,[MDATE4_I])=(0)))
GO
ALTER TABLE [dbo].[AEU10130] ADD CONSTRAINT [CK__AEU10130__MDATE5__508731CA] CHECK ((datepart(hour,[MDATE5_I])=(0) AND datepart(minute,[MDATE5_I])=(0) AND datepart(second,[MDATE5_I])=(0) AND datepart(millisecond,[MDATE5_I])=(0)))
GO
ALTER TABLE [dbo].[AEU10130] ADD CONSTRAINT [PKAEU10130] PRIMARY KEY CLUSTERED  ([EMPID_I], [MSEQUENCE_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AEU10130] ON [dbo].[AEU10130] ([EMPID_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MSEQUENCE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AEU10130].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AEU10130].[MSTRING_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AEU10130].[MSTRING_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AEU10130].[MSTRING_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AEU10130].[MSTRING_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AEU10130].[MSTRING_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MLINT_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MLINT_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MLINT_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MLINT_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MLINT_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AEU10130].[MDLR_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AEU10130].[MDLR_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AEU10130].[MDLR_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AEU10130].[MDLR_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AEU10130].[MDLR_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MCHECK_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MCHECK_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MCHECK_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MCHECK_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MCHECK_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MCHECK_I_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MCHECK_I_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MCHECK_I_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MCHECK_I_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AEU10130].[MCHECK_I_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AEU10130].[MDATE1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AEU10130].[MDATE2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AEU10130].[MDATE3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AEU10130].[MDATE4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AEU10130].[MDATE5_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AEU10130].[MTIME_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AEU10130].[MTIME_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AEU10130].[MTIME_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AEU10130].[MTIME_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AEU10130].[MTIME_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AEU10130].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[AEU10130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AEU10130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AEU10130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AEU10130] TO [DYNGRP]
GO
