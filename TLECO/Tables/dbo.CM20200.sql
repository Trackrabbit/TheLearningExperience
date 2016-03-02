CREATE TABLE [dbo].[CM20200]
(
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[sRecNum] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCRDSTTS] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMTrxNum] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMTrxType] [smallint] NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMLinkID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paidtorcvdfrom] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Recond] [tinyint] NOT NULL,
[RECONUM] [numeric] (19, 5) NOT NULL,
[ClrdAmt] [numeric] (19, 5) NOT NULL,
[clearedate] [datetime] NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[VOIDDATE] [datetime] NOT NULL,
[VOIDPDATE] [datetime] NOT NULL,
[VOIDDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[AUDITTRAIL] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPTYPE] [smallint] NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRCDOCTYP] [smallint] NOT NULL,
[SRCDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIGAMT] [numeric] (19, 5) NOT NULL,
[Checkbook_Amount] [numeric] (19, 5) NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[Xfr_Record_Number] [numeric] (19, 5) NOT NULL,
[EFTFLAG] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM20200] ADD CONSTRAINT [CK__CM20200__TIME1__2B0A656D] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[CM20200] ADD CONSTRAINT [CK__CM20200__cleared__2EDAF651] CHECK ((datepart(hour,[clearedate])=(0) AND datepart(minute,[clearedate])=(0) AND datepart(second,[clearedate])=(0) AND datepart(millisecond,[clearedate])=(0)))
GO
ALTER TABLE [dbo].[CM20200] ADD CONSTRAINT [CK__CM20200__EXCHDAT__2645B050] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20200] ADD CONSTRAINT [CK__CM20200__EXPNDAT__2739D489] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20200] ADD CONSTRAINT [CK__CM20200__GLPOSTD__282DF8C2] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[CM20200] ADD CONSTRAINT [CK__CM20200__MODIFDT__29221CFB] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[CM20200] ADD CONSTRAINT [CK__CM20200__POSTEDD__2A164134] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[CM20200] ADD CONSTRAINT [CK__CM20200__TRXDATE__2BFE89A6] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20200] ADD CONSTRAINT [CK__CM20200__VOIDDAT__2CF2ADDF] CHECK ((datepart(hour,[VOIDDATE])=(0) AND datepart(minute,[VOIDDATE])=(0) AND datepart(second,[VOIDDATE])=(0) AND datepart(millisecond,[VOIDDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20200] ADD CONSTRAINT [CK__CM20200__VOIDPDA__2DE6D218] CHECK ((datepart(hour,[VOIDPDATE])=(0) AND datepart(minute,[VOIDPDATE])=(0) AND datepart(second,[VOIDPDATE])=(0) AND datepart(millisecond,[VOIDPDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20200] ADD CONSTRAINT [PKCM20200] PRIMARY KEY NONCLUSTERED  ([CMRECNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CM20200] ON [dbo].[CM20200] ([CHEKBKID], [CMTrxNum], [CMTrxType], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1CM20200] ON [dbo].[CM20200] ([CHEKBKID], [Recond], [CMTrxNum], [CMTrxType], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CM20200] ON [dbo].[CM20200] ([CHEKBKID], [Recond], [TRXDATE], [CMTrxNum], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4CM20200] ON [dbo].[CM20200] ([CHEKBKID], [TRXDATE], [CMTrxNum], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5CM20200] ON [dbo].[CM20200] ([RECONUM], [CMRECNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7CM20200] ON [dbo].[CM20200] ([sRecNum]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20200].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[sRecNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20200].[RCRDSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[CMTrxNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20200].[CMTrxType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20200].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20200].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20200].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[CMLinkID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[paidtorcvdfrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20200].[Recond]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20200].[RECONUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20200].[ClrdAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20200].[clearedate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20200].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20200].[VOIDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20200].[VOIDPDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[VOIDDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[AUDITTRAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20200].[DEPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20200].[SRCDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[SRCDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20200].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20200].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20200].[ORIGAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20200].[Checkbook_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20200].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20200].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20200].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20200].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20200].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20200].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20200].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20200].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20200].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20200].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20200].[Xfr_Record_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20200].[EFTFLAG]'
GO
GRANT SELECT ON  [dbo].[CM20200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM20200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM20200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM20200] TO [DYNGRP]
GO
