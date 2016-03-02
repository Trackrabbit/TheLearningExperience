CREATE TABLE [dbo].[B2530200]
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
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2530200] ADD CONSTRAINT [CK__B2530200__TIME1__2130EB4C] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[B2530200] ADD CONSTRAINT [CK__B2530200__ApplyF__240D57F7] CHECK ((datepart(hour,[ApplyFromGLPostDate])=(0) AND datepart(minute,[ApplyFromGLPostDate])=(0) AND datepart(second,[ApplyFromGLPostDate])=(0) AND datepart(millisecond,[ApplyFromGLPostDate])=(0)))
GO
ALTER TABLE [dbo].[B2530200] ADD CONSTRAINT [CK__B2530200__ApplyT__231933BE] CHECK ((datepart(hour,[ApplyToGLPostDate])=(0) AND datepart(minute,[ApplyToGLPostDate])=(0) AND datepart(second,[ApplyToGLPostDate])=(0) AND datepart(millisecond,[ApplyToGLPostDate])=(0)))
GO
ALTER TABLE [dbo].[B2530200] ADD CONSTRAINT [CK__B2530200__APTODC__22250F85] CHECK ((datepart(hour,[APTODCDT])=(0) AND datepart(minute,[APTODCDT])=(0) AND datepart(second,[APTODCDT])=(0) AND datepart(millisecond,[APTODCDT])=(0)))
GO
ALTER TABLE [dbo].[B2530200] ADD CONSTRAINT [CK__B2530200__DATE1__1F48A2DA] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B2530200] ADD CONSTRAINT [CK__B2530200__DOCDAT__1E547EA1] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2530200] ADD CONSTRAINT [CK__B2530200__GLPOST__203CC713] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[B2530200] ADD CONSTRAINT [PKB2530200] PRIMARY KEY NONCLUSTERED  ([APTVCHNM], [APTODCTY], [VCHRNMBR], [DOCTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2530200] ON [dbo].[B2530200] ([VCHRNMBR], [DOCTYPE], [APTVCHNM], [APTODCTY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B2530200] ON [dbo].[B2530200] ([VENDORID], [DOCTYPE], [APFRDCNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530200].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530200].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530200].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530200].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530200].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530200].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530200].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530200].[APTODCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530200].[APTODCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530200].[ApplyToGLPostDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530200].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530200].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[APPLDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[DISAVTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[ORAPPAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[ORDISTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[ORDATKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[ORWROFAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[APTOEXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[APTODENRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530200].[APTORTCLCMETH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530200].[APTOMCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530200].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530200].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530200].[APFRDCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530200].[ApplyFromGLPostDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530200].[FROMCURR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[APFRMAPLYAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[APFRMDISCTAKEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[APFRMDISCAVAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[APFRMWROFAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[ActualApplyToAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[ActualDiscTakenAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[ActualDiscAvailTaken]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[ActualWriteOffAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[APFRMEXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[APFRMDENRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530200].[APFRMRTCLCMETH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530200].[APFRMMCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530200].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530200].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[TEN99AMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[RLGANLOS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[APYFRMRNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[APYTORNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[APYTORNDDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[OAPYFRMRNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[OAPYTORNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[OAPYTORNDDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[Settled_Gain_CreditCurrT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[Settled_Loss_CreditCurrT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[Settled_Gain_DebitCurrTr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[Settled_Loss_DebitCurrTr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[Settled_Gain_DebitDiscAv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530200].[Settled_Loss_DebitDiscAv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530200].[Revaluation_Status]'
GO
GRANT SELECT ON  [dbo].[B2530200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2530200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2530200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2530200] TO [DYNGRP]
GO
