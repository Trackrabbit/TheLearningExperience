SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[seeRMAccountsDue]  @AccountsDueAsOfDate Datetime,  @BalanceType nvarchar(15),   @ExcludeZeroBalance char(1),  @ExcludeNoActivity char(1),   @ExcludePastDue char(1),   @FromCustomerID varchar(15), @ToCustomerID varchar(15), @FromCustomerName varchar(65), @ToCustomerName varchar(65), @FromSalespersonID varchar(15), @ToSalespersonID varchar(15), @FromSalesTerritoryID varchar(15), @ToSalesTerritoryID varchar(15), @FromAgingPeriod varchar(15), @ToAgingPeriod varchar(15), @FromDocumentType varchar(31), @ToDocumentType varchar(31), @FromDocumentNumber varchar(21), @ToDocumentNumber varchar(21), @FromDate datetime, @ToDate datetime  AS  SELECT RM00103.CUSTBLNC AS [Customer Balance], RM00101.CUSTNMBR AS [Customer ID], RM00101.CUSTNAME AS [Name], RM00101.SHRTNAME AS [Short Name], RM00101.CUSTCLAS AS [ClassID], RM00101.USERDEF1 AS [User Defined 1], RM00101.CNTCPRSN AS [Contact Person], RM00101.ZIP AS [Zip Code], RM00101.STATE AS [State], RM00101.PHONE1 AS [Phone Number], RM00103.CUSTBLNC AS [Balance Due], CASE RM00101.BALNCTYP WHEN 0 THEN'Open Item' ELSE 'Balance Forward' END AS [Balance Type], RM00101.PHONE1 AS [Telephone], RM00101.SLPRSNID AS [Salesperson], RM00101.SALSTERR AS [Sales Territory ID], RM00103.LSTTRXDT AS [Last Invoice], RM00103.LASTPYDT AS [Last Payment], RM40401.DOCABREV AS [Type], RM20101.RMDTYPAL AS [Document Type], RM20101.DOCNUMBR AS [Document Number], RM20101.DOCDATE AS [Document Date], CASE   WHEN (RM20101.RMDTYPAL IN (1,3,4,5)) THEN RM20101.DUEDATE  ELSE '1900-01-01'  END AS [Due Date], RM20101.AGNGBUKT AS [Aging Period], CASE  WHEN (RM20101.RMDTYPAL IN (1,3,4,5)) THEN RM20101.ORTRXAMT   ELSE RM20101.ORTRXAMT*-1   END AS [Original Amount], CASE RM20101.RMDTYPAL WHEN 7 THEN 0 ELSE (RM20101.DISTKNAM+RM20101.WROFAMNT)  END AS [Discounts/Write Offs], CASE WHEN   RM20101.DISTKNAM>  (  CASE   WHEN RM20101.RMDTYPAL IN (1,3,4,5) THEN RM20101.CURTRXAM   ELSE RM20101.CURTRXAM*-1  END  )  AND   RM20101.RMDTYPAL BETWEEN 1 AND 6 THEN ( CASE   WHEN RM20101.RMDTYPAL IN (1,3,4,5) THEN RM20101.CURTRXAM   ELSE RM20101.CURTRXAM*-1  END ) WHEN (@AccountsDueAsOfDate<= DISCDATE)AND RM20101.RMDTYPAL BETWEEN 1 AND 6 THEN RM20101.DISAVAMT ELSE 0 END AS [Discounts Available], CASE   WHEN (RM00101.BALNCTYP=0 AND RM20101.RMDTYPAL<>6) THEN (RM20101.ORTRXAMT - RM20101.CURTRXAM)  ELSE 0 END AS [Applied], CASE   WHEN RM20101.RMDTYPAL IN (1,3,4,5) THEN RM20101.CURTRXAM   ELSE RM20101.CURTRXAM*-1  END AS [Amount Remaining], CASE   WHEN RM20101.RMDTYPAL IN (1,3,4,5) AND RM20101.CURTRXAM<>0 THEN DATEDIFF(DD,RM20101.DUEDATE,@AccountsDueAsOfDate)  ELSE 0  END AS [Days Past Due]  FROM RM00101 RM00101_CHILD LEFT JOIN RM00101 ON RM00101_CHILD.CPRCSTNM=RM00101.CUSTNMBR LEFT JOIN RM20101 ON RM00101.CUSTNMBR=RM20101.CUSTNMBR LEFT JOIN RM40401 ON RM40401.RMDTYPAL=RM20101.RMDTYPAL LEFT JOIN RM00103 ON RM00103.CUSTNMBR=RM00101.CUSTNMBR  WHERE  RM00101_CHILD.CPRCSTNM <>'' AND RM00101.CUSTNAME BETWEEN @FromCustomerName AND @ToCustomerName AND  RM00101.CUSTNMBR BETWEEN @FromCustomerID AND @ToCustomerID AND RM00101.SLPRSNID BETWEEN @FromSalespersonID AND @ToSalespersonID AND RM00101.SALSTERR BETWEEN @FromSalesTerritoryID AND @ToSalesTerritoryID AND ISNULL(RM20101.AGNGBUKT,@FromAgingPeriod) BETWEEN @FromAgingPeriod AND @ToAgingPeriod AND ISNULL(RM40401.DOCDESCR,@FromDocumentType) BETWEEN @FromDocumentType AND @ToDocumentType AND ISNULL(RM20101.DOCNUMBR,@FromDocumentNumber) BETWEEN @FromDocumentNumber AND @ToDocumentNumber AND ISNULL(RM20101.DOCDATE,@FromDate) BETWEEN @FromDate AND @ToDate AND ISNULL(RM20101.VOIDSTTS,0)=0 AND  @AccountsDueAsOfDate>=  ( CASE  WHEN (RM20101.RMDTYPAL IN (1,3,4,5)) THEN RM20101.DUEDATE ELSE '1900-01-01'END )  AND  RM00101.BALNCTYP <>  ( CASE @BalanceType WHEN 'Open Item'THEN '1' WHEN 'Balance Forward'THEN '0' ELSE '5'END )  AND   RM00103.CUSTBLNC <>  ( CASE @ExcludeZeroBalance WHEN '1' THEN '0' WHEN '0' THEN '-99999999' ELSE '-99999999' END )  AND  ( CASE ISNULL(RM20101.DOCNUMBR,'') WHEN '' THEN 'EXCLUDE' ELSE 'INCLUDE' END ) <>  ( CASE @ExcludeNoActivity WHEN '1' THEN 'EXCLUDE' WHEN '0' THEN '-99999999' ELSE '-99999999' END )  AND  ( CASE WHEN  ( CASE   WHEN RM20101.RMDTYPAL IN (1,3,4,5) AND RM20101.CURTRXAM<>0 THEN DATEDIFF(DD,RM20101.DUEDATE,@AccountsDueAsOfDate)  ELSE 0  END )>0 THEN'1' ELSE '0'  END )  <>  CASE @ExcludePastDue WHEN '1' THEN '1' WHEN '0' THEN '-99999999' ELSE '-99999999' END  UNION ALL  SELECT RM00103.CUSTBLNC AS [Customer Balance], RM00101.CUSTNMBR AS [Customer ID], RM00101.CUSTNAME AS [Name], RM00101.SHRTNAME AS [Short Name], RM00101.CUSTCLAS AS [ClassID], RM00101.USERDEF1 AS [User Defined 1], RM00101.CNTCPRSN AS [Contact Person], RM00101.ZIP AS [Zip Code], RM00101.STATE AS [State], RM00101.PHONE1 AS [Phone Number], RM00103.CUSTBLNC AS [Balance Due], CASE RM00101.BALNCTYP WHEN 0 THEN'Open Item' ELSE 'Balance Forward' END AS [Balance Type], RM00101.PHONE1 AS [Telephone], RM00101.SLPRSNID AS [Salesperson], RM00101.SALSTERR AS [Sales Territory ID], RM00103.LSTTRXDT AS [Last Invoice], RM00103.LASTPYDT AS [Last Payment], RM40401.DOCABREV AS [Type], RM20101.RMDTYPAL AS [Document Type], RM20101.DOCNUMBR AS [Document Number], RM20101.DOCDATE AS [Document Date], CASE   WHEN (RM20101.RMDTYPAL IN (1,3,4,5)) THEN RM20101.DUEDATE  ELSE '1900-01-01'  END AS [Due Date], RM20101.AGNGBUKT AS [Aging Period], CASE  WHEN (RM20101.RMDTYPAL IN (1,3,4,5)) THEN RM20101.ORTRXAMT   ELSE RM20101.ORTRXAMT*-1   END AS [Original Amount], CASE RM20101.RMDTYPAL WHEN 7 THEN 0 ELSE (RM20101.DISTKNAM+RM20101.WROFAMNT)  END AS [Discounts/Write Offs], CASE WHEN   RM20101.DISTKNAM>  (  CASE   WHEN RM20101.RMDTYPAL IN (1,3,4,5) THEN RM20101.CURTRXAM   ELSE RM20101.CURTRXAM*-1  END  )  AND   RM20101.RMDTYPAL BETWEEN 1 AND 6 THEN ( CASE   WHEN RM20101.RMDTYPAL IN (1,3,4,5) THEN RM20101.CURTRXAM   ELSE RM20101.CURTRXAM*-1  END ) WHEN (@AccountsDueAsOfDate<= DISCDATE)AND RM20101.RMDTYPAL BETWEEN 1 AND 6 THEN RM20101.DISAVAMT ELSE 0 END AS [Discounts Available], CASE   WHEN (RM00101.BALNCTYP=0 AND RM20101.RMDTYPAL<>6) THEN (RM20101.ORTRXAMT - RM20101.CURTRXAM)  ELSE 0 END AS [Applied], CASE   WHEN RM20101.RMDTYPAL IN (1,3,4,5) THEN RM20101.CURTRXAM   ELSE RM20101.CURTRXAM*-1  END AS [Amount Remaining], CASE   WHEN RM20101.RMDTYPAL IN (1,3,4,5) AND RM20101.CURTRXAM<>0 THEN DATEDIFF(DD,RM20101.DUEDATE,@AccountsDueAsOfDate)  ELSE 0  END AS [Days Past Due]  FROM RM00101 LEFT JOIN RM20101 ON RM00101.CUSTNMBR=RM20101.CUSTNMBR LEFT JOIN RM40401 ON RM40401.RMDTYPAL=RM20101.RMDTYPAL LEFT JOIN RM00103 ON RM00103.CUSTNMBR=RM00101.CUSTNMBR  WHERE  RM00101.CPRCSTNM ='' AND RM00101.CUSTNAME BETWEEN @FromCustomerName AND @ToCustomerName AND  RM00101.CUSTNMBR BETWEEN @FromCustomerID AND @ToCustomerID AND RM00101.SLPRSNID BETWEEN @FromSalespersonID AND @ToSalespersonID AND RM00101.SALSTERR BETWEEN @FromSalesTerritoryID AND @ToSalesTerritoryID AND ISNULL(RM20101.AGNGBUKT,@FromAgingPeriod) BETWEEN @FromAgingPeriod AND @ToAgingPeriod AND ISNULL(RM40401.DOCDESCR,@FromDocumentType) BETWEEN @FromDocumentType AND @ToDocumentType AND ISNULL(RM20101.DOCNUMBR,@FromDocumentNumber) BETWEEN @FromDocumentNumber AND @ToDocumentNumber AND ISNULL(RM20101.DOCDATE,@FromDate) BETWEEN @FromDate AND @ToDate AND ISNULL(RM20101.VOIDSTTS,0)=0 AND  @AccountsDueAsOfDate>=  ( CASE  WHEN (RM20101.RMDTYPAL IN (1,3,4,5)) THEN RM20101.DUEDATE ELSE '1900-01-01'END )  AND  RM00101.BALNCTYP <>  ( CASE @BalanceType WHEN 'Open Item'THEN '1' WHEN 'Balance Forward'THEN '0' ELSE '5'END )  AND   RM00103.CUSTBLNC <>  ( CASE @ExcludeZeroBalance  WHEN '1' THEN '0' WHEN '0' THEN '-99999999' ELSE '-99999999' END )  AND  ( CASE ISNULL(RM20101.DOCNUMBR,'') WHEN '' THEN 'EXCLUDE' ELSE 'INCLUDE' END ) <>  ( CASE @ExcludeNoActivity WHEN '1' THEN 'EXCLUDE' WHEN '0' THEN '-99999999' ELSE '-99999999' END )  AND ( CASE WHEN  ( CASE   WHEN RM20101.RMDTYPAL IN (1,3,4,5) AND RM20101.CURTRXAM<>0 THEN DATEDIFF(DD,RM20101.DUEDATE,@AccountsDueAsOfDate)  ELSE 0  END )>0 THEN'1' ELSE '0'  END )  <>  CASE @ExcludePastDue WHEN '1' THEN '1' WHEN '0' THEN '-99999999' ELSE '-99999999' END   
GO
GRANT EXECUTE ON  [dbo].[seeRMAccountsDue] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeRMAccountsDue] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeRMAccountsDue] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeRMAccountsDue] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeRMAccountsDue] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeRMAccountsDue] TO [rpt_power user]
GO
