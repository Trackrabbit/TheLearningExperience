CREATE TABLE [dbo].[PJOURNAL]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[ACTINDX] [int] NOT NULL,
[OFFINDX] [int] NOT NULL,
[GLLINMSG] [binary] (4) NOT NULL,
[GLLINMS2] [binary] (4) NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[FUNCRIDX] [smallint] NOT NULL,
[REPORT] [smallint] NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMST] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[ORCTRNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORMSTRID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORMSTRNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORTRXTYP] [smallint] NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PJOURNAL] ADD CONSTRAINT [PKPJOURNAL] PRIMARY KEY NONCLUSTERED  ([JRNENTRY], [SQNCLINE], [CURNCYID], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_WA_Sys_BACHNUMB_2EC5E7B8] ON [dbo].[PJOURNAL] ([BACHNUMB]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_WA_Sys_BCHSOURC_2EC5E7B8] ON [dbo].[PJOURNAL] ([BCHSOURC]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_WA_Sys_REPORT_2EC5E7B8] ON [dbo].[PJOURNAL] ([REPORT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1PJOURNAL] ON [dbo].[PJOURNAL] ([USERID], [BCHSOURC], [BACHNUMB], [JRNENTRY], [SQNCLINE], [CURNCYID], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PJOURNAL].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PJOURNAL].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PJOURNAL].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PJOURNAL].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PJOURNAL].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PJOURNAL].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PJOURNAL].[OFFINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PJOURNAL].[GLLINMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PJOURNAL].[GLLINMS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PJOURNAL].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PJOURNAL].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PJOURNAL].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PJOURNAL].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PJOURNAL].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PJOURNAL].[FUNCRIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PJOURNAL].[REPORT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PJOURNAL].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PJOURNAL].[ACTNUMST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PJOURNAL].[ACTDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PJOURNAL].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PJOURNAL].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PJOURNAL].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PJOURNAL].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PJOURNAL].[ORCTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PJOURNAL].[ORDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PJOURNAL].[ORMSTRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PJOURNAL].[ORMSTRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PJOURNAL].[ORTRXTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PJOURNAL].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PJOURNAL].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PJOURNAL].[DENXRATE]'
GO
GRANT SELECT ON  [dbo].[PJOURNAL] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PJOURNAL] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PJOURNAL] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PJOURNAL] TO [DYNGRP]
GO
