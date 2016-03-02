CREATE TABLE [dbo].[NCGL10002]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[ACTINDX] [int] NOT NULL,
[ACTNUMST] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLLINMSG] [binary] (4) NOT NULL,
[GLLINMS2] [binary] (4) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[GLLINVAL] [binary] (4) NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[FXDORVAR] [smallint] NOT NULL,
[BALFRCLC] [smallint] NOT NULL,
[PSTNGTYP] [smallint] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[ORCTRNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORMSTRID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORMSTRNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORTRXTYP] [smallint] NOT NULL,
[OrigSeqNum] [int] NOT NULL,
[ORTRXDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DTA_GL_Status] [smallint] NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[LNESTAT] [smallint] NOT NULL,
[CorrespondingUnit] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCGL10002] ADD CONSTRAINT [CK__NCGL10002__TIME1__7E3EE505] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[NCGL10002] ADD CONSTRAINT [CK__NCGL10002__EXCHD__7D4AC0CC] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[NCGL10002] ADD CONSTRAINT [PKNCGL10002] PRIMARY KEY NONCLUSTERED  ([JRNENTRY], [SQNCLINE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2NCGL10002] ON [dbo].[NCGL10002] ([ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3NCGL10002] ON [dbo].[NCGL10002] ([JRNENTRY], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4NCGL10002] ON [dbo].[NCGL10002] ([JRNENTRY], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCGL10002].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCGL10002].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCGL10002].[ACTNUMST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCGL10002].[ACTDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCGL10002].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCGL10002].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[GLLINMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[GLLINMS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[GLLINVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[FXDORVAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[BALFRCLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[PSTNGTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCGL10002].[ORCTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCGL10002].[ORDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCGL10002].[ORMSTRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCGL10002].[ORMSTRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[ORTRXTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[OrigSeqNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCGL10002].[ORTRXDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[DTA_GL_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCGL10002].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCGL10002].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCGL10002].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCGL10002].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCGL10002].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCGL10002].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCGL10002].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCGL10002].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCGL10002].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCGL10002].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCGL10002].[LNESTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCGL10002].[CorrespondingUnit]'
GO
GRANT SELECT ON  [dbo].[NCGL10002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCGL10002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCGL10002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCGL10002] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCGL10002] TO [public]
GO
GRANT INSERT ON  [dbo].[NCGL10002] TO [public]
GO
GRANT DELETE ON  [dbo].[NCGL10002] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCGL10002] TO [public]
GO
