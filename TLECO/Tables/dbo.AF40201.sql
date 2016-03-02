CREATE TABLE [dbo].[AF40201]
(
[REPORTID] [smallint] NOT NULL,
[RptOptID] [numeric] (19, 5) NOT NULL,
[ROWNMBR] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ACTARR1_1_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_1_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_1_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_1_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_2_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_2_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_2_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_2_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_3_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_3_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_3_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_3_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_4_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_4_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_4_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR1_4_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR2_1_1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR2_1_2] [smallint] NOT NULL,
[ACTARR2_1_3] [smallint] NOT NULL,
[ACTARR2_1_4] [int] NOT NULL,
[ACTARR2_2_1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR2_2_2] [smallint] NOT NULL,
[ACTARR2_2_3] [smallint] NOT NULL,
[ACTARR2_2_4] [int] NOT NULL,
[ACTARR2_3_1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR2_3_2] [smallint] NOT NULL,
[ACTARR2_3_3] [smallint] NOT NULL,
[ACTARR2_3_4] [int] NOT NULL,
[ACTARR2_4_1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTARR2_4_2] [smallint] NOT NULL,
[ACTARR2_4_3] [smallint] NOT NULL,
[ACTARR2_4_4] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AF40201] ADD CONSTRAINT [PKAF40201] PRIMARY KEY NONCLUSTERED  ([REPORTID], [RptOptID], [ROWNMBR], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF40201].[RptOptID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[ROWNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_1_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_1_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_1_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_1_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_3_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_3_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_3_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_3_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_4_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_4_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_4_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR1_4_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR2_1_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[ACTARR2_1_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[ACTARR2_1_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[ACTARR2_1_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR2_2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[ACTARR2_2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[ACTARR2_2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[ACTARR2_2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR2_3_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[ACTARR2_3_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[ACTARR2_3_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[ACTARR2_3_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF40201].[ACTARR2_4_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[ACTARR2_4_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[ACTARR2_4_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40201].[ACTARR2_4_4]'
GO
GRANT REFERENCES ON  [dbo].[AF40201] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AF40201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AF40201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AF40201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AF40201] TO [DYNGRP]
GO
