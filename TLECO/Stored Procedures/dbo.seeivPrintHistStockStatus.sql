SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeivPrintHistStockStatus]   @in_AsOfDate SMALLDATETIME,  @in_UseGLPostDate TINYINT,  @in_StartLocationCode VARCHAR(11),  @in_EndLocationCode VARCHAR(11),  @in_IncZeroQtyOnAsOfDate TINYINT,  @in_StartItemNumber VARCHAR(31),  @in_EndItemNumber VARCHAR(31),  @in_StartLongDesc VARCHAR(101),  @in_EndLongDesc VARCHAR(101),  @in_StartGenericDesc VARCHAR(11),  @in_EndGenericDesc VARCHAR(11),  @in_StartAcctNo VARCHAR(45),  @in_EndAcctNo VARCHAR(45),  @in_StartClass VARCHAR(11),  @in_EndClass VARCHAR(11),  @in_StartUserCat1 VARCHAR(11),  @in_EndUserCat1 VARCHAR(11),  @in_StartUserCat2 VARCHAR(11),  @in_EndUserCat2 VARCHAR(11),  @in_StartUserCat3 VARCHAR(11),  @in_EndUserCat3 VARCHAR(11),  @in_StartUserCat4 VARCHAR(11),  @in_EndUserCat4 VARCHAR(11),  @in_StartUserCat5 VARCHAR(11),  @in_EndUserCat5 VARCHAR(11),  @in_StartUserCat6 VARCHAR(11),  @in_EndUserCat6 VARCHAR(11),  @in_CostForItem TINYINT AS  DECLARE @minPostedDate SMALLDATETIME   SELECT @minPostedDate = MIN(POSTEDDT) FROM IV30100   SELECT  'Header' AS Record_Status,  '' AS Line_Status, 0 AS Line_No,  IV_ItemMaster.ITEMNMBR AS Item_Number,   IV_ItemMaster.ITEMDESC AS Item_Desc,  IV_ItemMasterQTY.LOCNCODE AS Site,  GL_IndexMaster.ACTNUMST AS AcctNo,  NULL AS Document_Date,  'Current Quantity' AS Document_Number,  0 AS Document_Type,  '' AS Audit_Trail,  '' AS Mod,   IV_ItemMaster.VCTNMTHD AS Valuation_Method,  CASE WHEN IV_ItemMaster.VCTNMTHD IN (1,2) THEN ISNULL(IV_Purchase_Receipts.QtyOnHand,0)  ELSE ISNULL(IV_ItemMasterQTY.QTYONHND,0) END AS Quantity,   CASE WHEN IV_ItemMasterQTY.QTYONHND IS NULL OR IV_ItemMasterQTY.QTYONHND = 0 THEN 0  WHEN IV_Purchase_Receipts.QtyOnHand IS NULL OR IV_Purchase_Receipts.QtyOnHand = 0 THEN 0  WHEN IV_ItemMaster.VCTNMTHD IN (1,2) THEN ISNULL((IV_Purchase_Receipts.Extended_Cost / IV_Purchase_Receipts.QtyOnHand),0)  WHEN IV_ItemMaster.VCTNMTHD = 3 THEN ISNULL(IV_ItemMaster.CURRCOST,0)  ELSE ISNULL(IV_ItemMaster.STNDCOST,0) END AS Unit_Cost,    CASE WHEN IV_ItemMaster.VCTNMTHD IN (1,2) THEN   CASE WHEN IV_Purchase_Receipts.QtyOnHand = 0.00 THEN 0.00  ELSE ISNULL((IV_Purchase_Receipts.Extended_Cost / IV_Purchase_Receipts.QtyOnHand),0) END  WHEN IV_ItemMaster.VCTNMTHD = 3 THEN ISNULL(IV_ItemMaster.CURRCOST,0)  ELSE ISNULL(IV_ItemMaster.STNDCOST,0) END AS Footer_UnitCost,    CASE WHEN IV_ItemMaster.VCTNMTHD IN (1,2) THEN ISNULL(IV_Purchase_Receipts.Extended_Cost,0)  ELSE ISNULL((CASE WHEN IV_ItemMaster.VCTNMTHD = 3 THEN IV_ItemMaster.CURRCOST ELSE IV_ItemMaster.STNDCOST END) * IV_ItemMasterQTY.QTYONHND,0)   END AS Extended_Cost,   ISNULL((CASE WHEN IV_ItemMaster.VCTNMTHD = 3 THEN IV_ItemMaster.CURRCOST ELSE IV_ItemMaster.STNDCOST END) * IV_ItemMasterQTY.QTYONHND,0)  AS Extended_Price,  CAST(0 AS NUMERIC(19,5)) AS Extended_Price_Hdr,  CASE WHEN @in_CostForItem = 1 THEN @minPostedDate ELSE GETDATE() END AS PostDate  INTO #ttHeader  FROM IV00101 AS IV_ItemMaster  LEFT JOIN IV00102 AS IV_ItemMasterQTY ON IV_ItemMasterQTY.ITEMNMBR = IV_ItemMaster.ITEMNMBR  LEFT JOIN ( SELECT ITEMNMBR, TRXLOCTN, SUM(QTYRECVD - QTYSOLD) AS QtyOnHand,   SUM((QTYRECVD - QTYSOLD) * UNITCOST) AS Extended_Cost  FROM IV10200  WHERE QTYTYPE = 1  GROUP BY ITEMNMBR, TRXLOCTN) AS IV_Purchase_Receipts   ON IV_ItemMaster.ITEMNMBR = IV_Purchase_Receipts.ITEMNMBR  AND IV_ItemMasterQTY.LOCNCODE = IV_Purchase_Receipts.TRXLOCTN  LEFT JOIN GL00105 AS GL_IndexMaster ON IV_ItemMaster.IVIVINDX = GL_IndexMaster.ACTINDX   WHERE (@in_StartLocationCode = 'ALL' OR IV_ItemMasterQTY.LOCNCODE >= @in_StartLocationCode)  AND (@in_EndLocationCode = 'ALL' OR IV_ItemMasterQTY.LOCNCODE <= @in_EndLocationCode)  AND (@in_StartItemNumber = 'ALL' OR IV_ItemMaster.ITEMNMBR >= @in_StartItemNumber)  AND (@in_EndItemNumber = 'ALL' OR IV_ItemMaster.ITEMNMBR <= @in_EndItemNumber)  AND (@in_StartLongDesc = 'ALL' OR IV_ItemMaster.ITEMDESC >= @in_StartLongDesc)  AND (@in_EndLongDesc = 'ALL' OR IV_ItemMaster.ITEMDESC <= @in_EndLongDesc)  AND (@in_StartGenericDesc = 'ALL' OR IV_ItemMaster.ITMGEDSC >= @in_StartGenericDesc)  AND (@in_EndGenericDesc = 'ALL' OR IV_ItemMaster.ITMGEDSC <= @in_EndGenericDesc)  AND (@in_StartAcctNo = 'ALL' OR GL_IndexMaster.ACTNUMST >= @in_StartAcctNo)  AND (@in_EndAcctNo = 'ALL' OR GL_IndexMaster.ACTNUMST <= @in_EndAcctNo)  AND (@in_StartClass = 'ALL' OR IV_ItemMaster.ITMCLSCD >= @in_StartClass)  AND (@in_EndClass = 'ALL' OR IV_ItemMaster.ITMCLSCD <= @in_EndClass)  AND (@in_StartUserCat1 = 'ALL' OR IV_ItemMaster.USCATVLS_1 >= @in_StartUserCat1)  AND (@in_EndUserCat1 = 'ALL' OR IV_ItemMaster.USCATVLS_1 <= @in_EndUserCat1)  AND (@in_StartUserCat2 = 'ALL' OR IV_ItemMaster.USCATVLS_2 >= @in_StartUserCat2)  AND (@in_EndUserCat2 = 'ALL' OR IV_ItemMaster.USCATVLS_2 <= @in_EndUserCat2)  AND (@in_StartUserCat3 = 'ALL' OR IV_ItemMaster.USCATVLS_3 >= @in_StartUserCat3)  AND (@in_EndUserCat3 = 'ALL' OR IV_ItemMaster.USCATVLS_3<= @in_EndUserCat3)  AND (@in_StartUserCat4 = 'ALL' OR IV_ItemMaster.USCATVLS_4 >= @in_StartUserCat4)  AND (@in_EndUserCat4 = 'ALL' OR IV_ItemMaster.USCATVLS_4 <= @in_EndUserCat4)  AND (@in_StartUserCat5 = 'ALL' OR IV_ItemMaster.USCATVLS_5 >= @in_StartUserCat5)  AND (@in_EndUserCat5 = 'ALL' OR IV_ItemMaster.USCATVLS_5 <= @in_EndUserCat5)  AND (@in_StartUserCat6 = 'ALL' OR IV_ItemMaster.USCATVLS_6 >= @in_StartUserCat6)  AND (@in_EndUserCat6 = 'ALL' OR IV_ItemMaster.USCATVLS_6 <= @in_EndUserCat6)  AND IV_ItemMaster.ITEMTYPE <= 2   AND IV_ItemMaster.KPTRXHST <> 0   AND IV_ItemMasterQTY.RCRDTYPE = 2  AND IV_ItemMasterQTY.QTYONHND IS NOT NULL   UPDATE hdr  SET hdr.Extended_Price = CASE WHEN Valuation_Method IN (3,4,5) THEN  CASE WHEN @in_CostForItem <> 2 THEN (hdr.Quantity * hdr.Unit_Cost)  ELSE CASE WHEN Valuation_Method = 3 THEN (hdr.Quantity * IV_ItemMaster.CURRCOST)  ELSE (hdr.Quantity * IV_ItemMaster.STNDCOST) END  END  ELSE hdr.Extended_Cost  END   FROM #ttHeader AS hdr  INNER JOIN IV00101 AS IV_ItemMaster ON hdr.Item_Number = IV_ItemMaster.ITEMNMBR   SELECT 'Detail' AS Record_Status,   CASE WHEN IV_TrxHistLine.DOCTYPE = 8 THEN '>'   WHEN IV_TrxHistLine.DOCTYPE = 9 THEN '#'  WHEN IV_TrxHistLine.DOCTYPE = 11 OR   (IV_TrxHistLine.DOCTYPE = 4 AND IV_TrxHistLine.HSTMODUL = 'POP' AND IV_TrxHistLine.TRXQTY < 0 ) THEN '*'  WHEN IV_TrxHistLine.DOCTYPE = 12 THEN '^'  ELSE ''  END AS Line_Status,   IV_TrxHistLine.LNSEQNBR AS Line_No,   IV_TrxHistLine.ITEMNMBR AS Item_Number,   '' AS Item_Desc,  IV_TrxHistLine.TRXLOCTN AS Site,  '' AS AcctNo,  IV_TrxHistLine.DOCDATE AS Document_Date,  IV_TrxHistLine.DOCNUMBR AS Document_Number,  IV_TrxHistLine.DOCTYPE AS Document_Type,  IV_TrxHistLine.TRXSORCE AS Audit_Trail,   IV_TrxHistLine.HSTMODUL AS Mod,    IV_ItemMaster.VCTNMTHD AS Valuation_Method,   CASE WHEN IV_TrxHistLineDtl.QTYTYPE = 1 THEN  CASE WHEN (IV_TrxHistLine.HSTMODUL = 'POP' AND IV_TrxHistLineDtl.DOCTYPE = 4) THEN IV_TrxHistLineDtl.ABS_Receipt_Qty  ELSE -IV_TrxHistLine.TRXQTY END  ELSE CASE WHEN IV_TrxHistLine.HSTMODUL = 'IV' THEN IV_TrxHistLineDtl.Receipt_Qty END  END AS Quantity,   CASE WHEN IV_ItemMaster.VCTNMTHD > 2 AND @in_CostForItem <> 2 THEN  CASE WHEN IV_ItemMaster.VCTNMTHD = 3 THEN ISNULL(IV_ItemMaster.CURRCOST,0)  ELSE ISNULL(IV_ItemMaster.STNDCOST,0) END   ELSE CASE WHEN IV_TrxHistLine.QTYBSUOM = 0 THEN 0 ELSE (IV_TrxHistLine.UNITCOST / IV_TrxHistLine.QTYBSUOM) END  END AS Unit_Cost,   0.00 AS Footer_UnitCost,   CASE WHEN IV_TrxHistLine.TRXQTY = 0 OR IV_TrxHistLine.UNITCOST = 0 THEN 0.00   ELSE ROUND(Receipt_Ext_Cost * (Receipt_Ext_Cost / (-(IV_TrxHistLine.TRXQTY) * IV_TrxHistLine.UNITCOST)),2,2)  END AS Extended_Cost,   -((IV_TrxHistLine.TRXQTY) * IV_TrxHistLine.UNITCOST) AS Extended_Price,  CAST(0 AS NUMERIC(19,5)) AS Extended_Price_Hdr,  CASE WHEN @in_CostForItem = 1 THEN @minPostedDate ELSE GETDATE() END AS PostDate   INTO #ttDetail  FROM IV30300 AS IV_TrxHistLine  LEFT JOIN ( SELECT DOCTYPE, DOCNUMBR, LNSEQNBR, QTYTYPE,   SUM(ABS(RCPTQTY)) AS ABS_Receipt_Qty, SUM(RCPTQTY) AS Receipt_Qty,  SUM(RCPTEXCT) AS Receipt_Ext_Cost  FROM IV30301  GROUP BY DOCTYPE, DOCNUMBR, LNSEQNBR,QTYTYPE) AS IV_TrxHistLineDtl   ON IV_TrxHistLine.DOCTYPE = IV_TrxHistLineDtl.DOCTYPE  AND IV_TrxHistLine.DOCNUMBR = IV_TrxHistLineDtl.DOCNUMBR  AND IV_TrxHistLine.LNSEQNBR = IV_TrxHistLineDtl.LNSEQNBR  LEFT JOIN IV00101 AS IV_ItemMaster ON IV_ItemMaster.ITEMNMBR = IV_TrxHistLine.ITEMNMBR  LEFT JOIN IV00102 As IV_ItemMasterQTY ON IV_ItemMasterQTY.ITEMNMBR = IV_TrxHistLine.ITEMNMBR  AND IV_ItemMasterQTY.LOCNCODE = IV_TrxHistLine.TRXLOCTN  LEFT JOIN GL00105 AS GL_IndexMaster ON IV_ItemMaster.IVIVINDX = GL_IndexMaster.ACTINDX   WHERE (@in_StartLocationCode = 'ALL' OR IV_ItemMasterQTY.LOCNCODE >= @in_StartLocationCode)  AND (@in_EndLocationCode = 'ALL' OR IV_ItemMasterQTY.LOCNCODE <= @in_EndLocationCode)  AND (@in_StartItemNumber = 'ALL' OR IV_ItemMaster.ITEMNMBR >= @in_StartItemNumber)  AND (@in_EndItemNumber = 'ALL' OR IV_ItemMaster.ITEMNMBR <= @in_EndItemNumber)  AND (@in_StartLongDesc = 'ALL' OR IV_ItemMaster.ITEMDESC >= @in_StartLongDesc)  AND (@in_EndLongDesc = 'ALL' OR IV_ItemMaster.ITEMDESC <= @in_EndLongDesc)  AND (@in_StartGenericDesc = 'ALL' OR IV_ItemMaster.ITMGEDSC >= @in_StartGenericDesc)  AND (@in_EndGenericDesc = 'ALL' OR IV_ItemMaster.ITMGEDSC <= @in_EndGenericDesc)  AND (@in_StartAcctNo = 'ALL' OR GL_IndexMaster.ACTNUMST >= @in_StartAcctNo)  AND (@in_EndAcctNo = 'ALL' OR GL_IndexMaster.ACTNUMST <= @in_EndAcctNo)  AND (@in_StartClass = 'ALL' OR IV_ItemMaster.ITMCLSCD >= @in_StartClass)  AND (@in_EndClass = 'ALL' OR IV_ItemMaster.ITMCLSCD <= @in_EndClass)  AND (@in_StartUserCat1 = 'ALL' OR IV_ItemMaster.USCATVLS_1 >= @in_StartUserCat1)  AND (@in_EndUserCat1 = 'ALL' OR IV_ItemMaster.USCATVLS_1 <= @in_EndUserCat1)  AND (@in_StartUserCat2 = 'ALL' OR IV_ItemMaster.USCATVLS_2 >= @in_StartUserCat2)  AND (@in_EndUserCat2 = 'ALL' OR IV_ItemMaster.USCATVLS_2 <= @in_EndUserCat2)  AND (@in_StartUserCat3 = 'ALL' OR IV_ItemMaster.USCATVLS_3 >= @in_StartUserCat3)  AND (@in_EndUserCat3 = 'ALL' OR IV_ItemMaster.USCATVLS_3<= @in_EndUserCat3)  AND (@in_StartUserCat4 = 'ALL' OR IV_ItemMaster.USCATVLS_4 >= @in_StartUserCat4)  AND (@in_EndUserCat4 = 'ALL' OR IV_ItemMaster.USCATVLS_4 <= @in_EndUserCat4)  AND (@in_StartUserCat5 = 'ALL' OR IV_ItemMaster.USCATVLS_5 >= @in_StartUserCat5)  AND (@in_EndUserCat5 = 'ALL' OR IV_ItemMaster.USCATVLS_5 <= @in_EndUserCat5)  AND (@in_StartUserCat6 = 'ALL' OR IV_ItemMaster.USCATVLS_6 >= @in_StartUserCat6)  AND (@in_EndUserCat6 = 'ALL' OR IV_ItemMaster.USCATVLS_6 <= @in_EndUserCat6)  AND IV_ItemMaster.ITEMTYPE <= 2   AND IV_ItemMaster.KPTRXHST <> 0   AND IV_ItemMasterQTY.RCRDTYPE = 2  AND IV_ItemMasterQTY.QTYONHND IS NOT NULL  AND IV_TrxHistLine.DOCDATE > @in_AsOfDate  ORDER BY IV_TrxHistLine.ITEMNMBR ASC, IV_TrxHistLine.LNSEQNBR   UPDATE hdr  SET hdr.Extended_Price_Hdr = ROUND(hdr.Extended_Price,2,2) + ROUND(dtl.Extended_Price,2,2)  FROM #ttHeader AS hdr  INNER JOIN (SELECT Item_Number, Site, SUM(Quantity * Unit_Cost) AS Extended_Price  FROM #ttDetail GROUP BY Item_Number, Site) AS dtl  ON hdr.Item_Number = dtl.Item_Number  AND hdr.Site = dtl.Site   UPDATE hdr  SET hdr.Extended_Price_Hdr =  ROUND(hdr.Extended_Price,2,2)  FROM #ttHeader AS hdr  WHERE hdr.Extended_Price_Hdr = 0.00   IF @in_IncZeroQtyOnAsOfDate = 1  SELECT * FROM #ttHeader AS Header   UNION ALL   SELECT * FROM #ttDetail AS Detail  ORDER BY Item_Number, Site, Record_Status DESC, Document_Date DESC  ELSE  SELECT * FROM #ttHeader AS Header WHERE Quantity <> 0.00   UNION ALL  SELECT * FROM #ttDetail AS Detail WHERE Quantity <> 0.00   ORDER BY Item_Number, Site, Record_Status DESC, Document_Date DESC   
GO
GRANT EXECUTE ON  [dbo].[seeivPrintHistStockStatus] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeivPrintHistStockStatus] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeivPrintHistStockStatus] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeivPrintHistStockStatus] TO [rpt_power user]
GO
GRANT EXECUTE ON  [dbo].[seeivPrintHistStockStatus] TO [rpt_production manager]
GO
GRANT EXECUTE ON  [dbo].[seeivPrintHistStockStatus] TO [rpt_warehouse manager]
GO
