SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_RMA_Move_Lines_To_History]  @RecordType smallint,  @ReturnDocId char(16),  @LineSequence numeric(19,5),  @SprocStatus integer OUTPUT AS DECLARE @AuditItemSeq numeric(19,5),  @MinDate datetime, @MinDateD datetime, @MinDateT datetime,  @MoveToHistory smallint,  @LNSEQNBR numeric(19,5),  @SVC_Next_Line_SEQ_Number numeric (19,5),  @SVC_Prev_Line_SEQ_Number numeric(19,5),  @RETTYPE char(11), @RMA_Status smallint,  @RETSTAT char(3), @Received tinyint,  @Traveler_Printed tinyint, @SVC_Ready_To_Close tinyint,  @SVC_RMA_Reason_Code char(3), @SVC_RMA_Reason_Code_Desc char(31),  @NOTEINDX numeric(19,5), @RETORIG smallint,  @RETREF char(31), @SRVRECTYPE smallint,  @CALLNBR char(11), @EQPLINE int,  @LNITMSEQ int, @SVC_RMA_From_Service tinyint,  @SOPTYPE smallint, @SOPNUMBE char(21),  @CMPNTSEQ int, @SOP_Line_Item_Sequence int,  @ENTDTE datetime, @ENTTME datetime,  @ETADTE datetime, @ETATME datetime,  @Commit_Date datetime, @Commit_Time datetime,  @RETUDATE datetime, @Return_Time datetime,  @COMPDTE datetime, @COMPTME datetime,  @PRMDATE datetime, @REFRENCE char(31),  @USERID char(15), @OFFID char(11),  @LOCNCODE char(11), @RTRNNAME char(45),  @RETADDR1 char(61), @RETADDR2 char(61),  @RETADDR3 char(61), @RTRNCITY char(35),  @SVC_Return_State char(29), @RTRNZIP char(11), @Return_Country char(61),   @CUSTNMBR char(15), @CUSTNAME char(65),  @ADRSCODE char(15), @CONTACT char(61),  @ADDRESS1 char(61), @ADDRESS2 char(61),  @ADDRESS3 char(61), @CITY char(35),  @STATE char(29), @ZIPCODE char(11), @COUNTRY char(61),   @Bill_To_Customer char(15), @SVC_Bill_To_Address_Code char(15),  @CSTPONBR char(21), @QUANTITY numeric(19,5),  @DECPLQTY smallint, @UOFM char(9),  @ITEMNMBR char(31), @ITEMDESC char(101),  @UNITCOST numeric(19,5), @ORUNTCST numeric(19,5),  @EXTDCOST numeric(19,5), @OREXTCST numeric(19,5),  @UNITPRCE numeric(19,5), @ORUNTPRC numeric(19,5),  @XTNDPRCE numeric(19,5), @OXTNDPRC numeric(19,5),  @CUSTOWN tinyint, @FACTSEAL tinyint,  @ORDDOCID char(15), @TRANSLINESEQ int,  @STATUS smallint,   @Flat_Rate_Repair_Price numeric(19,5), @Orig_Flat_RepairPrice numeric(19,5),  @Repair_Price numeric(19,5), @Originating_Repair_Price numeric(19,5),  @NTE_Price numeric(19,5), @Originating_NTE_Price numeric(19,5),  @Repair_Cost numeric(19,5), @Originating_Repair_Cost numeric(19,5),  @Bill_of_Lading char(31), @SHIPMTHD char(15),  @Credit_SOP_Type smallint, @Credit_SOP_Number char(21),  @Credit_SOP_Line_Item_Seq int,   @Replace_SOP_Type smallint, @Replace_SOP_Number char(21),  @Replace_SOP_Line_Item_Se int, @Location_Code_Replacemen char(11),  @Replace_Item_Number char(31), @Replace_U_Of_M char(9),  @Replace_Price_Level char(11), @Replace_QTY numeric(19,5),  @Replace_Cost numeric(19,5), @Originating_Replace_Cost numeric(19,5),  @Replace_Price numeric(19,5), @Originating_Replace_Pric numeric(19,5),  @SOP_Number_Invoice char(21), @Item_Number_Invoice char(31),  @USERDEF1 char(21), @USERDEF2 char(21),   @USRDEF03 char(21), @USRDEF04 char(21),   @USRDEF05 char(21),  @CURRNIDX smallint, @DECPLCUR smallint,  @ODECPLCU smallint, @Return_Item_Number char(31),  @Return_Item_Description char(51), @Return_Location_Code char(11),  @Return_QTY numeric(19,5), @Return_U_Of_M char(9),   @RETCOST numeric(19,5), @Originating_Return_Cost numeric(19,5),  @SVC_Extended_Return_Cost numeric(19,5), @SVC_Orig_Ext_Return_Cost numeric(19,5),  @SVC_Return_Price_Level char(11), @SVC_Return_Price numeric(19,5),  @Originating_Return_Price numeric(19,5), @SVC_Extended_Return_Pric numeric(19,5),  @SVC_Orig_Ext_Return_Pric numeric(19,5), @SVC_FO_ID char(51),  @SVC_SCM_Complete smallint,  @svcRMAKitComponentFrom SMALLINT, @svcRMAComponentSeq INT, @CMPITQTY NUMERIC(19,5),  @QTYONHND NUMERIC(19,5), @QTYRTRND NUMERIC(19,5), @QTYINUSE NUMERIC(19,5), @QTYINSVC NUMERIC(19,5), @QTYDMGED NUMERIC(19,5)  declare @AuditComment char(100) declare @VoidStatus int declare @ClosedStatus int declare @VoidRetStatus varchar(3) declare @DefClosedStat varchar(3) declare @ActRMA_Status varchar(3) DECLARE @SVCFRMSTAT varchar(3), @SVCTOSTAT varchar(3), @DSCRPTION varchar(100), @AUDITUSERID varchar(15) DECLARE @CREATDDT datetime, @CREATETIME datetime DECLARE @StartOfLine numeric(19,5)  set @VoidStatus = 20 set @ClosedStatus = 10 set @VoidRetStatus = 'VOD' SET @MoveToHistory = (SELECT TOP 1 ISNULL(SVC_DistHistory_RMA,0) FROM SVC00998 WHERE SVC_DistHistory_RMA = 1)  SELECT @StartOfLine = LNITMSEQ FROM SVC05020 WHERE RETDOCID = @ReturnDocId and LNSEQNBR <> 0 EXEC SVC_RMA_Move_Audit_To_History @ReturnDocId, 0, @StartOfLine  IF @LineSequence > 0  begin  DECLARE RMA_Document_Line CURSOR  FOR  SELECT LNSEQNBR, SVC_Next_Line_SEQ_Number, SVC_Prev_Line_SEQ_Number, RETTYPE, RMA_Status,  RETSTAT, Received, Traveler_Printed, SVC_Ready_To_Close, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc,  NOTEINDX, RETORIG, RETREF, SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, SVC_RMA_From_Service, SOPTYPE, SOPNUMBE,  CMPNTSEQ, SOP_Line_Item_Sequence, ENTDTE, ENTTME, ETADTE, ETATME, Commit_Date, Commit_Time, RETUDATE, Return_Time, COMPDTE, COMPTME, PRMDATE,   REFRENCE, USERID, OFFID, LOCNCODE, RTRNNAME, RETADDR1, RETADDR2, RETADDR3, RTRNCITY, SVC_Return_State, RTRNZIP, Return_Country,  CUSTNMBR, CUSTNAME, ADRSCODE, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY,   Bill_To_Customer, SVC_Bill_To_Address_Code, CSTPONBR, QUANTITY, DECPLQTY, UOFM, ITEMNMBR, ITEMDESC,   UNITCOST, ORUNTCST, EXTDCOST, OREXTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, CUSTOWN, FACTSEAL, ORDDOCID, TRANSLINESEQ,  STATUS, Flat_Rate_Repair_Price, Orig_Flat_RepairPrice, Repair_Price, Originating_Repair_Price, NTE_Price, Originating_NTE_Price,   Repair_Cost, Originating_Repair_Cost, Bill_of_Lading, SHIPMTHD,   Credit_SOP_Type, Credit_SOP_Number, Credit_SOP_Line_Item_Seq, Replace_SOP_Type, Replace_SOP_Number, Replace_SOP_Line_Item_Se,   Location_Code_Replacemen, Replace_Item_Number, Replace_U_Of_M, Replace_Price_Level, Replace_QTY, Replace_Cost, Originating_Replace_Cost,  Replace_Price, Originating_Replace_Pric, SOP_Number_Invoice, Item_Number_Invoice, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05,  CURRNIDX, DECPLCUR, ODECPLCU, Return_Item_Number, Return_Item_Description, Return_Location_Code, Return_QTY, Return_U_Of_M,   RETCOST, Originating_Return_Cost, SVC_Extended_Return_Cost, SVC_Orig_Ext_Return_Cost, SVC_Return_Price_Level,   SVC_Return_Price, Originating_Return_Price, SVC_Extended_Return_Pric, SVC_Orig_Ext_Return_Pric,   SVC_FO_ID, SVC_SCM_Complete ,svcRMAKitComponentFrom ,svcRMAComponentSeq, CMPITQTY,   QTYONHND, QTYRTRND, QTYINUSE, QTYINSVC, QTYDMGED  FROM SVC05200   WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LineSequence  ORDER BY Return_Record_Type ASC, RETDOCID ASC, LNSEQNBR ASC  end  ELSE begin  DECLARE RMA_Document_Line CURSOR  FOR  SELECT LNSEQNBR, SVC_Next_Line_SEQ_Number, SVC_Prev_Line_SEQ_Number, RETTYPE, RMA_Status,  RETSTAT, Received, Traveler_Printed, SVC_Ready_To_Close, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc,  NOTEINDX, RETORIG, RETREF, SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, SVC_RMA_From_Service, SOPTYPE, SOPNUMBE,  CMPNTSEQ, SOP_Line_Item_Sequence, ENTDTE, ENTTME, ETADTE, ETATME, Commit_Date, Commit_Time, RETUDATE, Return_Time, COMPDTE, COMPTME, PRMDATE,   REFRENCE, USERID, OFFID, LOCNCODE, RTRNNAME, RETADDR1, RETADDR2, RETADDR3, RTRNCITY, SVC_Return_State, RTRNZIP, Return_Country,  CUSTNMBR, CUSTNAME, ADRSCODE, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY,   Bill_To_Customer, SVC_Bill_To_Address_Code, CSTPONBR, QUANTITY, DECPLQTY, UOFM, ITEMNMBR, ITEMDESC,   UNITCOST, ORUNTCST, EXTDCOST, OREXTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, CUSTOWN, FACTSEAL, ORDDOCID, TRANSLINESEQ,  STATUS, Flat_Rate_Repair_Price, Orig_Flat_RepairPrice, Repair_Price, Originating_Repair_Price, NTE_Price, Originating_NTE_Price,   Repair_Cost, Originating_Repair_Cost, Bill_of_Lading, SHIPMTHD,   Credit_SOP_Type, Credit_SOP_Number, Credit_SOP_Line_Item_Seq, Replace_SOP_Type, Replace_SOP_Number, Replace_SOP_Line_Item_Se,   Location_Code_Replacemen, Replace_Item_Number, Replace_U_Of_M, Replace_Price_Level, Replace_QTY, Replace_Cost, Originating_Replace_Cost,  Replace_Price, Originating_Replace_Pric, SOP_Number_Invoice, Item_Number_Invoice, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05,  CURRNIDX, DECPLCUR, ODECPLCU, Return_Item_Number, Return_Item_Description, Return_Location_Code, Return_QTY, Return_U_Of_M,   RETCOST, Originating_Return_Cost, SVC_Extended_Return_Cost, SVC_Orig_Ext_Return_Cost, SVC_Return_Price_Level,   SVC_Return_Price, Originating_Return_Price, SVC_Extended_Return_Pric, SVC_Orig_Ext_Return_Pric,   SVC_FO_ID, SVC_SCM_Complete ,svcRMAKitComponentFrom ,svcRMAComponentSeq, CMPITQTY,  QTYONHND, QTYRTRND, QTYINUSE, QTYINSVC, QTYDMGED  FROM SVC05200   WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType  ORDER BY Return_Record_Type ASC, RETDOCID ASC, LNSEQNBR ASC end  OPEN RMA_Document_Line FETCH NEXT FROM RMA_Document_Line INTO @LNSEQNBR, @SVC_Next_Line_SEQ_Number, @SVC_Prev_Line_SEQ_Number, @RETTYPE, @RMA_Status,  @RETSTAT, @Received, @Traveler_Printed, @SVC_Ready_To_Close, @SVC_RMA_Reason_Code, @SVC_RMA_Reason_Code_Desc,  @NOTEINDX, @RETORIG, @RETREF, @SRVRECTYPE, @CALLNBR, @EQPLINE, @LNITMSEQ, @SVC_RMA_From_Service, @SOPTYPE, @SOPNUMBE,  @CMPNTSEQ, @SOP_Line_Item_Sequence, @ENTDTE, @ENTTME, @ETADTE, @ETATME, @Commit_Date, @Commit_Time, @RETUDATE, @Return_Time, @COMPDTE, @COMPTME, @PRMDATE,   @REFRENCE, @USERID, @OFFID, @LOCNCODE, @RTRNNAME, @RETADDR1, @RETADDR2, @RETADDR3, @RTRNCITY, @SVC_Return_State, @RTRNZIP, @Return_Country,  @CUSTNMBR, @CUSTNAME, @ADRSCODE, @CONTACT, @ADDRESS1, @ADDRESS2, @ADDRESS3, @CITY, @STATE, @ZIPCODE, @COUNTRY,   @Bill_To_Customer, @SVC_Bill_To_Address_Code, @CSTPONBR, @QUANTITY, @DECPLQTY, @UOFM, @ITEMNMBR, @ITEMDESC,   @UNITCOST, @ORUNTCST, @EXTDCOST, @OREXTCST, @UNITPRCE, @ORUNTPRC, @XTNDPRCE, @OXTNDPRC, @CUSTOWN, @FACTSEAL, @ORDDOCID, @TRANSLINESEQ,  @STATUS, @Flat_Rate_Repair_Price, @Orig_Flat_RepairPrice, @Repair_Price, @Originating_Repair_Price, @NTE_Price, @Originating_NTE_Price,   @Repair_Cost, @Originating_Repair_Cost, @Bill_of_Lading, @SHIPMTHD,   @Credit_SOP_Type, @Credit_SOP_Number, @Credit_SOP_Line_Item_Seq, @Replace_SOP_Type, @Replace_SOP_Number, @Replace_SOP_Line_Item_Se,   @Location_Code_Replacemen, @Replace_Item_Number, @Replace_U_Of_M, @Replace_Price_Level, @Replace_QTY, @Replace_Cost, @Originating_Replace_Cost,  @Replace_Price, @Originating_Replace_Pric, @SOP_Number_Invoice, @Item_Number_Invoice, @USERDEF1, @USERDEF2, @USRDEF03, @USRDEF04, @USRDEF05,  @CURRNIDX, @DECPLCUR, @ODECPLCU, @Return_Item_Number, @Return_Item_Description, @Return_Location_Code, @Return_QTY, @Return_U_Of_M,   @RETCOST, @Originating_Return_Cost, @SVC_Extended_Return_Cost, @SVC_Orig_Ext_Return_Cost, @SVC_Return_Price_Level,   @SVC_Return_Price, @Originating_Return_Price, @SVC_Extended_Return_Pric, @SVC_Orig_Ext_Return_Pric,   @SVC_FO_ID, @SVC_SCM_Complete,@svcRMAKitComponentFrom , @svcRMAComponentSeq, @CMPITQTY,  @QTYONHND, @QTYRTRND, @QTYINUSE, @QTYINSVC, @QTYDMGED  IF @@FETCH_STATUS = 0 AND @RETTYPE <> ''  SELECT @DefClosedStat = Close_Status FROM SVC05501 WHERE RETTYPE = @RETTYPE  WHILE @@FETCH_STATUS=0 BEGIN  set @ActRMA_Status = @RMA_Status  set @VoidRetStatus = 'VOD'   IF @ActRMA_Status <> @VoidStatus  SET @AuditComment = 'Move to History via RMA Closing'  ELSE  begin  SET @AuditComment = 'RMA Voided'   IF @RETSTAT = @DefClosedStat  set @VoidRetStatus = @DefClosedStat  end   SET @SprocStatus = 0  IF EXISTS(SELECT RETDOCID FROM SVC35200 WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and svcRMAComponentSeq = @svcRMAComponentSeq)  BEGIN  UPDATE SVC35200 SET RETDOCID = @ReturnDocId, Return_Record_Type = @RecordType,  LNSEQNBR = @LNSEQNBR, SVC_Next_Line_SEQ_Number = @SVC_Next_Line_SEQ_Number, SVC_Prev_Line_SEQ_Number = @SVC_Prev_Line_SEQ_Number, RETTYPE = @RETTYPE, RMA_Status = @RMA_Status,  RETSTAT = @RETSTAT, Received = @Received, Traveler_Printed = @Traveler_Printed, SVC_Ready_To_Close = @SVC_Ready_To_Close, SVC_RMA_Reason_Code = @SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc = @SVC_RMA_Reason_Code_Desc,  NOTEINDX = @NOTEINDX, RETORIG = @RETORIG, RETREF = @RETREF, SRVRECTYPE = @SRVRECTYPE, CALLNBR = @CALLNBR, EQPLINE = @EQPLINE, LNITMSEQ = @LNITMSEQ, SVC_RMA_From_Service = @SVC_RMA_From_Service, SOPTYPE = @SOPTYPE, SOPNUMBE = @SOPNUMBE,  CMPNTSEQ = @CMPNTSEQ, SOP_Line_Item_Sequence =  @SOP_Line_Item_Sequence, ENTDTE =  @ENTDTE, ENTTME =  @ENTTME, ETADTE =  @ETADTE, ETATME =  @ETATME, Commit_Date =  @Commit_Date, Commit_Time =  @Commit_Time,  RETUDATE =  @RETUDATE, Return_Time =  @Return_Time, COMPDTE =  @COMPDTE, COMPTME =  @COMPTME, PRMDATE =  @PRMDATE, REFRENCE =   @REFRENCE, USERID =  @USERID, OFFID =  @OFFID, LOCNCODE =  @LOCNCODE,  RTRNNAME =  @RTRNNAME, RETADDR1 =  @RETADDR1, RETADDR2 =  @RETADDR2, RETADDR3 =  @RETADDR3, RTRNCITY =  @RTRNCITY, SVC_Return_State =  @SVC_Return_State, RTRNZIP =  @RTRNZIP, Return_Country =  @Return_Country,  CUSTNMBR =  @CUSTNMBR, CUSTNAME =  @CUSTNAME, ADRSCODE =  @ADRSCODE, CONTACT =  @CONTACT, ADDRESS1 =  @ADDRESS1, ADDRESS2 =  @ADDRESS2, ADDRESS3 =  @ADDRESS3, CITY =  @CITY, STATE =  @STATE, ZIPCODE =  @ZIPCODE, COUNTRY =  @COUNTRY,  Bill_To_Customer =  @Bill_To_Customer, SVC_Bill_To_Address_Code =  @SVC_Bill_To_Address_Code, CSTPONBR =  @CSTPONBR, QUANTITY =  @QUANTITY, DECPLQTY =  @DECPLQTY, UOFM =  @UOFM,  ITEMNMBR =  @ITEMNMBR, ITEMDESC =  @ITEMDESC, UNITCOST =  @UNITCOST, ORUNTCST =  @ORUNTCST, EXTDCOST =  @EXTDCOST, OREXTCST =  @OREXTCST, UNITPRCE =  @UNITPRCE, ORUNTPRC =  @ORUNTPRC, XTNDPRCE =  @XTNDPRCE, OXTNDPRC =  @OXTNDPRC,   CUSTOWN =  @CUSTOWN, FACTSEAL =  @FACTSEAL, ORDDOCID =  @ORDDOCID, TRANSLINESEQ =  @TRANSLINESEQ, STATUS =  @STATUS, Flat_Rate_Repair_Price =  @Flat_Rate_Repair_Price, Orig_Flat_RepairPrice =  @Orig_Flat_RepairPrice,  Repair_Price =  @Repair_Price, Originating_Repair_Price =  @Originating_Repair_Price, NTE_Price =  @NTE_Price, Originating_NTE_Price =  @Originating_NTE_Price, Repair_Cost =  @Repair_Cost, Originating_Repair_Cost =  @Originating_Repair_Cost,  Bill_of_Lading =  @Bill_of_Lading, SHIPMTHD =  @SHIPMTHD, Credit_SOP_Type =  @Credit_SOP_Type, Credit_SOP_Number =  @Credit_SOP_Number, Credit_SOP_Line_Item_Seq =  @Credit_SOP_Line_Item_Seq,   Replace_SOP_Type =  @Replace_SOP_Type, Replace_SOP_Number =  @Replace_SOP_Number, Replace_SOP_Line_Item_Se =  @Replace_SOP_Line_Item_Se, Location_Code_Replacemen =  @Location_Code_Replacemen,  Replace_Item_Number =  @Replace_Item_Number, Replace_U_Of_M =  @Replace_U_Of_M, Replace_Price_Level =  @Replace_Price_Level, Replace_QTY =  @Replace_QTY, Replace_Cost =  @Replace_Cost,   Originating_Replace_Cost =  @Originating_Replace_Cost, Replace_Price =  @Replace_Price, Originating_Replace_Pric =  @Originating_Replace_Pric,  SOP_Number_Invoice =  @SOP_Number_Invoice, Item_Number_Invoice =  @Item_Number_Invoice,   USERDEF1 =  @USERDEF1, USERDEF2 =  @USERDEF2, USRDEF03 =  @USRDEF03, USRDEF04 =  @USRDEF04, USRDEF05 =  @USRDEF05,  CURRNIDX =  @CURRNIDX, DECPLCUR =  @DECPLCUR, ODECPLCU =  @ODECPLCU, Return_Item_Number =  @Return_Item_Number, Return_Item_Description =  @Return_Item_Description, Return_Location_Code =  @Return_Location_Code,  Return_QTY =  @Return_QTY, Return_U_Of_M =  @Return_U_Of_M, RETCOST =  @RETCOST, Originating_Return_Cost =  @Originating_Return_Cost, SVC_Extended_Return_Cost =  @SVC_Extended_Return_Cost, SVC_Orig_Ext_Return_Cost =  @SVC_Orig_Ext_Return_Cost,  SVC_Return_Price_Level =  @SVC_Return_Price_Level, SVC_Return_Price =  @SVC_Return_Price, Originating_Return_Price =  @Originating_Return_Price,  SVC_Extended_Return_Pric =  @SVC_Extended_Return_Pric, SVC_Orig_Ext_Return_Pric =  @SVC_Orig_Ext_Return_Pric,  SVC_FO_ID =  @SVC_FO_ID, SVC_SCM_Complete =  @SVC_SCM_Complete,svcRMAKitComponentFrom =@svcRMAKitComponentFrom,  svcRMAComponentSeq = @svcRMAComponentSeq, CMPITQTY = @CMPITQTY,  QTYONHND = @QTYONHND, QTYRTRND = @QTYRTRND, QTYINUSE = @QTYINUSE, QTYINSVC = @QTYINSVC, QTYDMGED = @QTYDMGED  WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR  SET @SprocStatus = 2   END   ELSE  BEGIN  INSERT SVC35200 VALUES (@ReturnDocId, 2 , @LNSEQNBR, @SVC_Next_Line_SEQ_Number, @SVC_Prev_Line_SEQ_Number, @RETTYPE, @RMA_Status,  @RETSTAT, @Received, @Traveler_Printed, @SVC_Ready_To_Close, @SVC_RMA_Reason_Code, @SVC_RMA_Reason_Code_Desc,  @NOTEINDX, @RETORIG, @RETREF, @SRVRECTYPE, @CALLNBR, @EQPLINE, @LNITMSEQ, @SVC_RMA_From_Service, @SOPTYPE, @SOPNUMBE,  @CMPNTSEQ, @SOP_Line_Item_Sequence, @ENTDTE, @ENTTME, @ETADTE, @ETATME, @Commit_Date, @Commit_Time,  @RETUDATE, @Return_Time, @COMPDTE, @COMPTME, @PRMDATE, @REFRENCE, @USERID, @OFFID, @LOCNCODE,  @RTRNNAME, @RETADDR1, @RETADDR2, @RETADDR3, @RTRNCITY, @SVC_Return_State, @RTRNZIP, @Return_Country,  @CUSTNMBR, @CUSTNAME, @ADRSCODE, @CONTACT, @ADDRESS1, @ADDRESS2, @ADDRESS3, @CITY, @STATE, @ZIPCODE, @COUNTRY,  @Bill_To_Customer, @SVC_Bill_To_Address_Code, @CSTPONBR, @QUANTITY, @DECPLQTY, @UOFM,  @ITEMNMBR, @ITEMDESC, @UNITCOST, @ORUNTCST, @EXTDCOST, @OREXTCST, @UNITPRCE, @ORUNTPRC, @XTNDPRCE, @OXTNDPRC,   @CUSTOWN, @FACTSEAL, @ORDDOCID, @TRANSLINESEQ, @STATUS, @Flat_Rate_Repair_Price, @Orig_Flat_RepairPrice,  @Repair_Price, @Originating_Repair_Price, @NTE_Price, @Originating_NTE_Price, @Repair_Cost, @Originating_Repair_Cost,  @Bill_of_Lading, @SHIPMTHD, @Credit_SOP_Type, @Credit_SOP_Number, @Credit_SOP_Line_Item_Seq,   @Replace_SOP_Type, @Replace_SOP_Number, @Replace_SOP_Line_Item_Se, @Location_Code_Replacemen,  @Replace_Item_Number, @Replace_U_Of_M, @Replace_Price_Level, @Replace_QTY, @Replace_Cost,   @Originating_Replace_Cost, @Replace_Price, @Originating_Replace_Pric,  @SOP_Number_Invoice, @Item_Number_Invoice, @USERDEF1, @USERDEF2, @USRDEF03, @USRDEF04, @USRDEF05,  @CURRNIDX, @DECPLCUR, @ODECPLCU, @Return_Item_Number, @Return_Item_Description, @Return_Location_Code,  @Return_QTY, @Return_U_Of_M, @RETCOST, @Originating_Return_Cost, @SVC_Extended_Return_Cost, @SVC_Orig_Ext_Return_Cost,  @SVC_Return_Price_Level, @SVC_Return_Price, @Originating_Return_Price, @SVC_Extended_Return_Pric, @SVC_Orig_Ext_Return_Pric,  @SVC_FO_ID, @SVC_SCM_Complete, @svcRMAKitComponentFrom , @svcRMAComponentSeq, @CMPITQTY,  @QTYONHND, @QTYRTRND, @QTYINUSE, @QTYINSVC, @QTYDMGED)  SET @SprocStatus = 1   END  IF @SprocStatus > 0  BEGIN  IF NOT EXISTS(SELECT RETDOCID FROM SVC35001 WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR)  INSERT SVC35001 SELECT 2 , RETDOCID, LNSEQNBR, LINITMTYP, LNITMSEQ,   ITEMNMBR, ITEMDESC, SERLNMBR, QUANTITY, Received, Shipped  FROM SVC05001  WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR   IF NOT EXISTS(SELECT RETDOCID FROM SVC35255 WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and CMPNTSEQ = @svcRMAComponentSeq)  INSERT SVC35255 SELECT 2 , RETDOCID, LNSEQNBR,  QTYTYPE, SERLTQTY, Return_Item_Number, Return_Serial_Number, Return_Equipment_ID,  SLTSQNUM, BIN, RETCOST, SVC_Original_Serial, DATERECD, DTSEQNUM, TRXSORCE,  MARKED, POSTED, MFGDATE, EXPNDATE,CMPNTSEQ  FROM SVC05255   WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and CMPNTSEQ = @svcRMAComponentSeq   IF NOT EXISTS(SELECT RETDOCID FROM SVC35256 WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and CMPNTSEQ = @svcRMAComponentSeq)  INSERT SVC35256 SELECT 2 , RETDOCID, LNSEQNBR,  QTYTYPE, SERLTQTY, SLTSQNUM, Replace_Item_Number, Replace_Serial_Number, Replace_Equipment_ID,  BIN, Replace_Cost, MFGDATE, EXPNDATE,DATERECD, DTSEQNUM,CMPNTSEQ  FROM SVC05256  WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and CMPNTSEQ = @svcRMAComponentSeq   IF NOT EXISTS(SELECT RETDOCID FROM SVC35210 WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and CMPNTSEQ = @svcRMAComponentSeq)  INSERT SVC35210 SELECT 2 , RETDOCID, LNSEQNBR,  SVC_Process_SEQ_Number, SLTSQNUM, Return_QTY, SVC_Process_QTY, SVC_Process_Type,  Return_Disposition_Statu, SVC_Process_Status, SVC_Document_Number, SVC_IV_SEQ_Number,CMPNTSEQ, QTYTYPE  FROM SVC05210  WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and CMPNTSEQ = @svcRMAComponentSeq   IF @MoveToHistory = 1  IF NOT EXISTS(SELECT RETDOCID FROM SVC35030 WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and CMPNTSEQ = @svcRMAComponentSeq)  Begin  INSERT SVC35030 SELECT 2 , RETDOCID, LNSEQNBR,  LINITMTYP, SEQNUMBR, SVC_Process_SEQ_Number, SVC_Distribution_Type,  DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE,   POSTED, POSTEDDT, CMPNTSEQ  FROM SVC05030  WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and CMPNTSEQ = @svcRMAComponentSeq   UPDATE SVC35030 SET POSTED = 1, POSTEDDT = CONVERT(varchar(10),GETDATE(),102) + ' 00:00:00'  WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR  End   EXEC SVC_RMA_Move_Audit_To_History @ReturnDocId, @LNSEQNBR, 0   IF @ActRMA_Status = @VoidStatus AND @LNSEQNBR <> 0  begin  EXEC smGetMinDate @MinDate output   EXEC SVC_util_split_datetime @MinDate, @MinDateD output, @MinDateT output  SET @AuditItemSeq = (SELECT ISNULL(MAX(LNITMSEQ),0) + 1 FROM SVC35020 WHERE RETDOCID = @ReturnDocId)  IF @AuditItemSeq < (SELECT ISNULL(MAX(LNITMSEQ),0) + 1 FROM SVC05020 WHERE RETDOCID = @ReturnDocId)  SELECT @AuditItemSeq = ISNULL(MAX(LNITMSEQ),0) + 1 FROM SVC05020 WHERE RETDOCID = @ReturnDocId   IF @RETSTAT <> @DefClosedStat   INSERT INTO SVC35020 (RETDOCID, LNSEQNBR, LNITMSEQ, SVCFRMSTAT, SVCTOSTAT,  DSCRPTION, USERID, CREATDDT, CREATETIME)  VALUES (@ReturnDocId, @LNSEQNBR, @AuditItemSeq, @RETSTAT, @VoidRetStatus,   SUBSTRING(RTRIM(@ITEMNMBR) + ': ' + @AuditComment, 1,100),  @USERID, CONVERT(varchar(10),GETDATE(),102) + ' 00:00:00', @MinDateD + CONVERT(varchar(10),GETDATE(),108))  end   DELETE FROM SVC05020 WHERE RETDOCID = @ReturnDocId AND LNSEQNBR = @LNSEQNBR  DELETE FROM SVC05030 WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and CMPNTSEQ = @svcRMAComponentSeq  DELETE FROM SVC05210 WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and CMPNTSEQ = @svcRMAComponentSeq  DELETE FROM SVC05255 WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and CMPNTSEQ = @svcRMAComponentSeq  DELETE FROM SVC05256 WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and CMPNTSEQ = @svcRMAComponentSeq  DELETE FROM SVC05001 WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR  DELETE FROM SVC05200 WHERE RETDOCID = @ReturnDocId AND Return_Record_Type = @RecordType AND LNSEQNBR = @LNSEQNBR and svcRMAComponentSeq = @svcRMAComponentSeq  END   FETCH NEXT FROM RMA_Document_Line INTO @LNSEQNBR, @SVC_Next_Line_SEQ_Number, @SVC_Prev_Line_SEQ_Number, @RETTYPE, @RMA_Status,  @RETSTAT, @Received, @Traveler_Printed, @SVC_Ready_To_Close, @SVC_RMA_Reason_Code, @SVC_RMA_Reason_Code_Desc,  @NOTEINDX, @RETORIG, @RETREF, @SRVRECTYPE, @CALLNBR, @EQPLINE, @LNITMSEQ, @SVC_RMA_From_Service, @SOPTYPE, @SOPNUMBE,  @CMPNTSEQ, @SOP_Line_Item_Sequence, @ENTDTE, @ENTTME, @ETADTE, @ETATME, @Commit_Date, @Commit_Time, @RETUDATE, @Return_Time, @COMPDTE, @COMPTME, @PRMDATE,   @REFRENCE, @USERID, @OFFID, @LOCNCODE, @RTRNNAME, @RETADDR1, @RETADDR2, @RETADDR3, @RTRNCITY, @SVC_Return_State, @RTRNZIP, @Return_Country,  @CUSTNMBR, @CUSTNAME, @ADRSCODE, @CONTACT, @ADDRESS1, @ADDRESS2, @ADDRESS3, @CITY, @STATE, @ZIPCODE, @COUNTRY,   @Bill_To_Customer, @SVC_Bill_To_Address_Code, @CSTPONBR, @QUANTITY, @DECPLQTY, @UOFM, @ITEMNMBR, @ITEMDESC,   @UNITCOST, @ORUNTCST, @EXTDCOST, @OREXTCST, @UNITPRCE, @ORUNTPRC, @XTNDPRCE, @OXTNDPRC, @CUSTOWN, @FACTSEAL, @ORDDOCID, @TRANSLINESEQ,  @STATUS, @Flat_Rate_Repair_Price, @Orig_Flat_RepairPrice, @Repair_Price, @Originating_Repair_Price, @NTE_Price, @Originating_NTE_Price,   @Repair_Cost, @Originating_Repair_Cost, @Bill_of_Lading, @SHIPMTHD,   @Credit_SOP_Type, @Credit_SOP_Number, @Credit_SOP_Line_Item_Seq, @Replace_SOP_Type, @Replace_SOP_Number, @Replace_SOP_Line_Item_Se,   @Location_Code_Replacemen, @Replace_Item_Number, @Replace_U_Of_M, @Replace_Price_Level, @Replace_QTY, @Replace_Cost, @Originating_Replace_Cost,  @Replace_Price, @Originating_Replace_Pric, @SOP_Number_Invoice, @Item_Number_Invoice, @USERDEF1, @USERDEF2, @USRDEF03, @USRDEF04, @USRDEF05,  @CURRNIDX, @DECPLCUR, @ODECPLCU, @Return_Item_Number, @Return_Item_Description, @Return_Location_Code, @Return_QTY, @Return_U_Of_M,   @RETCOST, @Originating_Return_Cost, @SVC_Extended_Return_Cost, @SVC_Orig_Ext_Return_Cost, @SVC_Return_Price_Level,   @SVC_Return_Price, @Originating_Return_Price, @SVC_Extended_Return_Pric, @SVC_Orig_Ext_Return_Pric,   @SVC_FO_ID, @SVC_SCM_Complete,@svcRMAKitComponentFrom , @svcRMAComponentSeq, @CMPITQTY,  @QTYONHND, @QTYRTRND, @QTYINUSE, @QTYINSVC, @QTYDMGED END   IF @SprocStatus > 0 AND @LineSequence = 0 AND @AuditComment <> '' AND @ActRMA_Status <> @VoidStatus  BEGIN   EXEC SVC_RMA_Move_Audit_To_History @ReturnDocId, 0, 0   EXEC smGetMinDate @MinDate output   EXEC SVC_util_split_datetime @MinDate, @MinDateD output, @MinDateT output  SET @AuditItemSeq = (SELECT ISNULL(MAX(LNITMSEQ),0) + 1 FROM SVC35020 WHERE RETDOCID = @ReturnDocId)  INSERT INTO SVC35020 (RETDOCID, LNSEQNBR, LNITMSEQ, SVCFRMSTAT, SVCTOSTAT,  DSCRPTION, USERID, CREATDDT, CREATETIME)  VALUES (@ReturnDocId, 0, @AuditItemSeq, '', @RETSTAT,   @AuditComment,   @USERID, CONVERT(varchar(10),GETDATE(),102) + ' 00:00:00', @MinDateD + CONVERT(varchar(10),GETDATE(),108))  IF @@ERROR <> 0  set @SprocStatus = 7 END  close RMA_Document_Line deallocate RMA_Document_Line  update SVC05212 with (rowLock) set Return_Record_Type = 2 where RETDOCID = @ReturnDocId and LNSEQNBR = @LineSequence return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_Move_Lines_To_History] TO [DYNGRP]
GO