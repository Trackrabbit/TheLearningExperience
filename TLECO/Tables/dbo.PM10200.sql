CREATE TABLE [dbo].[PM10200]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DATE1] [datetime] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTODCTY] [smallint] NOT NULL,
[APTODCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTODCDT] [datetime] NOT NULL,
[ApplyToGLPostDate] [datetime] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[APPLDAMT] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[DISAVTKN] [numeric] (19, 5) NOT NULL,
[WROFAMNT] [numeric] (19, 5) NOT NULL,
[ORAPPAMT] [numeric] (19, 5) NOT NULL,
[ORDISTKN] [numeric] (19, 5) NOT NULL,
[ORDATKN] [numeric] (19, 5) NOT NULL,
[ORWROFAM] [numeric] (19, 5) NOT NULL,
[APTOEXRATE] [numeric] (19, 7) NOT NULL,
[APTODENRATE] [numeric] (19, 7) NOT NULL,
[APTORTCLCMETH] [smallint] NOT NULL,
[APTOMCTRXSTT] [smallint] NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[APFRDCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[PPSAMDED] [numeric] (19, 5) NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTED] [tinyint] NOT NULL,
[TEN99AMNT] [numeric] (19, 5) NOT NULL,
[RLGANLOS] [numeric] (19, 5) NOT NULL,
[APYFRMRNDAMT] [numeric] (19, 5) NOT NULL,
[APYTORNDAMT] [numeric] (19, 5) NOT NULL,
[APYTORNDDISC] [numeric] (19, 5) NOT NULL,
[OAPYFRMRNDAMT] [numeric] (19, 5) NOT NULL,
[OAPYTORNDAMT] [numeric] (19, 5) NOT NULL,
[OAPYTORNDDISC] [numeric] (19, 5) NOT NULL,
[Settled_Gain_CreditCurrT] [numeric] (19, 5) NOT NULL,
[Settled_Loss_CreditCurrT] [numeric] (19, 5) NOT NULL,
[Settled_Gain_DebitCurrTr] [numeric] (19, 5) NOT NULL,
[Settled_Loss_DebitCurrTr] [numeric] (19, 5) NOT NULL,
[Settled_Gain_DebitDiscAv] [numeric] (19, 5) NOT NULL,
[Settled_Loss_DebitDiscAv] [numeric] (19, 5) NOT NULL,
[Revaluation_Status] [smallint] NOT NULL,
[Credit1099Amount] [numeric] (19, 5) NOT NULL,
[DEFTEN99TYPE] [smallint] NOT NULL,
[DEFTEN99BOXNUMBER] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM10200] ADD CONSTRAINT [CK__PM10200__TIME1__4297D63B] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[PM10200] ADD CONSTRAINT [CK__PM10200__ApplyFr__3DD3211E] CHECK ((datepart(hour,[ApplyFromGLPostDate])=(0) AND datepart(minute,[ApplyFromGLPostDate])=(0) AND datepart(second,[ApplyFromGLPostDate])=(0) AND datepart(millisecond,[ApplyFromGLPostDate])=(0)))
GO
ALTER TABLE [dbo].[PM10200] ADD CONSTRAINT [CK__PM10200__ApplyTo__3EC74557] CHECK ((datepart(hour,[ApplyToGLPostDate])=(0) AND datepart(minute,[ApplyToGLPostDate])=(0) AND datepart(second,[ApplyToGLPostDate])=(0) AND datepart(millisecond,[ApplyToGLPostDate])=(0)))
GO
ALTER TABLE [dbo].[PM10200] ADD CONSTRAINT [CK__PM10200__APTODCD__3CDEFCE5] CHECK ((datepart(hour,[APTODCDT])=(0) AND datepart(minute,[APTODCDT])=(0) AND datepart(second,[APTODCDT])=(0) AND datepart(millisecond,[APTODCDT])=(0)))
GO
ALTER TABLE [dbo].[PM10200] ADD CONSTRAINT [CK__PM10200__DATE1__3FBB6990] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[PM10200] ADD CONSTRAINT [CK__PM10200__DOCDATE__40AF8DC9] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10200] ADD CONSTRAINT [CK__PM10200__GLPOSTD__41A3B202] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[PM10200] ADD CONSTRAINT [PKPM10200] PRIMARY KEY NONCLUSTERED  ([APTVCHNM], [APTODCTY], [VCHRNMBR], [DOCTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM10200] ON [dbo].[PM10200] ([VCHRNMBR], [DOCTYPE], [APTVCHNM], [APTODCTY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM10200] ON [dbo].[PM10200] ([VENDORID], [DOCTYPE], [APFRDCNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10200].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10200].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10200].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10200].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10200].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10200].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10200].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10200].[APTODCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10200].[APTODCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10200].[ApplyToGLPostDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10200].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10200].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[APPLDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[DISAVTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[ORAPPAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[ORDISTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[ORDATKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[ORWROFAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[APTOEXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[APTODENRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10200].[APTORTCLCMETH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10200].[APTOMCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10200].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10200].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10200].[APFRDCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10200].[ApplyFromGLPostDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10200].[FROMCURR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[APFRMAPLYAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[APFRMDISCTAKEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[APFRMDISCAVAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[APFRMWROFAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[ActualApplyToAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[ActualDiscTakenAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[ActualDiscAvailTaken]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[ActualWriteOffAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[APFRMEXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[APFRMDENRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10200].[APFRMRTCLCMETH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10200].[APFRMMCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10200].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10200].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[TEN99AMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[RLGANLOS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[APYFRMRNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[APYTORNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[APYTORNDDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[OAPYFRMRNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[OAPYTORNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[OAPYTORNDDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[Settled_Gain_CreditCurrT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[Settled_Loss_CreditCurrT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[Settled_Gain_DebitCurrTr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[Settled_Loss_DebitCurrTr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[Settled_Gain_DebitDiscAv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[Settled_Loss_DebitDiscAv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10200].[Revaluation_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10200].[Credit1099Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10200].[DEFTEN99TYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10200].[DEFTEN99BOXNUMBER]'
GO
GRANT SELECT ON  [dbo].[PM10200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM10200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM10200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM10200] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PM10200] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[PM10200] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[PM10200] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[PM10200] TO [rpt_executive]
GO
