CREATE TABLE [dbo].[NCPM10102]
(
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSTSQNUM] [int] NOT NULL,
[CNTRLTYP] [smallint] NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[DSTINDX] [int] NOT NULL,
[ACTNUMST] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGED] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTGSTUS] [smallint] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTODCTY] [smallint] NOT NULL,
[SPCLDIST] [smallint] NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[ICCURRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ICCURRIX] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[CorrespondingUnit] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCPM10102] ADD CONSTRAINT [CK__NCPM10102__TIME1__2B118B7C] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[NCPM10102] ADD CONSTRAINT [CK__NCPM10102__EXCHD__2A1D6743] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[NCPM10102] ADD CONSTRAINT [CK__NCPM10102__EXPND__2C05AFB5] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[NCPM10102] ADD CONSTRAINT [CK__NCPM10102__PSTGD__2929430A] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[NCPM10102] ADD CONSTRAINT [PKNCPM10102] PRIMARY KEY NONCLUSTERED  ([VCHRNMBR], [CNTRLTYP], [APTVCHNM], [SPCLDIST], [DSTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4NCPM10102] ON [dbo].[NCPM10102] ([TRXSORCE], [DSTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3NCPM10102] ON [dbo].[NCPM10102] ([USERID], [PSTGSTUS], [VCHRNMBR], [CNTRLTYP], [DSTINDX], [DISTTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2NCPM10102] ON [dbo].[NCPM10102] ([VCHRNMBR], [CNTRLTYP], [APTVCHNM], [DISTTYPE], [DSTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCPM10102].[DSTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCPM10102].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCPM10102].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCPM10102].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCPM10102].[DSTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[ACTNUMST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[ACTDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCPM10102].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCPM10102].[CHANGED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCPM10102].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCPM10102].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCPM10102].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCPM10102].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCPM10102].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCPM10102].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCPM10102].[SPCLDIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCPM10102].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCPM10102].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCPM10102].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCPM10102].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCPM10102].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCPM10102].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[ICCURRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCPM10102].[ICCURRIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCPM10102].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCPM10102].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCPM10102].[CorrespondingUnit]'
GO
GRANT SELECT ON  [dbo].[NCPM10102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCPM10102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCPM10102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCPM10102] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCPM10102] TO [public]
GO
GRANT INSERT ON  [dbo].[NCPM10102] TO [public]
GO
GRANT DELETE ON  [dbo].[NCPM10102] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCPM10102] TO [public]
GO
