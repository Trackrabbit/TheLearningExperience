CREATE TABLE [dbo].[PM30300]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DATE1] [datetime] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
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
ALTER TABLE [dbo].[PM30300] ADD CONSTRAINT [CK__PM30300__TIME1__2101D846] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[PM30300] ADD CONSTRAINT [CK__PM30300__ApplyFr__1C3D2329] CHECK ((datepart(hour,[ApplyFromGLPostDate])=(0) AND datepart(minute,[ApplyFromGLPostDate])=(0) AND datepart(second,[ApplyFromGLPostDate])=(0) AND datepart(millisecond,[ApplyFromGLPostDate])=(0)))
GO
ALTER TABLE [dbo].[PM30300] ADD CONSTRAINT [CK__PM30300__ApplyTo__1D314762] CHECK ((datepart(hour,[ApplyToGLPostDate])=(0) AND datepart(minute,[ApplyToGLPostDate])=(0) AND datepart(second,[ApplyToGLPostDate])=(0) AND datepart(millisecond,[ApplyToGLPostDate])=(0)))
GO
ALTER TABLE [dbo].[PM30300] ADD CONSTRAINT [CK__PM30300__APTODCD__1B48FEF0] CHECK ((datepart(hour,[APTODCDT])=(0) AND datepart(minute,[APTODCDT])=(0) AND datepart(second,[APTODCDT])=(0) AND datepart(millisecond,[APTODCDT])=(0)))
GO
ALTER TABLE [dbo].[PM30300] ADD CONSTRAINT [CK__PM30300__DATE1__1E256B9B] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[PM30300] ADD CONSTRAINT [CK__PM30300__DOCDATE__1F198FD4] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM30300] ADD CONSTRAINT [CK__PM30300__GLPOSTD__200DB40D] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[PM30300] ADD CONSTRAINT [PKPM30300] PRIMARY KEY NONCLUSTERED  ([APTVCHNM], [APTODCTY], [VCHRNMBR], [DOCTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM30300] ON [dbo].[PM30300] ([VCHRNMBR], [DOCTYPE], [APTVCHNM], [APTODCTY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30300].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM30300].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM30300].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM30300].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM30300].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30300].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30300].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30300].[APFRDCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM30300].[ApplyFromGLPostDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30300].[FROMCURR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[APFRMAPLYAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[APFRMDISCTAKEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[APFRMDISCAVAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[APFRMWROFAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[ActualApplyToAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[ActualDiscTakenAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[ActualDiscAvailTaken]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[ActualWriteOffAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[APFRMEXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[APFRMDENRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30300].[APFRMRTCLCMETH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30300].[APFRMMCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30300].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30300].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30300].[APTODCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM30300].[APTODCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM30300].[ApplyToGLPostDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30300].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30300].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[APPLDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[DISAVTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[ORAPPAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[ORDISTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[ORDATKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[ORWROFAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[APTOEXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[APTODENRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30300].[APTORTCLCMETH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30300].[APTOMCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30300].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30300].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[TEN99AMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[RLGANLOS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[APYFRMRNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[APYTORNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[APYTORNDDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[OAPYFRMRNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[OAPYTORNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[OAPYTORNDDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[Settled_Gain_CreditCurrT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[Settled_Loss_CreditCurrT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[Settled_Gain_DebitCurrTr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[Settled_Loss_DebitCurrTr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[Settled_Gain_DebitDiscAv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[Settled_Loss_DebitDiscAv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30300].[Revaluation_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30300].[Credit1099Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30300].[DEFTEN99TYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30300].[DEFTEN99BOXNUMBER]'
GO
GRANT SELECT ON  [dbo].[PM30300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM30300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM30300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM30300] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PM30300] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[PM30300] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[PM30300] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[PM30300] TO [rpt_executive]
GO
