CREATE TABLE [dbo].[GL10002]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[OFFINDX] [int] NOT NULL,
[PSTDAMNT] [numeric] (19, 5) NOT NULL,
[GLLINMSG] [binary] (4) NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLLINVAL] [binary] (4) NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[OFFACTYP] [smallint] NOT NULL,
[OFFXVAR] [smallint] NOT NULL,
[OFFBLCLC] [smallint] NOT NULL,
[OFFDECPL] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL10002] ADD CONSTRAINT [PKGL10002] PRIMARY KEY NONCLUSTERED  ([JRNENTRY], [SQNCLINE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3GL10002] ON [dbo].[GL10002] ([ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL10002] ON [dbo].[GL10002] ([JRNENTRY], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4GL10002] ON [dbo].[GL10002] ([OFFINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10002].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10002].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10002].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10002].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10002].[OFFINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10002].[PSTDAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10002].[GLLINMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10002].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10002].[GLLINVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10002].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10002].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10002].[OFFACTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10002].[OFFXVAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10002].[OFFBLCLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10002].[OFFDECPL]'
GO
GRANT SELECT ON  [dbo].[GL10002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL10002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL10002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL10002] TO [DYNGRP]
GO
