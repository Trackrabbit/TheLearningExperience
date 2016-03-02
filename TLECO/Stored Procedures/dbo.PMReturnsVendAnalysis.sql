SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[PMReturnsVendAnalysis] (@IN_sVendorID varchar(60),@I_Orderby Integer,@IN_TypeID smallint,@IN_DocumentNo varchar(60),@IN_ReturnsTbl varchar(10)) AS  BEGIN   DECLARE @DocFilterStr VARCHAR(1000)   DECLARE @ColFilterStr VARCHAR(8000)  DECLARE @OrderbyStr VARCHAR(7)  DECLARE @DefaultDate  datetime   SET @DefaultDate = '1900-01-01 00:00:00.000'   if @I_Orderby = 0   SET @OrderbyStr = ' DESC '  else   SET @OrderbyStr = ' ASC '   EXEC('DELETE FROM ' + @IN_ReturnsTbl)  exec POPVendAnalysisBuildQuery 4,5,@ColFilterStr out   IF @IN_TypeID = 1  and @IN_DocumentNo <> ''  SELECT @DocFilterStr = ' AND RET.POPRCTNM IN (SELECT POPRCTNM FROM POP10310 WHERE PONUMBER = '+ @IN_DocumentNo +' UNION SELECT POPRCTNM FROM POP30310 WHERE PONUMBER = '+ @IN_DocumentNo +') '  ELSE IF @IN_TypeID = 2  and @IN_DocumentNo <> ''   SELECT @DocFilterStr = ' AND RET.POPRCTNM IN (SELECT POPRCTNM FROM (SELECT POPRCTNM,PONUMBER  FROM POP10310 UNION SELECT POPRCTNM,PONUMBER FROM POP30310)M WHERE PONUMBER IN (SELECT PONUMBER FROM POP10310 WHERE POPRCTNM = '+ @IN_DocumentNo +' UNION SELECT PONUMBER FROM POP30310 WHERE POPRCTNM = '+ @IN_DocumentNo +'))'  ELSE IF @IN_TypeID = 3  and @IN_DocumentNo <> ''   SELECT @DocFilterStr = ' AND (RET.VCHRNMBR IN (SELECT VCHRNMBR FROM PM10200 WHERE  APTVCHNM = '+ @IN_DocumentNo +' UNION SELECT VCHRNMBR FROM PM30300 WHERE APTVCHNM = '+ @IN_DocumentNo +' UNION SELECT B.VCHRNMBR FROM POP30310 A left join  POP30300 B ON A.POPRCTNM = B.POPRCTNM WHERE A.INVRETNUM IN (SELECT POPRCTNM FROM POP30300 WHERE  VCHRNMBR = '+ @IN_DocumentNo +'))   OR RET.POPRCTNM IN (SELECT POPRCTNM FROM POP30310 WHERE PONUMBER IN(SELECT PONUMBER FROM POP30310 LEFT JOIN POP30300  ON  POP30310.POPRCTNM = POP30300.POPRCTNM WHERE POP30310.POPRCTNM = '+ @IN_DocumentNo +'  OR POP30300.VCHRNMBR = '+ @IN_DocumentNo +')) )'  ELSE IF @IN_TypeID = 4  and @IN_DocumentNo <> ''   SELECT @DocFilterStr = ' AND (RET.VCHRNMBR IN (SELECT VCHRNMBR FROM PM10200 WHERE  APTVCHNM IN (SELECT APTVCHNM FROM PM10200 WHERE VCHRNMBR = '+ @IN_DocumentNo +') UNION SELECT VCHRNMBR FROM PM30300 WHERE APTVCHNM IN (SELECT APTVCHNM FROM PM30300 WHERE VCHRNMBR = '+ @IN_DocumentNo +')   UNION SELECT B.VCHRNMBR FROM POP30310 A left join  POP30300 B ON A.POPRCTNM = B.POPRCTNM WHERE A.INVRETNUM IN (SELECT POPRCTNM FROM POP30300 WHERE  VCHRNMBR IN (SELECT APTVCHNM FROM PM10200 WHERE VCHRNMBR = '+ @IN_DocumentNo +' UNION SELECT APTVCHNM FROM PM30300 WHERE VCHRNMBR = '+ @IN_DocumentNo +')))   OR RET.POPRCTNM IN (SELECT POPRCTNM FROM POP30310 WHERE PONUMBER IN(SELECT PONUMBER FROM POP30310 LEFT JOIN POP30300  ON  POP30310.POPRCTNM = POP30300.POPRCTNM WHERE POP30300.VCHRNMBR IN(SELECT APTVCHNM FROM PM10200 WHERE VCHRNMBR = '+ @IN_DocumentNo +' UNION SELECT APTVCHNM FROM PM30300 WHERE VCHRNMBR = '+ @IN_DocumentNo +' ))) )'  ELSE IF @IN_TypeID = 6  and @IN_DocumentNo <> ''   SELECT @DocFilterStr = 'AND RET.VCHRNMBR IN (SELECT VCHRNMBR FROM PM10200 WHERE APTVCHNM = '+ @IN_DocumentNo +' UNION SELECT VCHRNMBR FROM PM30300 WHERE APTVCHNM = '+ @IN_DocumentNo +') '  EXEC(  'INSERT INTO ' + @IN_ReturnsTbl + ' (INDXLONG,VENDORID,VCHNUMWK,POPRCTNM,DOCTYPE,DOCAMNT,DOCDATE,DOCNUMBR, CURNCYID, VOIDED, DINVPDOF,TEN99AMNT, APPLDAMT, DCSTATUS, TRXSORCE, CNTRLTYP)  SELECT TOP 100 ROW_NUMBER() OVER (ORDER BY DOCDATE '+ @OrderbyStr +') INDEX1 ,VENDORID,VCHRNMBR, POPRCTNM, DOCTYPE,DOCAMNT,DOCDATE,DOCNUMBR,CURNCYID, VOIDED, VOIDDATE,TEN99AMNT,APPLDAMT, DCSTATUS, TRXSORCE, CNTRLTYP FROM  (SELECT pmDocuments.VENDORID,pmDocuments.CNTRLNUM VCHRNMBR,ISNULL(purchRcptTbl.POPRCTNM,'''') POPRCTNM, pmDocuments.DOCTYPE,payableTrx.DOCAMNT, pmDocuments.DOCDATE,pmDocuments.DOCNUMBR,payableTrx.CURNCYID,payableTrx.VOIDED,   payableTrx.VOIDDATE,payableTrx.TEN99AMNT, payableTrx.APPLDAMT, pmDocuments.DCSTATUS, pmDocuments.TRXSORCE, pmDocuments.CNTRLTYP FROM PM00400 pmDocuments  inner join  (SELECT VENDORID,VCHRNMBR,DOCTYPE,DOCAMNT,DOCDATE,DOCNUMBR,CURNCYID,0 VOIDED,'''+@DefaultDate+''' VOIDDATE,TEN99AMNT,APPLDAMT FROM PM10000  UNION  SELECT VENDORID,VCHRNMBR,DOCTYPE,DOCAMNT,DOCDATE,DOCNUMBR,CURNCYID,VOIDED,DINVPDOF,TEN99AMNT,(DOCAMNT-CURTRXAM) APPLDAMT FROM PM20000  UNION  SELECT VENDORID,VCHRNMBR,DOCTYPE,DOCAMNT,DOCDATE,DOCNUMBR,CURNCYID,VOIDED,(CASE WHEN VOIDED = 1 THEN DINVPDOF ELSE VOIDPDATE END) VOIDDATE,TEN99AMNT,(DOCAMNT-CURTRXAM) APPLDAMT FROM PM30200) payableTrx  ON pmDocuments.VENDORID = payableTrx.VENDORID AND pmDocuments.CNTRLNUM = payableTrx.VCHRNMBR  left join  (SELECT VENDORID,POPRCTNM,VCHRNMBR,VNDDOCNM FROM POP10300 UNION SELECT VENDORID,POPRCTNM,VCHRNMBR,VNDDOCNM  FROM POP30300) purchRcptTbl   ON pmDocuments.VENDORID = purchRcptTbl.VENDORID AND pmDocuments.CNTRLNUM = purchRcptTbl.VCHRNMBR AND pmDocuments.DOCNUMBR = purchRcptTbl.VNDDOCNM  UNION  SELECT VENDORID,VCHRNMBR,POPRCTNM,4 DOCTYPE,(SUBTOTAL-TRDISAMT)+FRTAMNT+MISCAMNT+TAXAMNT DOCAMNT,receiptdate,VNDDOCNM,CURNCYID,VOIDSTTS,'''+@DefaultDate+''' VOIDDATE,TEN99AMNT,0.00 APPLDAMT,3 DCSTATUS,'''' TRXSORCE,0 CNTRLTYP   FROM POP30300 WHERE POPTYPE IN(4,5) AND VCHRNMBR = ''''  UNION   SELECT VENDORID,VCHRNMBR,POPRCTNM,4 DOCTYPE,(SUBTOTAL-TRDISAMT)+FRTAMNT+MISCAMNT+TAXAMNT DOCAMNT,receiptdate,VNDDOCNM,CURNCYID,0 VOIDSTTS,'''+@DefaultDate+''' VOIDDATE,TEN99AMNT,0.00 APPLDAMT,1 DCSTATUS,'''' TRXSORCE,0 CNTRLTYP   FROM POP10300 WHERE POPTYPE IN(4,5)) RET WHERE RET.VENDORID = ' + @IN_sVendorID +'  AND RET.DOCTYPE = 4 ' + @ColFilterStr + @DocFilterStr) END   
GO
GRANT EXECUTE ON  [dbo].[PMReturnsVendAnalysis] TO [DYNGRP]
GO