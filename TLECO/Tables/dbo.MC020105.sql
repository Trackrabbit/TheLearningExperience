CREATE TABLE [dbo].[MC020105]
(
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[RVLUDATE] [datetime] NOT NULL,
[RevalPostDate] [datetime] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[AUDITTRAIL] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GAINLOSS] [smallint] NOT NULL,
[GLCURTRX] [numeric] (19, 5) NOT NULL,
[GLDSCAVL] [numeric] (19, 5) NOT NULL,
[ORCTRXAM] [numeric] (19, 5) NOT NULL,
[ORDAVAMT] [numeric] (19, 5) NOT NULL,
[CURTRXAR] [numeric] (19, 5) NOT NULL,
[DSCAVAAR] [numeric] (19, 5) NOT NULL,
[UnsettledCurrentGainLoss] [numeric] (19, 5) NOT NULL,
[UnsettledAvailGainLoss] [numeric] (19, 5) NOT NULL,
[Total_Gain_or_Loss_on_Cu] [numeric] (19, 5) NOT NULL,
[Total_Gain_or_Loss_on_Di] [numeric] (19, 5) NOT NULL,
[CURTRXAI] [int] NOT NULL,
[DSCAVAAI] [int] NOT NULL,
[RVLUEIDX] [int] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[SettledGainLossCurTrxAmt] [numeric] (19, 5) NOT NULL,
[SettledGainLossDiscAvlAm] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC020105] ADD CONSTRAINT [CK__MC020105__DOCDAT__3B2BBE9D] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[MC020105] ADD CONSTRAINT [CK__MC020105__RevalP__3D14070F] CHECK ((datepart(hour,[RevalPostDate])=(0) AND datepart(minute,[RevalPostDate])=(0) AND datepart(second,[RevalPostDate])=(0) AND datepart(millisecond,[RevalPostDate])=(0)))
GO
ALTER TABLE [dbo].[MC020105] ADD CONSTRAINT [CK__MC020105__RVLUDA__3C1FE2D6] CHECK ((datepart(hour,[RVLUDATE])=(0) AND datepart(minute,[RVLUDATE])=(0) AND datepart(second,[RVLUDATE])=(0) AND datepart(millisecond,[RVLUDATE])=(0)))
GO
ALTER TABLE [dbo].[MC020105] ADD CONSTRAINT [PKMC020105] PRIMARY KEY NONCLUSTERED  ([CURNCYID], [VCHRNMBR], [DOCTYPE], [RVLUDATE], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MC020105] ON [dbo].[MC020105] ([AUDITTRAIL], [CURNCYID], [DOCNUMBR], [DOCTYPE], [VCHRNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020105].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020105].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020105].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020105].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020105].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020105].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC020105].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC020105].[RVLUDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC020105].[RevalPostDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020105].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020105].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020105].[AUDITTRAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020105].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020105].[GAINLOSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[GLCURTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[GLDSCAVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[ORCTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[ORDAVAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[CURTRXAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[DSCAVAAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[UnsettledCurrentGainLoss]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[UnsettledAvailGainLoss]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[Total_Gain_or_Loss_on_Cu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[Total_Gain_or_Loss_on_Di]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020105].[CURTRXAI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020105].[DSCAVAAI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020105].[RVLUEIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020105].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[SettledGainLossCurTrxAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020105].[SettledGainLossDiscAvlAm]'
GO
GRANT SELECT ON  [dbo].[MC020105] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC020105] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC020105] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC020105] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[MC020105] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[MC020105] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[MC020105] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[MC020105] TO [rpt_executive]
GO
