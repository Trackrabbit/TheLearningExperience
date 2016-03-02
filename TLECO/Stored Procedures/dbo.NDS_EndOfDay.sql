SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[NDS_EndOfDay]
   @SetupGUID varchar(51), @SettlementTime datetime 
 AS 
 BEGIN 
 DECLARE @MidnightTime datetime  
      DECLARE @SettlementDate datetime  
      DECLARE @MSO_Last_Settled_Date  datetime 
	  DECLARE @MSO_Total_Transactions int 
	  DECLARE @MSO_Total_Amount numeric(18,5) 
	  DECLARE @MSO_Total_Credit_Transac int 
	  DECLARE @MSO_Total_Credit_Amount numeric(18,5) 
	  DECLARE @MSO_Total_Sale_Transacti int 
	  DECLARE @MSO_Total_Sale_Amount numeric(18,5) 
	  DECLARE @CurrentSettlementDate datetime 
      BEGIN TRAN 
      SET @MidnightTime = '23:59:59.999' 
      SET @SettlementDate = (SELECT DATEADD(dd, DATEDIFF(dd, 0, GETDATE()), 0) + @SettlementTime) 
  SELECT TOP 1 @CurrentSettlementDate = MSO_Last_Xmit_Date FROM MS273505 WHERE MSO_Last_Xmit_Date <>   '1900-01-01 00:00:00.000' 
  and MSO_IsBatched <> 1   and MSO_IsVoid = 0 and (MSO_TrxType in (1,4,7)) and MSO_EngineGUID = @SetupGUID ORDER BY MSO_Last_Xmit_Date ASC 
     WHILE @CurrentSettlementDate < GETDATE() 
      BEGIN 
           SET @MSO_Total_Amount = 0 
           SET @MSO_Total_Transactions = 0 
           SET @MSO_Total_Credit_Transac = 0 
           SET @MSO_Total_Credit_Amount = 0 
           SET @MSO_Total_Sale_Transacti = 0 
           SET @MSO_Total_Sale_Amount = 0 
            SELECT  @MSO_Last_Settled_Date = t3.XmitDate, @MSO_Total_Transactions = sum(t3.NumTrxs), 
                @MSO_Total_Amount = sum(t3.Total), @MSO_Total_Credit_Transac = sum(t3.NumCredits), 
                  @MSO_Total_Credit_Amount = sum(t3.CreditTotal), @MSO_Total_Sale_Transacti = sum(t3.NumSales), 
                  @MSO_Total_Sale_Amount = sum(t3.SalesTotal) 
           FROM ( 
                  (SELECT 
                        t2.XmitDate, 0 as CreditTotal, sum(t2.CRCRDAMT) as SalesTotal, sum(t2.CRCRDAMT) as Total, 
                        0 as NumCredits, count(t2.MSO_InstanceGUID) as NumSales, count(t2.MSO_InstanceGUID) as NumTrxs 
                  FROM ( 
                        SELECT 
                              DATEADD(dd, DATEDIFF(dd, 0, t1.XmitTime), 0) as XmitDate, t1.MSO_InstanceGUID, t1.CRCRDAMT 
                        FROM ( 
                              SELECT MSO_InstanceGUID, MSO_TrxType, CRCRDAMT, 
            CASE 
            WHEN MSO_Last_Xmit_Time <= @SettlementTime THEN 
                  (MSO_Last_Xmit_Date + MSO_Last_Xmit_Time) 
            ELSE 
                  (MSO_Last_Xmit_Date + MSO_Last_Xmit_Time + (@MidnightTime - MSO_Last_Xmit_Time)) 
                  END as XmitTime 
                  FROM MS273505 
                  WHERE MSO_EngineGUID = @SetupGUID and (MSO_Last_Xmit_Date) = @CurrentSettlementDate 
                  and (MSO_TrxStatus = 1) and ((MSO_IsVoid = 0 and (MSO_TrxType in (1,4,7)))) 
                  ) t1 
                  ) t2 GROUP BY t2.XmitDate 
                  ) UNION ( 
                  SELECT 
                        t2.XmitDate, sum(t2.CRCRDAMT) as CreditTotal, 0 as SalesTotal, (sum(t2.CRCRDAMT) * -1) as Total, 
                        count(t2.MSO_InstanceGUID) as NumCredits, 0 as NumSales, count(t2.MSO_InstanceGUID) as NumTrxs 
                  FROM ( 
                        SELECT 
                              DATEADD(dd, DATEDIFF(dd, 0, t1.XmitTime), 0) as XmitDate, t1.MSO_InstanceGUID, t1.CRCRDAMT 
                        FROM ( 
                              SELECT MSO_InstanceGUID, MSO_TrxType, CRCRDAMT, 
                                    CASE 
                                          WHEN MSO_Last_Xmit_Time <= @SettlementTime THEN 
                                                (MSO_Last_Xmit_Date + MSO_Last_Xmit_Time) 
                                          ELSE 
                                                (MSO_Last_Xmit_Date + MSO_Last_Xmit_Time + (@MidnightTime - MSO_Last_Xmit_Time)) 
                                          END as XmitTime 
                              FROM MS273505 
                              WHERE MSO_EngineGUID = @SetupGUID and (MSO_Last_Xmit_Date) = @CurrentSettlementDate 
                              and (MSO_TrxStatus = 1) and (MSO_IsVoid = 0 and (MSO_TrxType in (6))) 
                        ) t1 
                  ) t2 GROUP BY t2.XmitDate 
                  ) UNION ( 
                  SELECT 
                        t4.XmitDate, 0 CreditTotal, 0 as SalesTotal, 0 Total, 0 NumCredits, 0 as NumSales, count(t4.MSO_InstanceGUID) as NumTrxs 
                  FROM ( 
                        SELECT 
                              DATEADD(dd, DATEDIFF(dd, 0, t1.XmitTime), 0) as XmitDate, t1.MSO_InstanceGUID, t1.CRCRDAMT 
                        FROM ( 
                              SELECT MSO_InstanceGUID, MSO_TrxType, CRCRDAMT, 
                                    CASE 
                                          WHEN MSO_Last_Xmit_Time <= @SettlementTime THEN 
                                                (MSO_Last_Xmit_Date + MSO_Last_Xmit_Time) 
                                          ELSE 
                                                (MSO_Last_Xmit_Date + MSO_Last_Xmit_Time + (@MidnightTime - MSO_Last_Xmit_Time)) 
                                    END as XmitTime 
                              FROM MS273505 
                              WHERE MSO_EngineGUID = @SetupGUID and (MSO_Last_Xmit_Date ) = @CurrentSettlementDate 
                              and (MSO_TrxStatus = 2) and (MSO_IsVoid = 1 and (MSO_TrxType in (1,2,4,5,6,7))) 
                        ) t1 
                  ) t4 GROUP BY t4.XmitDate 
                  ) 
            ) t3 GROUP BY t3.XmitDate 
        IF @MSO_Last_Settled_Date IS NOT NULL or @MSO_Last_Settled_Date <> '' 
        BEGIN 
        IF NOT EXISTS(SELECT 1 FROM  MS273515 WHERE MSO_Last_Settled_Time = @SettlementTime AND MSO_Last_Settled_Date = @MSO_Last_Settled_Date    AND 
            MSO_EngineGUID = @SetupGUID) 
        BEGIN 
        INSERT INTO MS273515 
                  (MSO_Last_Settled_Time, MSO_Last_Settled_Date, MSO_EngineGUID, MSO_Total_Transactions, MSO_Total_Amount, MSO_Total_Credit_Transac, 
               MSO_Total_Credit_Amount, MSO_Total_Sale_Transacti, MSO_Total_Sale_Amount, USERDATE, USERID) 
                  VALUES( 
                  @SettlementTime, 
                  @MSO_Last_Settled_Date, 
                  @SetupGUID, 
            @MSO_Total_Transactions, 
            @MSO_Total_Amount, 
            @MSO_Total_Credit_Transac, 
            @MSO_Total_Credit_Amount, 
            @MSO_Total_Sale_Transacti, 
            @MSO_Total_Sale_Amount, 
            CONVERT(varchar(20), GETDATE(), 101), 
            'sa' 
                  ) 
            END 
       ELSE 
            BEGIN 
            UPDATE MS273515 
            SET 
            MSO_Total_Transactions = MSO_Total_Transactions + @MSO_Total_Transactions, 
            MSO_Total_Amount = MSO_Total_Amount + @MSO_Total_Amount, 
            MSO_Total_Credit_Transac = MSO_Total_Credit_Transac + @MSO_Total_Credit_Transac, 
            MSO_Total_Credit_Amount = MSO_Total_Credit_Amount + @MSO_Total_Credit_Amount, 
            MSO_Total_Sale_Transacti = MSO_Total_Sale_Transacti + @MSO_Total_Sale_Transacti, 
            MSO_Total_Sale_Amount = MSO_Total_Sale_Amount + @MSO_Total_Sale_Amount 
            WHERE 
            MSO_Last_Settled_Time = @SettlementTime 
            AND MSO_Last_Settled_Date = @MSO_Last_Settled_Date 
            AND MSO_EngineGUID = @SetupGUID 
            END 
     END   
      IF @@ERROR <> 0 
      BEGIN 
            ROLLBACK TRAN 
            return 10 
      END 
      SET @CurrentSettlementDate = DATEADD(day,1,@CurrentSettlementDate)       
    END 
  INSERT INTO MS273512 
  (MSO_InstanceGUID, MSO_EngineGUID, MSO_Doc_Number, SEQNUMBR, MSO_Doc_Type, MSO_Source_Of_Document, BACHNUMB, BCHSOURC, MSO_TrxType, CUSTNMBR, 
  MSO_FirstName, MSO_MiddleName, MSO_LastName, MSO_CardExpDate, MSO_CardType, MSO_CardName, MSO_CardNumberPABP, 
  MSO_IsCardValid,CRCRDAMT,MSO_Auth_Amount, 
  MSO_Capture_Amount, MSO_CVV2, PRBTADCD, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, EMail, PHONNAME, PRSTADCD, MSO_ShipTo_Zip, 
  MSO_ShipFromZip, MSO_TaxAmount, MSO_FreightAmount, MSO_MiscAmount, MSO_L_AMTn, MSO_L_COSTn, MSO_L_DESCn, MSO_L_DISCOUNTn, MSO_L_PRODCODEn, 
  MSO_L_QTYn, MSO_L_TAXAMTn, MSO_L_UOMn, MSO_L_UPCn, MSO_DESC_PABP, MSO_DESC1_PABP, MSO_DESC2_PABP, MSO_DESC3_PABP, MSO_DESC4_PABP, MSO_COMMENT1, 
  MSO_COMMENT2, MSO_COMMENT3, 
  MSO_COMMENT4, MSO_RespAuthCode, MSO_RespOrigID, MSO_RespAVSADR, MSO_RespAVSZIP, MSO_RespCVV2, MSO_RespCode, MSO_RespMSG, MSO_TrxStatus, 
  MSO_IsBatched, 
  MSO_IsSettled, MSO_Number_Times_Card_De, MSO_Denied_Edited, USERID, USERDATE, MSO_BookExpDate, MSO_Last_Xmit_Date, MSO_Last_Xmit_Time, MKTOPROC, 
  MSO_DLicense, MSO_Check_Number, MSO_ABA, MSO_MICR, MSO_AcctType,MSO_Total_Amount, MSO_Last_Settled_Date, MSO_Last_Settled_Time, MSO_IsVoid, 
  MSO_Issue_Number,
  MSO_Start_Date, MSO_ACCT, MSO_Source_Of_Orig, MSO_BankName, MSO_DateOfBirth, MSO_SSN, MSO_ShippingAddr1, MSO_ShippingAddr2, MSO_ShippingAddr3, 
  MSO_ShippingCity, MSO_ShippingState, MSO_ShippingCountry, MSO_ReviewDate, MSO_NoteIndex, FAXNUMBR, MSO_ShippingFN, MSO_ShippingMN, MSO_ShippingLN, 
      MSO_ShippingPhone,MSO_ShippingEMail,MSO_ShippingFax,MSO_XMLText) 
      ( 
       SELECT 
       MSO_InstanceGUID, MSO_EngineGUID, MSO_Doc_Number, SEQNUMBR, MSO_Doc_Type, MSO_Source_Of_Document, BACHNUMB, BCHSOURC, MSO_TrxType, CUSTNMBR, 
       MSO_FirstName, MSO_MiddleName, MSO_LastName, MSO_CardExpDate, MSO_CardType, MSO_CardName, MSO_CardNumberPABP, MSO_IsCardValid, CRCRDAMT, 
       MSO_Auth_Amount, 
       MSO_Capture_Amount, MSO_CVV2, PRBTADCD, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, EMail, PHONNAME, PRSTADCD, MSO_ShipTo_Zip, 
       MSO_ShipFromZip, MSO_TaxAmount, MSO_FreightAmount, MSO_MiscAmount, MSO_L_AMTn, MSO_L_COSTn, MSO_L_DESCn, MSO_L_DISCOUNTn, MSO_L_PRODCODEn, 
       MSO_L_QTYn, MSO_L_TAXAMTn, MSO_L_UOMn, MSO_L_UPCn, MSO_DESC_PABP, MSO_DESC1_PABP, MSO_DESC2_PABP, MSO_DESC3_PABP, MSO_DESC4_PABP, 
       MSO_COMMENT1, MSO_COMMENT2, MSO_COMMENT3, 
       MSO_COMMENT4, MSO_RespAuthCode, MSO_RespOrigID, MSO_RespAVSADR, MSO_RespAVSZIP, MSO_RespCVV2, MSO_RespCode, MSO_RespMSG, MSO_TrxStatus, 
       MSO_IsBatched, 
       1 AS MSO_IsSettled, MSO_Number_Times_Card_De, MSO_Denied_Edited, USERID, USERDATE, MSO_BookExpDate, MSO_Last_Xmit_Date, MSO_Last_Xmit_Time, 
       MKTOPROC, 
       MSO_DLicense, MSO_Check_Number, MSO_ABA, MSO_MICR, MSO_AcctType, 0 AS MSO_Total_Amount, MSO_Last_Xmit_Date AS MSO_Last_Settled_Date, 
		@SettlementTime 
       AS MSO_Last_Settled_Time, MSO_IsVoid, MSO_Issue_Number, 
       MSO_Start_Date, MSO_ACCT, MSO_Source_Of_Orig, MSO_BankName, MSO_DateOfBirth, MSO_SSN, MSO_ShippingAddr1, MSO_ShippingAddr2, 
       MSO_ShippingAddr3, 
       MSO_ShippingCity, '' AS MSO_ShippingState, MSO_ShippingCountry, '1900-01-01 00:00:00' AS MSO_ReviewDate, 0 AS MSO_NoteIndex, FAXNUMBR, 
       MSO_ShippingFN,MSO_ShippingMN,MSO_ShippingLN, MSO_ShippingPhone,MSO_ShippingEMail,MSO_ShippingFax,MSO_XMLText 
       FROM MS273505 
            WHERE MSO_EngineGUID = @SetupGUID and (MSO_Last_Xmit_Date + MSO_Last_Xmit_Time) <= @SettlementDate 
            and (MSO_IsVoid = 0 and MSO_TrxStatus <> 0 and (MSO_TrxType in (1,4,6,7))) 
      ) 
      IF @@ERROR <> 0 
      BEGIN 
            ROLLBACK TRAN 
            return 13 
      END 
      DELETE FROM MS273505 WHERE MSO_InstanceGUID in ( 
            SELECT MSO_InstanceGUID FROM MS273505 
            WHERE MSO_EngineGUID = @SetupGUID and (MSO_Last_Xmit_Date + MSO_Last_Xmit_Time) <= @SettlementDate 
            and (MSO_IsVoid = 0 and MSO_TrxStatus <> 0 and (MSO_TrxType in (1,4,6,7))) 
      ) 
      IF @@ERROR <> 0 
      BEGIN 
            ROLLBACK TRAN 
            return 14 
      END 
      INSERT INTO MS273512 
      (MSO_InstanceGUID, MSO_EngineGUID, MSO_Doc_Number, SEQNUMBR, MSO_Doc_Type, MSO_Source_Of_Document, BACHNUMB, BCHSOURC, MSO_TrxType, CUSTNMBR, 
      MSO_FirstName, MSO_MiddleName, MSO_LastName, MSO_CardExpDate, MSO_CardType, MSO_CardName, MSO_CardNumberPABP, MSO_IsCardValid, CRCRDAMT, 
   MSO_Auth_Amount, 
      MSO_Capture_Amount, MSO_CVV2, PRBTADCD, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, EMail, PHONNAME, PRSTADCD, MSO_ShipTo_Zip, 
      MSO_ShipFromZip, MSO_TaxAmount, MSO_FreightAmount, MSO_MiscAmount, MSO_L_AMTn, MSO_L_COSTn, MSO_L_DESCn, MSO_L_DISCOUNTn, MSO_L_PRODCODEn, 
      MSO_L_QTYn, MSO_L_TAXAMTn, MSO_L_UOMn, MSO_L_UPCn, MSO_DESC_PABP, MSO_DESC1_PABP, MSO_DESC2_PABP, MSO_DESC3_PABP, MSO_DESC4_PABP, MSO_COMMENT1, 
   MSO_COMMENT2, MSO_COMMENT3, 
      MSO_COMMENT4, MSO_RespAuthCode, MSO_RespOrigID, MSO_RespAVSADR, MSO_RespAVSZIP, MSO_RespCVV2, MSO_RespCode, MSO_RespMSG, MSO_TrxStatus, 
   MSO_IsBatched, 
   MSO_IsSettled, MSO_Number_Times_Card_De, MSO_Denied_Edited, USERID, USERDATE, MSO_BookExpDate, MSO_Last_Xmit_Date, MSO_Last_Xmit_Time, MKTOPROC, 
   MSO_DLicense, MSO_Check_Number, MSO_ABA, MSO_MICR, MSO_AcctType,MSO_Total_Amount, MSO_Last_Settled_Date, MSO_Last_Settled_Time, MSO_IsVoid, 
	MSO_Issue_Number, 
   MSO_Start_Date, MSO_ACCT, MSO_Source_Of_Orig, MSO_BankName, MSO_DateOfBirth, MSO_SSN, MSO_ShippingAddr1, MSO_ShippingAddr2, MSO_ShippingAddr3, 
      MSO_ShippingCity, MSO_ShippingState, MSO_ShippingCountry, MSO_ReviewDate, MSO_NoteIndex, FAXNUMBR,MSO_ShippingFN,MSO_ShippingMN,MSO_ShippingLN,
      MSO_ShippingPhone,MSO_ShippingEMail,MSO_ShippingFax,MSO_XMLText) 
      ( 
      SELECT 
      MSO_InstanceGUID, MSO_EngineGUID, MSO_Doc_Number, SEQNUMBR, MSO_Doc_Type, MSO_Source_Of_Document, BACHNUMB, BCHSOURC, MSO_TrxType, CUSTNMBR, 
      MSO_FirstName, MSO_MiddleName, MSO_LastName, MSO_CardExpDate, MSO_CardType, MSO_CardName, MSO_CardNumberPABP, MSO_IsCardValid, CRCRDAMT, 
   MSO_Auth_Amount, 
      MSO_Capture_Amount, MSO_CVV2, PRBTADCD, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, EMail, PHONNAME, PRSTADCD, MSO_ShipTo_Zip, 
      MSO_ShipFromZip, MSO_TaxAmount, MSO_FreightAmount, MSO_MiscAmount, MSO_L_AMTn, MSO_L_COSTn, MSO_L_DESCn, MSO_L_DISCOUNTn, MSO_L_PRODCODEn, 
      MSO_L_QTYn, MSO_L_TAXAMTn, MSO_L_UOMn, MSO_L_UPCn, MSO_DESC_PABP, MSO_DESC1_PABP, MSO_DESC2_PABP, MSO_DESC3_PABP, MSO_DESC4_PABP, 
   MSO_COMMENT1, MSO_COMMENT2, MSO_COMMENT3, 
      MSO_COMMENT4, MSO_RespAuthCode, MSO_RespOrigID, MSO_RespAVSADR, MSO_RespAVSZIP, MSO_RespCVV2, MSO_RespCode, MSO_RespMSG, MSO_TrxStatus, 
   MSO_IsBatched, 
    1 AS MSO_IsSettled, MSO_Number_Times_Card_De, MSO_Denied_Edited, USERID, USERDATE, MSO_BookExpDate, MSO_Last_Xmit_Date, MSO_Last_Xmit_Time, 
   MKTOPROC, MSO_DLicense, MSO_Check_Number, MSO_ABA, MSO_MICR, MSO_AcctType,0 AS MSO_Total_Amount, '1900-01-01 00:00:00' AS MSO_Last_Settled_Date,
  '1900-01-01 00:00:00' AS MSO_Last_Settled_Time, MSO_IsVoid, MSO_Issue_Number, 
   MSO_Start_Date, MSO_ACCT, MSO_Source_Of_Orig, MSO_BankName, MSO_DateOfBirth, MSO_SSN, MSO_ShippingAddr1, MSO_ShippingAddr2, 
      MSO_ShippingAddr3, MSO_ShippingCity, '' AS MSO_ShippingState, MSO_ShippingCountry, '1900-01-01 00:00:00' AS MSO_ReviewDate, 0 AS 
   MSO_NoteIndex,FAXNUMBR,MSO_ShippingFN,MSO_ShippingMN,MSO_ShippingLN, 
      MSO_ShippingPhone,MSO_ShippingEMail,MSO_ShippingFax,MSO_XMLText 
      FROM MS273505 
      WHERE MSO_EngineGUID = @SetupGUID and (MSO_Last_Xmit_Date + MSO_Last_Xmit_Time) <= @SettlementDate and (MSO_IsVoid <> 0) 
      ) 
      IF @@ERROR <> 0 
      BEGIN 
            ROLLBACK TRAN 
            return 15 
      END 
      DELETE FROM MS273505 WHERE MSO_InstanceGUID in ( 
            SELECT MSO_InstanceGUID FROM MS273505 
            WHERE MSO_EngineGUID = @SetupGUID and (MSO_Last_Xmit_Date + MSO_Last_Xmit_Time) <= @SettlementDate and (MSO_IsVoid <> 0) 
      ) 
      IF @@ERROR <> 0 
      BEGIN 
      ROLLBACK TRAN 
      return 11 
      END 
      IF @@ERROR <> 0 
      BEGIN 
      ROLLBACK TRAN 
      return 12 
      END  
  COMMIT TRAN 
  END 
GO
GRANT EXECUTE ON  [dbo].[NDS_EndOfDay] TO [DYNGRP]
GO
