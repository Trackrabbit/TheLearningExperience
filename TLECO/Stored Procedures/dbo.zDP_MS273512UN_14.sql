SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273512UN_14] (@BS int, @MSO_Last_Xmit_Date datetime, @MSO_Last_Xmit_Date_RS datetime, @MSO_Last_Xmit_Date_RE datetime) AS /* 12.00.0311.000 */ set nocount on IF @MSO_Last_Xmit_Date_RS IS NULL BEGIN SELECT TOP 25  MSO_InstanceGUID, MSO_EngineGUID, MSO_Doc_Number, SEQNUMBR, MSO_Doc_Type, MSO_Source_Of_Document, BACHNUMB, BCHSOURC, MSO_TrxType, CUSTNMBR, MSO_FirstName, MSO_MiddleName, MSO_LastName, MSO_CardExpDate, MSO_CardType, MSO_CardName, MSO_CardNumberPABP, MSO_IsCardValid, CRCRDAMT, MSO_Auth_Amount, MSO_Capture_Amount, MSO_CVV2, PRBTADCD, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, EMail, PHONNAME, PRSTADCD, MSO_ShipTo_Zip, MSO_ShipFromZip, MSO_TaxAmount, MSO_FreightAmount, MSO_MiscAmount, MSO_L_AMTn, MSO_L_COSTn, MSO_L_DESCn, MSO_L_DISCOUNTn, MSO_L_PRODCODEn, MSO_L_QTYn, MSO_L_TAXAMTn, MSO_L_UOMn, MSO_L_UPCn, MSO_DESC_PABP, MSO_DESC1_PABP, MSO_DESC2_PABP, MSO_DESC3_PABP, MSO_DESC4_PABP, MSO_COMMENT1, MSO_COMMENT2, MSO_COMMENT3, MSO_COMMENT4, MSO_RespAuthCode, MSO_RespOrigID, MSO_RespAVSADR, MSO_RespAVSZIP, MSO_RespCVV2, MSO_RespCode, MSO_RespMSG, MSO_TrxStatus, MSO_IsBatched, MSO_IsSettled, MSO_Number_Times_Card_De, MSO_Denied_Edited, USERID, USERDATE, MSO_BookExpDate, MSO_Last_Xmit_Date, MSO_Last_Xmit_Time, MKTOPROC, MSO_DLicense, MSO_Check_Number, MSO_ABA, MSO_MICR, MSO_AcctType, MSO_Total_Amount, MSO_Last_Settled_Date, MSO_Last_Settled_Time, MSO_IsVoid, MSO_Issue_Number, MSO_Start_Date, MSO_ACCT, MSO_Source_Of_Orig, MSO_BankName, MSO_DateOfBirth, MSO_SSN, MSO_ShippingAddr1, MSO_ShippingAddr2, MSO_ShippingAddr3, MSO_ShippingCity, MSO_ShippingState, MSO_ShippingCountry, MSO_ReviewDate, MSO_NoteIndex, FAXNUMBR, MSO_ShippingFN, MSO_ShippingMN, MSO_ShippingLN, MSO_ShippingPhone, MSO_ShippingEMail, MSO_ShippingFax, DEX_ROW_ID, MSO_XMLText FROM .MS273512 WHERE ( MSO_Last_Xmit_Date > @MSO_Last_Xmit_Date ) ORDER BY MSO_Last_Xmit_Date ASC, DEX_ROW_ID ASC END ELSE IF @MSO_Last_Xmit_Date_RS = @MSO_Last_Xmit_Date_RE BEGIN SELECT TOP 25  MSO_InstanceGUID, MSO_EngineGUID, MSO_Doc_Number, SEQNUMBR, MSO_Doc_Type, MSO_Source_Of_Document, BACHNUMB, BCHSOURC, MSO_TrxType, CUSTNMBR, MSO_FirstName, MSO_MiddleName, MSO_LastName, MSO_CardExpDate, MSO_CardType, MSO_CardName, MSO_CardNumberPABP, MSO_IsCardValid, CRCRDAMT, MSO_Auth_Amount, MSO_Capture_Amount, MSO_CVV2, PRBTADCD, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, EMail, PHONNAME, PRSTADCD, MSO_ShipTo_Zip, MSO_ShipFromZip, MSO_TaxAmount, MSO_FreightAmount, MSO_MiscAmount, MSO_L_AMTn, MSO_L_COSTn, MSO_L_DESCn, MSO_L_DISCOUNTn, MSO_L_PRODCODEn, MSO_L_QTYn, MSO_L_TAXAMTn, MSO_L_UOMn, MSO_L_UPCn, MSO_DESC_PABP, MSO_DESC1_PABP, MSO_DESC2_PABP, MSO_DESC3_PABP, MSO_DESC4_PABP, MSO_COMMENT1, MSO_COMMENT2, MSO_COMMENT3, MSO_COMMENT4, MSO_RespAuthCode, MSO_RespOrigID, MSO_RespAVSADR, MSO_RespAVSZIP, MSO_RespCVV2, MSO_RespCode, MSO_RespMSG, MSO_TrxStatus, MSO_IsBatched, MSO_IsSettled, MSO_Number_Times_Card_De, MSO_Denied_Edited, USERID, USERDATE, MSO_BookExpDate, MSO_Last_Xmit_Date, MSO_Last_Xmit_Time, MKTOPROC, MSO_DLicense, MSO_Check_Number, MSO_ABA, MSO_MICR, MSO_AcctType, MSO_Total_Amount, MSO_Last_Settled_Date, MSO_Last_Settled_Time, MSO_IsVoid, MSO_Issue_Number, MSO_Start_Date, MSO_ACCT, MSO_Source_Of_Orig, MSO_BankName, MSO_DateOfBirth, MSO_SSN, MSO_ShippingAddr1, MSO_ShippingAddr2, MSO_ShippingAddr3, MSO_ShippingCity, MSO_ShippingState, MSO_ShippingCountry, MSO_ReviewDate, MSO_NoteIndex, FAXNUMBR, MSO_ShippingFN, MSO_ShippingMN, MSO_ShippingLN, MSO_ShippingPhone, MSO_ShippingEMail, MSO_ShippingFax, DEX_ROW_ID, MSO_XMLText FROM .MS273512 WHERE MSO_Last_Xmit_Date = @MSO_Last_Xmit_Date_RS AND ( MSO_Last_Xmit_Date > @MSO_Last_Xmit_Date ) ORDER BY MSO_Last_Xmit_Date ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MSO_InstanceGUID, MSO_EngineGUID, MSO_Doc_Number, SEQNUMBR, MSO_Doc_Type, MSO_Source_Of_Document, BACHNUMB, BCHSOURC, MSO_TrxType, CUSTNMBR, MSO_FirstName, MSO_MiddleName, MSO_LastName, MSO_CardExpDate, MSO_CardType, MSO_CardName, MSO_CardNumberPABP, MSO_IsCardValid, CRCRDAMT, MSO_Auth_Amount, MSO_Capture_Amount, MSO_CVV2, PRBTADCD, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, EMail, PHONNAME, PRSTADCD, MSO_ShipTo_Zip, MSO_ShipFromZip, MSO_TaxAmount, MSO_FreightAmount, MSO_MiscAmount, MSO_L_AMTn, MSO_L_COSTn, MSO_L_DESCn, MSO_L_DISCOUNTn, MSO_L_PRODCODEn, MSO_L_QTYn, MSO_L_TAXAMTn, MSO_L_UOMn, MSO_L_UPCn, MSO_DESC_PABP, MSO_DESC1_PABP, MSO_DESC2_PABP, MSO_DESC3_PABP, MSO_DESC4_PABP, MSO_COMMENT1, MSO_COMMENT2, MSO_COMMENT3, MSO_COMMENT4, MSO_RespAuthCode, MSO_RespOrigID, MSO_RespAVSADR, MSO_RespAVSZIP, MSO_RespCVV2, MSO_RespCode, MSO_RespMSG, MSO_TrxStatus, MSO_IsBatched, MSO_IsSettled, MSO_Number_Times_Card_De, MSO_Denied_Edited, USERID, USERDATE, MSO_BookExpDate, MSO_Last_Xmit_Date, MSO_Last_Xmit_Time, MKTOPROC, MSO_DLicense, MSO_Check_Number, MSO_ABA, MSO_MICR, MSO_AcctType, MSO_Total_Amount, MSO_Last_Settled_Date, MSO_Last_Settled_Time, MSO_IsVoid, MSO_Issue_Number, MSO_Start_Date, MSO_ACCT, MSO_Source_Of_Orig, MSO_BankName, MSO_DateOfBirth, MSO_SSN, MSO_ShippingAddr1, MSO_ShippingAddr2, MSO_ShippingAddr3, MSO_ShippingCity, MSO_ShippingState, MSO_ShippingCountry, MSO_ReviewDate, MSO_NoteIndex, FAXNUMBR, MSO_ShippingFN, MSO_ShippingMN, MSO_ShippingLN, MSO_ShippingPhone, MSO_ShippingEMail, MSO_ShippingFax, DEX_ROW_ID, MSO_XMLText FROM .MS273512 WHERE MSO_Last_Xmit_Date BETWEEN @MSO_Last_Xmit_Date_RS AND @MSO_Last_Xmit_Date_RE AND ( MSO_Last_Xmit_Date > @MSO_Last_Xmit_Date ) ORDER BY MSO_Last_Xmit_Date ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273512UN_14] TO [DYNGRP]
GO
