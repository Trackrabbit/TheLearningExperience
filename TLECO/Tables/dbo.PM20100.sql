CREATE TABLE [dbo].[PM20100]
(
[KEYSOURC] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTED] [tinyint] NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTODCTY] [smallint] NOT NULL,
[APTODCDT] [datetime] NOT NULL,
[APTODCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPLDAMT] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[DISAVTKN] [numeric] (19, 5) NOT NULL,
[WROFAMNT] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[ORAPPAMT] [numeric] (19, 5) NOT NULL,
[ORDISTKN] [numeric] (19, 5) NOT NULL,
[ORDATKN] [numeric] (19, 5) NOT NULL,
[ORWROFAM] [numeric] (19, 5) NOT NULL,
[Apply_To_Document_Amount] [numeric] (19, 5) NOT NULL,
[Apply_To_Orig_Doc_Amount] [numeric] (19, 5) NOT NULL,
[Apply_To_Discount_Date] [datetime] NOT NULL,
[Apply_To_Due_Date] [datetime] NOT NULL,
[Apply_To_Description] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Apply_To_IS_MC_Trx] [smallint] NOT NULL,
[ApplyToGLPostDate] [datetime] NOT NULL,
[APTOEXRATE] [numeric] (19, 7) NOT NULL,
[APTODENRATE] [numeric] (19, 7) NOT NULL,
[APTORTCLCMETH] [smallint] NOT NULL,
[APTOMCTRXSTT] [smallint] NOT NULL,
[ISMCTRX] [smallint] NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[APFRDCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FROMCURR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Apply_From_Document_Amou] [numeric] (19, 5) NOT NULL,
[Apply_From_Orig_Doc_Amou] [numeric] (19, 5) NOT NULL,
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
[Apply_From_Description] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Apply_From_IS_MC_Trx] [smallint] NOT NULL,
[PPSAMDED] [numeric] (19, 5) NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPDTKNAM] [numeric] (19, 5) NOT NULL,
[UPGSTDAM] [numeric] (19, 5) NOT NULL,
[UNPPPSAD] [numeric] (19, 5) NOT NULL,
[UPWROFAM] [numeric] (19, 5) NOT NULL,
[PMDSTMSG] [binary] (4) NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TEN99AMNT] [numeric] (19, 5) NOT NULL,
[RLGANLOS] [numeric] (19, 5) NOT NULL,
[APYFRMRNDAMT] [numeric] (19, 5) NOT NULL,
[APYTORNDAMT] [numeric] (19, 5) NOT NULL,
[APYTORNDDISC] [numeric] (19, 5) NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[RATECALC] [smallint] NOT NULL,
[Payment_To_Print_On_Stub] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OAPYFRMRNDAMT] [numeric] (19, 5) NOT NULL,
[OAPYTORNDAMT] [numeric] (19, 5) NOT NULL,
[OAPYTORNDDISC] [numeric] (19, 5) NOT NULL,
[Settled_Gain_CreditCurrT] [numeric] (19, 5) NOT NULL,
[Settled_Loss_CreditCurrT] [numeric] (19, 5) NOT NULL,
[Settled_Gain_DebitCurrTr] [numeric] (19, 5) NOT NULL,
[Settled_Loss_DebitCurrTr] [numeric] (19, 5) NOT NULL,
[Settled_Gain_DebitDiscAv] [numeric] (19, 5) NOT NULL,
[Settled_Loss_DebitDiscAv] [numeric] (19, 5) NOT NULL,
[VADCDTRO] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Credit1099Amount] [numeric] (19, 5) NOT NULL,
[DEFTEN99TYPE] [smallint] NOT NULL,
[DEFTEN99BOXNUMBER] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM20100] ADD CONSTRAINT [CK__PM20100__TIME1__009508B4] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[PM20100] ADD CONSTRAINT [CK__PM20100__Apply_T__7BD05397] CHECK ((datepart(hour,[Apply_To_Discount_Date])=(0) AND datepart(minute,[Apply_To_Discount_Date])=(0) AND datepart(second,[Apply_To_Discount_Date])=(0) AND datepart(millisecond,[Apply_To_Discount_Date])=(0)))
GO
ALTER TABLE [dbo].[PM20100] ADD CONSTRAINT [CK__PM20100__Apply_T__7CC477D0] CHECK ((datepart(hour,[Apply_To_Due_Date])=(0) AND datepart(minute,[Apply_To_Due_Date])=(0) AND datepart(second,[Apply_To_Due_Date])=(0) AND datepart(millisecond,[Apply_To_Due_Date])=(0)))
GO
ALTER TABLE [dbo].[PM20100] ADD CONSTRAINT [CK__PM20100__ApplyTo__7ADC2F5E] CHECK ((datepart(hour,[ApplyToGLPostDate])=(0) AND datepart(minute,[ApplyToGLPostDate])=(0) AND datepart(second,[ApplyToGLPostDate])=(0) AND datepart(millisecond,[ApplyToGLPostDate])=(0)))
GO
ALTER TABLE [dbo].[PM20100] ADD CONSTRAINT [CK__PM20100__APTODCD__79E80B25] CHECK ((datepart(hour,[APTODCDT])=(0) AND datepart(minute,[APTODCDT])=(0) AND datepart(second,[APTODCDT])=(0) AND datepart(millisecond,[APTODCDT])=(0)))
GO
ALTER TABLE [dbo].[PM20100] ADD CONSTRAINT [CK__PM20100__DOCDATE__7DB89C09] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM20100] ADD CONSTRAINT [CK__PM20100__MODIFDT__7EACC042] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[PM20100] ADD CONSTRAINT [CK__PM20100__POSTEDD__7FA0E47B] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[PM20100] ADD CONSTRAINT [PKPM20100] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM20100] ON [dbo].[PM20100] ([BCHSOURC], [USERID], [VCHRNMBR], [DOCTYPE], [APTVCHNM], [APTODCTY], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM20100] ON [dbo].[PM20100] ([KEYSOURC], [VCHRNMBR], [DOCTYPE], [APTVCHNM], [APTODCTY], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PM20100] ON [dbo].[PM20100] ([KEYSOURC], [VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1PM20100] ON [dbo].[PM20100] ([VCHRNMBR], [DOCTYPE], [APTVCHNM], [APTODCTY], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[KEYSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20100].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20100].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20100].[APTODCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[APTODCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[APPLDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[DISAVTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[ORAPPAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[ORDISTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[ORDATKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[ORWROFAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[Apply_To_Document_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[Apply_To_Orig_Doc_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20100].[Apply_To_Discount_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20100].[Apply_To_Due_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[Apply_To_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[Apply_To_IS_MC_Trx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20100].[ApplyToGLPostDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[APTOEXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[APTODENRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[APTORTCLCMETH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[APTOMCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[ISMCTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[APFRDCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[FROMCURR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[Apply_From_Document_Amou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[Apply_From_Orig_Doc_Amou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[APFRMAPLYAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[APFRMDISCTAKEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[APFRMDISCAVAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[APFRMWROFAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[ActualApplyToAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[ActualDiscTakenAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[ActualDiscAvailTaken]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[ActualWriteOffAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[APFRMEXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[APFRMDENRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[APFRMRTCLCMETH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[APFRMMCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[Apply_From_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[Apply_From_IS_MC_Trx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[UPDTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[UPGSTDAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[UNPPPSAD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[UPWROFAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[PMDSTMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20100].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[TEN99AMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[RLGANLOS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[APYFRMRNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[APYTORNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[APYTORNDDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[Payment_To_Print_On_Stub]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[OAPYFRMRNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[OAPYTORNDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[OAPYTORNDDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[Settled_Gain_CreditCurrT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[Settled_Loss_CreditCurrT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[Settled_Gain_DebitCurrTr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[Settled_Loss_DebitCurrTr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[Settled_Gain_DebitDiscAv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[Settled_Loss_DebitDiscAv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20100].[VADCDTRO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20100].[Credit1099Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[DEFTEN99TYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20100].[DEFTEN99BOXNUMBER]'
GO
GRANT SELECT ON  [dbo].[PM20100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM20100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM20100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM20100] TO [DYNGRP]
GO
