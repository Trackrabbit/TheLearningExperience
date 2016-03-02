CREATE TABLE [dbo].[CM20300]
(
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[sRecNum] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTRLTYP] [smallint] NOT NULL,
[DEPOSITED] [tinyint] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[depositnumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[receiptdate] [datetime] NOT NULL,
[RCPTAMT] [numeric] (19, 5) NOT NULL,
[RcpType] [smallint] NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BANKNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNKBRNCH] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMLinkID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RcvdFrom] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[VOIDDATE] [datetime] NOT NULL,
[VOIDPDATE] [datetime] NOT NULL,
[VOIDDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[RCRDSTTS] [smallint] NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRCDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRCDOCTYP] [smallint] NOT NULL,
[AUDITTRAIL] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIGAMT] [numeric] (19, 5) NOT NULL,
[Checkbook_Amount] [numeric] (19, 5) NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCVGRATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[Receiving_Exchange_Rate] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[RCVGRTCLCMTD] [smallint] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[RLGANLOS] [numeric] (19, 5) NOT NULL,
[Cash_Account_Index] [int] NOT NULL,
[Realized_GL_Account_Inde] [int] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[Receiving_DenomEXRate] [numeric] (19, 7) NOT NULL,
[Receiving_MC_Transaction] [smallint] NOT NULL,
[PMNTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTFLAG] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM20300] ADD CONSTRAINT [CK__CM20300__TIME1__42E1EEFE] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[CM20300] ADD CONSTRAINT [CK__CM20300__EXCHDAT__3E1D39E1] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20300] ADD CONSTRAINT [CK__CM20300__EXPNDAT__3F115E1A] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20300] ADD CONSTRAINT [CK__CM20300__GLPOSTD__40058253] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[CM20300] ADD CONSTRAINT [CK__CM20300__MODIFDT__40F9A68C] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[CM20300] ADD CONSTRAINT [CK__CM20300__POSTEDD__41EDCAC5] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[CM20300] ADD CONSTRAINT [CK__CM20300__receipt__45BE5BA9] CHECK ((datepart(hour,[receiptdate])=(0) AND datepart(minute,[receiptdate])=(0) AND datepart(second,[receiptdate])=(0) AND datepart(millisecond,[receiptdate])=(0)))
GO
ALTER TABLE [dbo].[CM20300] ADD CONSTRAINT [CK__CM20300__VOIDDAT__43D61337] CHECK ((datepart(hour,[VOIDDATE])=(0) AND datepart(minute,[VOIDDATE])=(0) AND datepart(second,[VOIDDATE])=(0) AND datepart(millisecond,[VOIDDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20300] ADD CONSTRAINT [CK__CM20300__VOIDPDA__44CA3770] CHECK ((datepart(hour,[VOIDPDATE])=(0) AND datepart(minute,[VOIDPDATE])=(0) AND datepart(second,[VOIDPDATE])=(0) AND datepart(millisecond,[VOIDPDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20300] ADD CONSTRAINT [PKCM20300] PRIMARY KEY NONCLUSTERED  ([CMRECNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CM20300] ON [dbo].[CM20300] ([CHEKBKID], [CURNCYID], [depositnumber], [RcpType], [receiptdate], [RCPTNMBR], [CMRECNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CM20300] ON [dbo].[CM20300] ([CHEKBKID], [depositnumber], [RCPTNMBR], [RcpType], [receiptdate], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7CM20300] ON [dbo].[CM20300] ([CHEKBKID], [depositnumber], [RcpType], [receiptdate], [RCPTNMBR], [CMRECNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6CM20300] ON [dbo].[CM20300] ([CHEKBKID], [depositnumber], [VOIDED], [CURNCYID], [RcpType], [receiptdate], [RCPTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1CM20300] ON [dbo].[CM20300] ([DEPOSITED], [CHEKBKID], [CURNCYID], [RcpType], [receiptdate], [RCPTNMBR], [CMRECNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5CM20300] ON [dbo].[CM20300] ([sRecNum]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20300].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[sRecNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[DEPOSITED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20300].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[depositnumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[RCPTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20300].[receiptdate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20300].[RCPTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[RcpType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[CARDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[BANKNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[BNKBRNCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20300].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20300].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[CMLinkID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[RcvdFrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20300].[VOIDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20300].[VOIDPDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[VOIDDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20300].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[RCRDSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[SRCDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[SRCDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[AUDITTRAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20300].[ORIGAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20300].[Checkbook_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[RCVGRATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20300].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20300].[Receiving_Exchange_Rate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20300].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20300].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[RCVGRTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20300].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20300].[RLGANLOS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[Cash_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[Realized_GL_Account_Inde]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20300].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20300].[Receiving_DenomEXRate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[Receiving_MC_Transaction]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20300].[PMNTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20300].[EFTFLAG]'
GO
GRANT SELECT ON  [dbo].[CM20300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM20300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM20300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM20300] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[CM20300] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[CM20300] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[CM20300] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[CM20300] TO [RAPIDGRP]
GO
