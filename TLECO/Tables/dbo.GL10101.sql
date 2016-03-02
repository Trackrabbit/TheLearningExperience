CREATE TABLE [dbo].[GL10101]
(
[BSNSFMID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[ACTINDX] [int] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[GLLINMSG] [binary] (4) NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLLINVAL] [binary] (4) NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[FXDORVAR] [smallint] NOT NULL,
[BALFRCLC] [smallint] NOT NULL,
[PSTNGTYP] [smallint] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL10101] ADD CONSTRAINT [PKGL10101] PRIMARY KEY NONCLUSTERED  ([BSNSFMID], [JRNENTRY], [SQNCLINE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL10101] ON [dbo].[GL10101] ([ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL10101] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10101].[BSNSFMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10101].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10101].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10101].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10101].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10101].[GLLINMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10101].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10101].[GLLINVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10101].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10101].[FXDORVAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10101].[BALFRCLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10101].[PSTNGTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10101].[DECPLACS]'
GO
GRANT SELECT ON  [dbo].[GL10101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL10101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL10101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL10101] TO [DYNGRP]
GO
