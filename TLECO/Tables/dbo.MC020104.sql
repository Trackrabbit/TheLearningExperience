CREATE TABLE [dbo].[MC020104]
(
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC020104] ADD CONSTRAINT [CK__MC020104__DOCDAT__36670980] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[MC020104] ADD CONSTRAINT [CK__MC020104__RevalP__384F51F2] CHECK ((datepart(hour,[RevalPostDate])=(0) AND datepart(minute,[RevalPostDate])=(0) AND datepart(second,[RevalPostDate])=(0) AND datepart(millisecond,[RevalPostDate])=(0)))
GO
ALTER TABLE [dbo].[MC020104] ADD CONSTRAINT [CK__MC020104__RVLUDA__375B2DB9] CHECK ((datepart(hour,[RVLUDATE])=(0) AND datepart(minute,[RVLUDATE])=(0) AND datepart(second,[RVLUDATE])=(0) AND datepart(millisecond,[RVLUDATE])=(0)))
GO
ALTER TABLE [dbo].[MC020104] ADD CONSTRAINT [PKMC020104] PRIMARY KEY NONCLUSTERED  ([CURNCYID], [DOCNUMBR], [DOCTYPE], [RVLUDATE], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MC020104] ON [dbo].[MC020104] ([AUDITTRAIL], [CURNCYID], [DOCNUMBR], [DOCTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020104].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020104].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020104].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020104].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020104].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020104].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020104].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC020104].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC020104].[RVLUDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC020104].[RevalPostDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020104].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020104].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020104].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020104].[AUDITTRAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020104].[GAINLOSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020104].[GLCURTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020104].[GLDSCAVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020104].[ORCTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020104].[ORDAVAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020104].[CURTRXAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020104].[DSCAVAAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020104].[UnsettledCurrentGainLoss]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020104].[UnsettledAvailGainLoss]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020104].[Total_Gain_or_Loss_on_Cu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020104].[Total_Gain_or_Loss_on_Di]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020104].[CURTRXAI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020104].[DSCAVAAI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020104].[RVLUEIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020104].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020104].[MCTRXSTT]'
GO
GRANT SELECT ON  [dbo].[MC020104] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC020104] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC020104] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC020104] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[MC020104] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[MC020104] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[MC020104] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[MC020104] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[MC020104] TO [rpt_executive]
GO
