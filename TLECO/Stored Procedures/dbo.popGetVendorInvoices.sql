SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[popGetVendorInvoices] (@IN_sVendorID varchar(60),@I_Orderby Integer,@IN_TypeID smallint,@IN_DocumentNo varchar(60),@IN_InvoiceTbl varchar(10)) AS BEGIN   DECLARE @DocFilterStr VARCHAR(500)   DECLARE @ColFilterStr VARCHAR(8000)  DECLARE @OrderbyStr VARCHAR(7)   if @I_Orderby = 0   SET @OrderbyStr = ' DESC '  else   SET @OrderbyStr = ' ASC '   EXEC('DELETE FROM ' + @IN_InvoiceTbl)  exec POPVendAnalysisBuildQuery 4,3,@ColFilterStr out   IF @IN_TypeID = 1  and @IN_DocumentNo <> ''  SELECT @DocFilterStr = 'AND (A.PORDNMBR = ' + @IN_DocumentNo + ' OR A.POPIVCNO IN(SELECT POPRCTNM FROM POP10500 WHERE PONUMBER = ' + @IN_DocumentNo + ')) '  ELSE IF @IN_TypeID = 2  and @IN_DocumentNo <> ''   SELECT @DocFilterStr = 'AND A.POPIVCNO IN (SELECT POPIVCNO FROM POP10600 WHERE POPRCTNM = '+ @IN_DocumentNo +') '  ELSE IF @IN_TypeID = 4  and @IN_DocumentNo <> ''   BEGIN  SELECT @DocFilterStr = ' AND A.VCHRNMBR IN (SELECT APTVCHNM FROM PM10200 WHERE VCHRNMBR = '+ @IN_DocumentNo +' UNION SELECT APTVCHNM FROM PM30300 WHERE VCHRNMBR = '+ @IN_DocumentNo +' ) '  END  ELSE IF (@IN_TypeID = 5 OR @IN_TypeID = 6)  and @IN_DocumentNo <> ''   BEGIN  SELECT @DocFilterStr = ' AND A.VCHRNMBR IN (SELECT APTVCHNM FROM PM10200 WHERE VCHRNMBR= '+ @IN_DocumentNo +' UNION SELECT APTVCHNM FROM PM30300 WHERE VCHRNMBR = '+ @IN_DocumentNo +' UNION SELECT VCHRNMBR FROM POP30300 WHERE VCHRNMBR<>'''' AND POPRCTNM IN (SELECT INVRETNUM FROM POP30310 WHERE POPRCTNM = '+ @IN_DocumentNo +' UNION SELECT POPRCTNM FROM POP30310 WHERE PONUMBER IN (SELECT PONUMBER FROM POP30310  WHERE POPRCTNM = '+ @IN_DocumentNo +'))) '  END  EXEC('INSERT INTO '+@IN_InvoiceTbl+' (INDXLONG,VENDORID,VCHRNMBR,DOCAMNT,DOCDATE,VNDDOCNM,POPRCTNM,CURNCYID,DUEDATE,DISCDATE,TEN99AMNT,PYMTRMID,PrepaymentAmount,TAXAMNT,APPLDAMT,DCSTATUS)   SELECT TOP 100 ROW_NUMBER() OVER (ORDER BY DOCDATE '+ @OrderbyStr +') INDEX1 ,A.VENDORID,A.VCHRNMBR,A.SUBTOTAL,A.DOCDATE,A.DOCNUMBR,ISNULL(A.POPIVCNO,''''),A.CURNCYID,A.DUEDATE,A.DISCDATE,A.TEN99AMNT,A.PYMTRMID,ISNULL(A.PrepaymentAmount,0.00),A.TAXAMNT,A.APPLDAMT,A.DCSTATUS FROM  (  SELECT a.VENDORID,a.VCHRNMBR,DOCAMNT SUBTOTAL,DOCDATE ,DOCNUMBR,DOCTYPE,PORDNMBR,a.CURNCYID,a.DUEDATE,a.DISCDATE,a.TEN99AMNT,a.PYMTRMID,a.TAXAMNT,APPLDAMT,1 AS DCSTATUS,receiptdate INVODATE, ISNULL(POPRCTNM,'''') POPIVCNO,ISNULL(PrepaymentAmount,0.00) PrepaymentAmount FROM PM10000 a  LEFT JOIN POP30300 B ON a.VCHRNMBR = B.VCHRNMBR WHERE a.DOCTYPE = 1  UNION  SELECT a.VENDORID,a.VCHRNMBR,SUBTOTAL,receiptdate,VNDDOCNM,1 DOCTYPE,'''' PORDNMBR,a.CURNCYID,a.DUEDATE,a.DISCDATE,a.TEN99AMNT,a.PYMTRMID,a.TAXAMNT,0 APPLDAMT,1 AS DCSTATUS,receiptdate INVODATE, ISNULL(POPRCTNM,'''') POPIVCNO,ISNULL(PrepaymentAmount,0.00) PrepaymentAmount  FROM POP10300 a WHERE a.POPTYPE IN (2,3)  UNION  SELECT a.VENDORID,a.VCHRNMBR,DOCAMNT SUBTOTAL,DOCDATE ,DOCNUMBR,DOCTYPE,PORDNMBR,a.CURNCYID,a.DUEDATE,a.DISCDATE,a.TEN99AMNT,a.PYMTRMID,a.TAXAMNT,(DOCAMNT-CURTRXAM) AS APPLDAMT,2 AS DCSTATUS,receiptdate INVODATE, ISNULL(POPRCTNM,'''') POPIVCNO,ISNULL(PrepaymentAmount,0.00) PrepaymentAmount FROM PM20000 a LEFT JOIN POP30300 B ON a.VCHRNMBR = B.VCHRNMBR WHERE a.DOCTYPE = 1   UNION   SELECT a.VENDORID,a.VCHRNMBR,DOCAMNT SUBTOTAL,DOCDATE ,DOCNUMBR,DOCTYPE,PORDNMBR,a.CURNCYID,a.DUEDATE,a.DISCDATE,a.TEN99AMNT,a.PYMTRMID,a.TAXAMNT,(DOCAMNT-CURTRXAM) AS APPLDAMT,3 AS DCSTATUS,receiptdate INVODATE, ISNULL(POPRCTNM,'''') POPIVCNO,ISNULL(PrepaymentAmount,0.00) PrepaymentAmount FROM PM30200 a LEFT JOIN POP30300 B ON a.VCHRNMBR = B.VCHRNMBR WHERE a.DOCTYPE = 1)   A WHERE A.VENDORID = ' + @IN_sVendorID + ' ' + @ColFilterStr + @DocFilterStr ) END   
GO
GRANT EXECUTE ON  [dbo].[popGetVendorInvoices] TO [DYNGRP]
GO