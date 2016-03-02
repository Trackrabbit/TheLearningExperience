CREATE TABLE [dbo].[RM20201]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CPRCSTNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[POSTED] [tinyint] NOT NULL,
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTODCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTODCTY] [smallint] NOT NULL,
[APTODCDT] [datetime] NOT NULL,
[ApplyToGLPostDate] [datetime] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[APPTOAMT] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[DISAVTKN] [numeric] (19, 5) NOT NULL,
[WROFAMNT] [numeric] (19, 5) NOT NULL,
[ORAPTOAM] [numeric] (19, 5) NOT NULL,
[ORDISTKN] [numeric] (19, 5) NOT NULL,
[ORDATKN] [numeric] (19, 5) NOT NULL,
[ORWROFAM] [numeric] (19, 5) NOT NULL,
[APTOEXRATE] [numeric] (19, 7) NOT NULL,
[APTODENRATE] [numeric] (19, 7) NOT NULL,
[APTORTCLCMETH] [smallint] NOT NULL,
[APTOMCTRXSTT] [smallint] NOT NULL,
[APFRDCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APFRDCTY] [smallint] NOT NULL,
[APFRDCDT] [datetime] NOT NULL,
[ApplyFromGLPostDate] [datetime] NOT NULL,
[FROMCURR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APFRMAPLYAMT] [numeric] (19, 5) NOT NULL,
[APFRMDISCTAKEN] [numeric] (19, 5) NOT NULL,
[APFRMDISCAVAIL] [numeric] (19, 5) NOT NULL,
[APFRMWROFAMT] [numeric] (19, 5) NOT NULL,
[ActualApplyToAmount] [numeric] (19, 5) NOT NULL,
[ActualDiscTakenAmount] [numeric] (19, 5) NOT NULL,
[ActualDiscAvailTaken] [numeric] (19, 5) NOT NULL,
[ActualWriteOffAmount] [numeric] (19, 5) NOT NULL,
[APFRMEXRATE] [numeric] (19, 7) NOT NULL,
[APFRMDENRATE] [numeric] (19, 7) NOT NULL,
[APFRMRTCLCMETH] [smallint] NOT NULL,
[APFRMMCTRXSTT] [smallint] NOT NULL,
[APYFRMRNDAMT] [numeric] (19, 5) NOT NULL,
[APYTORNDAMT] [numeric] (19, 5) NOT NULL,
[APYTORNDDISC] [numeric] (19, 5) NOT NULL,
[OAPYFRMRNDAMT] [numeric] (19, 5) NOT NULL,
[OAPYTORNDAMT] [numeric] (19, 5) NOT NULL,
[OAPYTORNDDISC] [numeric] (19, 5) NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[PPSAMDED] [numeric] (19, 5) NOT NULL,
[RLGANLOS] [numeric] (19, 5) NOT NULL,
[Settled_Gain_CreditCurrT] [numeric] (19, 5) NOT NULL,
[Settled_Loss_CreditCurrT] [numeric] (19, 5) NOT NULL,
[Settled_Gain_DebitCurrTr] [numeric] (19, 5) NOT NULL,
[Settled_Loss_DebitCurrTr] [numeric] (19, 5) NOT NULL,
[Settled_Gain_DebitDiscAv] [numeric] (19, 5) NOT NULL,
[Settled_Loss_DebitDiscAv] [numeric] (19, 5) NOT NULL,
[Revaluation_Status] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM20201] ADD CONSTRAINT [CK__RM20201__TIME1__42B7D1CC] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[RM20201] ADD CONSTRAINT [CK__RM20201__APFRDCD__3CFEF876] CHECK ((datepart(hour,[APFRDCDT])=(0) AND datepart(minute,[APFRDCDT])=(0) AND datepart(second,[APFRDCDT])=(0) AND datepart(millisecond,[APFRDCDT])=(0)))
GO
ALTER TABLE [dbo].[RM20201] ADD CONSTRAINT [CK__RM20201__ApplyFr__3EE740E8] CHECK ((datepart(hour,[ApplyFromGLPostDate])=(0) AND datepart(minute,[ApplyFromGLPostDate])=(0) AND datepart(second,[ApplyFromGLPostDate])=(0) AND datepart(millisecond,[ApplyFromGLPostDate])=(0)))
GO
ALTER TABLE [dbo].[RM20201] ADD CONSTRAINT [CK__RM20201__ApplyTo__3FDB6521] CHECK ((datepart(hour,[ApplyToGLPostDate])=(0) AND datepart(minute,[ApplyToGLPostDate])=(0) AND datepart(second,[ApplyToGLPostDate])=(0) AND datepart(millisecond,[ApplyToGLPostDate])=(0)))
GO
ALTER TABLE [dbo].[RM20201] ADD CONSTRAINT [CK__RM20201__APTODCD__3DF31CAF] CHECK ((datepart(hour,[APTODCDT])=(0) AND datepart(minute,[APTODCDT])=(0) AND datepart(second,[APTODCDT])=(0) AND datepart(millisecond,[APTODCDT])=(0)))
GO
ALTER TABLE [dbo].[RM20201] ADD CONSTRAINT [CK__RM20201__DATE1__40CF895A] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[RM20201] ADD CONSTRAINT [CK__RM20201__GLPOSTD__41C3AD93] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[RM20201] ADD CONSTRAINT [PKRM20201] PRIMARY KEY NONCLUSTERED  ([APFRDCTY], [APFRDCNM], [APTODCTY], [APTODCNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4RM20201] ON [dbo].[RM20201] ([APTODCTY], [APTODCNM], [APFRDCTY], [APFRDCNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1RM20201] ON [dbo].[RM20201] ([APTODCTY], [APTODCNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6RM20201] ON [dbo].[RM20201] ([CPRCSTNM], [CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5RM20201] ON [dbo].[RM20201] ([CUSTNMBR], [APFRDCTY], [APFRDCNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM20201] ON [dbo].[RM20201] ([TRXSORCE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20201].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20201].[CPRCSTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20201].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20201].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20201].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20201].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20201].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20201].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20201].[APTODCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20201].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20201].[APTODCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20201].[ApplyToGLPostDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20201].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20201].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[APPTOAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[DISAVTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[ORAPTOAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[ORDISTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[ORDATKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[ORWROFAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[APTOEXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[APTODENRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20201].[APTORTCLCMETH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20201].[APTOMCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20201].[APFRDCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20201].[APFRDCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20201].[APFRDCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM20201].[ApplyFromGLPostDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM20201].[FROMCURR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[APFRMAPLYAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[APFRMDISCTAKEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[APFRMDISCAVAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[APFRMWROFAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[ActualApplyToAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[ActualDiscTakenAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[ActualDiscAvailTaken]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[ActualWriteOffAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[APFRMEXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[APFRMDENRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20201].[APFRMRTCLCMETH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20201].[APFRMMCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[APYFRMRNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[APYTORNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[APYTORNDDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[OAPYFRMRNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[OAPYTORNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[OAPYTORNDDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[RLGANLOS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[Settled_Gain_CreditCurrT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[Settled_Loss_CreditCurrT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[Settled_Gain_DebitCurrTr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[Settled_Loss_DebitCurrTr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[Settled_Gain_DebitDiscAv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM20201].[Settled_Loss_DebitDiscAv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM20201].[Revaluation_Status]'
GO
GRANT SELECT ON  [dbo].[RM20201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM20201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM20201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM20201] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM20201] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[RM20201] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[RM20201] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[RM20201] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[RM20201] TO [rpt_executive]
GO
