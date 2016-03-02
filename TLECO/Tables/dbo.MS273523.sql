CREATE TABLE [dbo].[MS273523]
(
[MSO_InstanceGUID] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_EngineGUID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Doc_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[MSO_Doc_Type] [smallint] NOT NULL,
[MSO_Source_Of_Document] [smallint] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_TrxType] [int] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_FirstName] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_MiddleName] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_LastName] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardExpDate] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardType] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardNumberPABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_IsCardValid] [tinyint] NOT NULL,
[CRCRDAMT] [numeric] (19, 5) NOT NULL,
[MSO_Auth_Amount] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Capture_Amount] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CVV2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRBTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMail] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRSTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShipTo_Zip] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShipFromZip] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_TaxAmount] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_FreightAmount] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_MiscAmount] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_L_AMTn] [numeric] (19, 5) NOT NULL,
[MSO_L_COSTn] [numeric] (19, 5) NOT NULL,
[MSO_L_DESCn] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_L_DISCOUNTn] [numeric] (19, 5) NOT NULL,
[MSO_L_PRODCODEn] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_L_QTYn] [int] NOT NULL,
[MSO_L_TAXAMTn] [numeric] (19, 5) NOT NULL,
[MSO_L_UOMn] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_L_UPCn] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_DESC_PABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_DESC1_PABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_DESC2_PABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_DESC3_PABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_DESC4_PABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT3] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT4] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_RespAuthCode] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_RespOrigID] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_RespAVSADR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_RespAVSZIP] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_RespCVV2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_RespCode] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_RespMSG] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_TrxStatus] [tinyint] NOT NULL,
[MSO_IsBatched] [tinyint] NOT NULL,
[MSO_IsSettled] [tinyint] NOT NULL,
[MSO_Number_Times_Card_De] [smallint] NOT NULL,
[MSO_Denied_Edited] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDATE] [datetime] NOT NULL,
[MSO_BookExpDate] [datetime] NOT NULL,
[MSO_Last_Xmit_Date] [datetime] NOT NULL,
[MSO_Last_Xmit_Time] [datetime] NOT NULL,
[MKTOPROC] [tinyint] NOT NULL,
[MSO_DLicense] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Check_Number] [char] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ABA] [char] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_AcctType] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Total_Amount] [numeric] (19, 5) NOT NULL,
[MSO_Last_Settled_Date] [datetime] NOT NULL,
[MSO_Last_Settled_Time] [datetime] NOT NULL,
[MSO_IsVoid] [tinyint] NOT NULL,
[MSO_Issue_Number] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Start_Date] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ACCT] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Source_Of_Orig] [int] NOT NULL,
[MSO_BankName] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_DateOfBirth] [datetime] NOT NULL,
[MSO_SSN] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShippingAddr1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShippingAddr2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShippingAddr3] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShippingCity] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShippingState] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShippingCountry] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ReviewDate] [datetime] NOT NULL,
[MSO_NoteIndex] [numeric] (19, 5) NOT NULL,
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShippingFN] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShippingMN] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShippingLN] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShippingPhone] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShippingEMail] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShippingFax] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[MSO_XMLText] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273523] ADD CONSTRAINT [CK__MS273523__MSO_La__211B115C] CHECK ((datepart(day,[MSO_Last_Settled_Time])=(1) AND datepart(month,[MSO_Last_Settled_Time])=(1) AND datepart(year,[MSO_Last_Settled_Time])=(1900)))
GO
ALTER TABLE [dbo].[MS273523] ADD CONSTRAINT [CK__MS273523__MSO_La__1F32C8EA] CHECK ((datepart(day,[MSO_Last_Xmit_Time])=(1) AND datepart(month,[MSO_Last_Xmit_Time])=(1) AND datepart(year,[MSO_Last_Xmit_Time])=(1900)))
GO
ALTER TABLE [dbo].[MS273523] ADD CONSTRAINT [CK__MS273523__MSO_Bo__1D4A8078] CHECK ((datepart(hour,[MSO_BookExpDate])=(0) AND datepart(minute,[MSO_BookExpDate])=(0) AND datepart(second,[MSO_BookExpDate])=(0) AND datepart(millisecond,[MSO_BookExpDate])=(0)))
GO
ALTER TABLE [dbo].[MS273523] ADD CONSTRAINT [CK__MS273523__MSO_Da__220F3595] CHECK ((datepart(hour,[MSO_DateOfBirth])=(0) AND datepart(minute,[MSO_DateOfBirth])=(0) AND datepart(second,[MSO_DateOfBirth])=(0) AND datepart(millisecond,[MSO_DateOfBirth])=(0)))
GO
ALTER TABLE [dbo].[MS273523] ADD CONSTRAINT [CK__MS273523__MSO_La__2026ED23] CHECK ((datepart(hour,[MSO_Last_Settled_Date])=(0) AND datepart(minute,[MSO_Last_Settled_Date])=(0) AND datepart(second,[MSO_Last_Settled_Date])=(0) AND datepart(millisecond,[MSO_Last_Settled_Date])=(0)))
GO
ALTER TABLE [dbo].[MS273523] ADD CONSTRAINT [CK__MS273523__MSO_La__1E3EA4B1] CHECK ((datepart(hour,[MSO_Last_Xmit_Date])=(0) AND datepart(minute,[MSO_Last_Xmit_Date])=(0) AND datepart(second,[MSO_Last_Xmit_Date])=(0) AND datepart(millisecond,[MSO_Last_Xmit_Date])=(0)))
GO
ALTER TABLE [dbo].[MS273523] ADD CONSTRAINT [CK__MS273523__MSO_Re__230359CE] CHECK ((datepart(hour,[MSO_ReviewDate])=(0) AND datepart(minute,[MSO_ReviewDate])=(0) AND datepart(second,[MSO_ReviewDate])=(0) AND datepart(millisecond,[MSO_ReviewDate])=(0)))
GO
ALTER TABLE [dbo].[MS273523] ADD CONSTRAINT [CK__MS273523__USERDA__1C565C3F] CHECK ((datepart(hour,[USERDATE])=(0) AND datepart(minute,[USERDATE])=(0) AND datepart(second,[USERDATE])=(0) AND datepart(millisecond,[USERDATE])=(0)))
GO
ALTER TABLE [dbo].[MS273523] ADD CONSTRAINT [PKMS273523] PRIMARY KEY NONCLUSTERED  ([MSO_InstanceGUID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MS273523] ON [dbo].[MS273523] ([BCHSOURC], [BACHNUMB], [MSO_Doc_Number], [SEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5MS273523] ON [dbo].[MS273523] ([BCHSOURC], [BACHNUMB], [MSO_TrxStatus], [MSO_Doc_Number], [SEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10MS273523] ON [dbo].[MS273523] ([CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6MS273523] ON [dbo].[MS273523] ([MSO_CardNumberPABP], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK15MS273523] ON [dbo].[MS273523] ([MSO_Doc_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4MS273523] ON [dbo].[MS273523] ([MSO_Doc_Number], [MSO_Doc_Type], [SEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3MS273523] ON [dbo].[MS273523] ([MSO_Doc_Number], [MSO_Doc_Type], [SEQNUMBR], [MSO_InstanceGUID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK13MS273523] ON [dbo].[MS273523] ([MSO_EngineGUID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7MS273523] ON [dbo].[MS273523] ([MSO_FirstName], [MSO_LastName], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK11MS273523] ON [dbo].[MS273523] ([MSO_IsBatched], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK14MS273523] ON [dbo].[MS273523] ([MSO_Last_Xmit_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK16MS273523] ON [dbo].[MS273523] ([MSO_Number_Times_Card_De], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9MS273523] ON [dbo].[MS273523] ([MSO_Source_Of_Document], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK12MS273523] ON [dbo].[MS273523] ([MSO_Source_Of_Document], [MSO_Doc_Type], [MSO_Doc_Number], [SEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8MS273523] ON [dbo].[MS273523] ([USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_InstanceGUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_EngineGUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_Doc_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[MSO_Doc_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[MSO_Source_Of_Document]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[MSO_TrxType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_FirstName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_MiddleName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_LastName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_CardExpDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_CardType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_CardName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_CardNumberPABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[MSO_IsCardValid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273523].[CRCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_Auth_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_Capture_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_CVV2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[PRBTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[EMail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[PHONNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[PRSTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShipTo_Zip]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShipFromZip]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_TaxAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_FreightAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_MiscAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273523].[MSO_L_AMTn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273523].[MSO_L_COSTn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_L_DESCn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273523].[MSO_L_DISCOUNTn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_L_PRODCODEn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[MSO_L_QTYn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273523].[MSO_L_TAXAMTn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_L_UOMn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_L_UPCn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_DESC_PABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_DESC1_PABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_DESC2_PABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_DESC3_PABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_DESC4_PABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_COMMENT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_COMMENT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_COMMENT3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_COMMENT4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_RespAuthCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_RespOrigID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_RespAVSADR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_RespAVSZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_RespCVV2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_RespCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_RespMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[MSO_TrxStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[MSO_IsBatched]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[MSO_IsSettled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[MSO_Number_Times_Card_De]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[MSO_Denied_Edited]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273523].[USERDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273523].[MSO_BookExpDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273523].[MSO_Last_Xmit_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273523].[MSO_Last_Xmit_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[MKTOPROC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_DLicense]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_Check_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ABA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_AcctType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273523].[MSO_Total_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273523].[MSO_Last_Settled_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273523].[MSO_Last_Settled_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[MSO_IsVoid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_Issue_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ACCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273523].[MSO_Source_Of_Orig]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_BankName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273523].[MSO_DateOfBirth]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_SSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShippingAddr1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShippingAddr2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShippingAddr3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShippingCity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShippingState]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShippingCountry]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273523].[MSO_ReviewDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273523].[MSO_NoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShippingFN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShippingMN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShippingLN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShippingPhone]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShippingEMail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273523].[MSO_ShippingFax]'
GO
GRANT SELECT ON  [dbo].[MS273523] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273523] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273523] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273523] TO [DYNGRP]
GO
