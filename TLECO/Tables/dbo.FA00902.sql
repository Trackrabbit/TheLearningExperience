CREATE TABLE [dbo].[FA00902]
(
[FINANCIALINDX] [int] NOT NULL,
[ASSETINDEX] [int] NOT NULL,
[BOOKINDX] [int] NOT NULL,
[FA_Doc_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSDATESTAMP] [datetime] NOT NULL,
[TRANSTIMESTAMP] [datetime] NOT NULL,
[FISCALYRADDED] [smallint] NOT NULL,
[FAYEAR] [smallint] NOT NULL,
[FAPERIOD] [smallint] NOT NULL,
[DEPRFROMDATE] [datetime] NOT NULL,
[DEPRTODATE] [datetime] NOT NULL,
[AMOUNT] [numeric] (19, 5) NOT NULL,
[TRANSUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSACCTTYPE] [smallint] NOT NULL,
[INTERFACEGL] [tinyint] NOT NULL,
[GLINTTRXDATE] [datetime] NOT NULL,
[GLINTDATESTAMP] [datetime] NOT NULL,
[GLINTTIMESTAMP] [datetime] NOT NULL,
[GLINTACCTINDX] [int] NOT NULL,
[GLINTBTCHNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FA_Reset_Offset_Index] [int] NOT NULL,
[FA_Reset_User_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FA_Reset_Date] [datetime] NOT NULL,
[FA_Reset_Time] [datetime] NOT NULL,
[Ledger_ID] [smallint] NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[aagTR_FA00902Del]  ON [dbo].[FA00902]  FOR DELETE  AS  DECLARE  @fa_financialindex INT,  @aaSubledgerHdrID INT,  @aaSubLedgerDistID INT SELECT @aaSubledgerHdrID=0,@aaSubLedgerDistID=0  SELECT @fa_financialindex = FINANCIALINDX FROM deleted SELECT @aaSubledgerHdrID=aaSubLedgerHdrID,@aaSubLedgerDistID=aaSubLedgerDistID  FROM AAG20001 WHERE TRXNUMBER = @fa_financialindex AND aaAssetID !='' IF @aaSubledgerHdrID!=0  EXEC aagDeleteAAFAHdr @aaSubledgerHdrID    
GO
ALTER TABLE [dbo].[FA00902] ADD CONSTRAINT [CK__FA00902__FA_Rese__34DEB3C1] CHECK ((datepart(day,[FA_Reset_Time])=(1) AND datepart(month,[FA_Reset_Time])=(1) AND datepart(year,[FA_Reset_Time])=(1900)))
GO
ALTER TABLE [dbo].[FA00902] ADD CONSTRAINT [CK__FA00902__GLINTTI__36C6FC33] CHECK ((datepart(day,[GLINTTIMESTAMP])=(1) AND datepart(month,[GLINTTIMESTAMP])=(1) AND datepart(year,[GLINTTIMESTAMP])=(1900)))
GO
ALTER TABLE [dbo].[FA00902] ADD CONSTRAINT [CK__FA00902__TRANSTI__39A368DE] CHECK ((datepart(day,[TRANSTIMESTAMP])=(1) AND datepart(month,[TRANSTIMESTAMP])=(1) AND datepart(year,[TRANSTIMESTAMP])=(1900)))
GO
ALTER TABLE [dbo].[FA00902] ADD CONSTRAINT [CK__FA00902__DEPRFRO__32024716] CHECK ((datepart(hour,[DEPRFROMDATE])=(0) AND datepart(minute,[DEPRFROMDATE])=(0) AND datepart(second,[DEPRFROMDATE])=(0) AND datepart(millisecond,[DEPRFROMDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00902] ADD CONSTRAINT [CK__FA00902__DEPRTOD__32F66B4F] CHECK ((datepart(hour,[DEPRTODATE])=(0) AND datepart(minute,[DEPRTODATE])=(0) AND datepart(second,[DEPRTODATE])=(0) AND datepart(millisecond,[DEPRTODATE])=(0)))
GO
ALTER TABLE [dbo].[FA00902] ADD CONSTRAINT [CK__FA00902__FA_Rese__33EA8F88] CHECK ((datepart(hour,[FA_Reset_Date])=(0) AND datepart(minute,[FA_Reset_Date])=(0) AND datepart(second,[FA_Reset_Date])=(0) AND datepart(millisecond,[FA_Reset_Date])=(0)))
GO
ALTER TABLE [dbo].[FA00902] ADD CONSTRAINT [CK__FA00902__GLINTDA__35D2D7FA] CHECK ((datepart(hour,[GLINTDATESTAMP])=(0) AND datepart(minute,[GLINTDATESTAMP])=(0) AND datepart(second,[GLINTDATESTAMP])=(0) AND datepart(millisecond,[GLINTDATESTAMP])=(0)))
GO
ALTER TABLE [dbo].[FA00902] ADD CONSTRAINT [CK__FA00902__GLINTTR__37BB206C] CHECK ((datepart(hour,[GLINTTRXDATE])=(0) AND datepart(minute,[GLINTTRXDATE])=(0) AND datepart(second,[GLINTTRXDATE])=(0) AND datepart(millisecond,[GLINTTRXDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00902] ADD CONSTRAINT [CK__FA00902__TRANSDA__38AF44A5] CHECK ((datepart(hour,[TRANSDATESTAMP])=(0) AND datepart(minute,[TRANSDATESTAMP])=(0) AND datepart(second,[TRANSDATESTAMP])=(0) AND datepart(millisecond,[TRANSDATESTAMP])=(0)))
GO
ALTER TABLE [dbo].[FA00902] ADD CONSTRAINT [PKFA00902] PRIMARY KEY CLUSTERED  ([FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3FA00902] ON [dbo].[FA00902] ([ASSETINDEX], [BOOKINDX], [FAYEAR], [FAPERIOD], [FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA00902] ON [dbo].[FA00902] ([ASSETINDEX], [BOOKINDX], [FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5FA00902] ON [dbo].[FA00902] ([ASSETINDEX], [BOOKINDX], [SOURCDOC], [FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6FA00902] ON [dbo].[FA00902] ([ASSETINDEX], [BOOKINDX], [TRANSACCTTYPE], [FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4FA00902] ON [dbo].[FA00902] ([BOOKINDX], [INTERFACEGL], [GLINTBTCHNUM], [GLINTACCTINDX], [FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8FA00902] ON [dbo].[FA00902] ([FA_Doc_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7FA00902] ON [dbo].[FA00902] ([GLINTBTCHNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00902].[FINANCIALINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00902].[ASSETINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00902].[BOOKINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00902].[FA_Doc_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00902].[TRANSDATESTAMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00902].[TRANSTIMESTAMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00902].[FISCALYRADDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00902].[FAYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00902].[FAPERIOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00902].[DEPRFROMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00902].[DEPRTODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00902].[AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00902].[TRANSUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00902].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00902].[TRANSACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00902].[INTERFACEGL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00902].[GLINTTRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00902].[GLINTDATESTAMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00902].[GLINTTIMESTAMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00902].[GLINTACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00902].[GLINTBTCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00902].[FA_Reset_Offset_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00902].[FA_Reset_User_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00902].[FA_Reset_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00902].[FA_Reset_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00902].[Ledger_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00902].[REFRENCE]'
GO
GRANT SELECT ON  [dbo].[FA00902] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA00902] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA00902] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA00902] TO [DYNGRP]
GO
