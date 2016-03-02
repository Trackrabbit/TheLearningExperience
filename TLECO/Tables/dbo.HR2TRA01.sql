CREATE TABLE [dbo].[HR2TRA01]
(
[COURSENAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COURSEID_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COURSESUBJECT_I] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ROOM_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INSTRUCTOR_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COURSEPREREQS_I_1] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COURSEPREREQS_I_2] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COURSEPREREQS_I_3] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COURSEPREREQS_I_4] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COURSEPREREQS_I_5] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COURSEINHOUSE_I] [tinyint] NOT NULL,
[COURSECOST_I] [numeric] (19, 5) NOT NULL,
[EMPLOYEECOST_I] [numeric] (19, 5) NOT NULL,
[EMPLOYERCOST_I] [numeric] (19, 5) NOT NULL,
[INSTRUCTORFEE_I] [numeric] (19, 5) NOT NULL,
[MISCCOST_I] [numeric] (19, 5) NOT NULL,
[CREDITHOURS_I] [numeric] (19, 5) NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2TRA01] ADD CONSTRAINT [PKHR2TRA01] PRIMARY KEY CLUSTERED  ([COURSENAME_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HR2TRA01] ON [dbo].[HR2TRA01] ([COURSEID_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2TRA01].[COURSENAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2TRA01].[COURSEID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2TRA01].[COURSESUBJECT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2TRA01].[ROOM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2TRA01].[INSTRUCTOR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2TRA01].[COURSEPREREQS_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2TRA01].[COURSEPREREQS_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2TRA01].[COURSEPREREQS_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2TRA01].[COURSEPREREQS_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2TRA01].[COURSEPREREQS_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2TRA01].[COURSEINHOUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2TRA01].[COURSECOST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2TRA01].[EMPLOYEECOST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2TRA01].[EMPLOYERCOST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2TRA01].[INSTRUCTORFEE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2TRA01].[MISCCOST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2TRA01].[CREDITHOURS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2TRA01].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[HR2TRA01] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2TRA01] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2TRA01] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2TRA01] TO [DYNGRP]
GO
