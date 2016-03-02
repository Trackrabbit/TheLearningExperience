SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeTotalSalesDetail]  @UserDate datetime  = NULL,  @Label    VARCHAR(30),   @CurPrev  VARCHAR(30),  @Date DATETIME = NULL   AS  IF (@Label IS NULL OR @Label = '') BEGIN  SET @Label = (SELECT rtrim(PERNAME) AS PERNAME   FROM (SELECT DISTINCT(PERNAME), PERIODID   FROM SY40100   WHERE PERNAME <> 'Beginning Balance'   and @Date between PERIODDT and PERDENDT) SY40100)  END  IF (@UserDate IS NULL or @UserDate = '') BEGIN  SET @UserDate = @Date END  set dateformat ymd   CREATE TABLE #Sales   (   AcctCat      INT,   DEBIT        NUMERIC(19, 5),   CREDIT       NUMERIC(19, 5),   ACTINDX      INT,   JRNENTRY     VARCHAR(30),   TRXDATE      DATETIME,   OrderingDate DATETIME,   Label        VARCHAR(30)   )    CREATE TABLE #SalesRD   (   AcctCat      INT,   DEBIT        NUMERIC(19, 5),   CREDIT       NUMERIC(19, 5),   ACTINDX      INT,   JRNENTRY     VARCHAR(30),   TRXDATE      DATETIME,   OrderingDate DATETIME,   Label        VARCHAR(30)   )    INSERT INTO #Sales   SELECT AcctCat,   DEBIT,   CREDIT,   ACTINDX,   JRNENTRY,   TRXDATE,   OrderingDate,   Label   FROM   (SELECT *   FROM   seeGetGLAcctCatDetail(@UserDate, 'NetChange', 31, @Label, @CurPrev)   WHERE  Label = @Label) s1    INSERT INTO #SalesRD   SELECT AcctCat,   DEBIT,   CREDIT,   ACTINDX,   JRNENTRY,   TRXDATE,   OrderingDate,   Label   FROM   (SELECT *   FROM   seeGetGLAcctCatDetail(@UserDate, 'NetChange', 32, @Label, @CurPrev)   WHERE  Label = @Label) s2   SELECT rtrim(GL00102.ACCATDSC) AS ACCATDSC,   DEBIT,   CREDIT,   #SalesRD.ACTINDX,   rtrim(ACTNUMST)         AS ACTNUMST,   JRNENTRY,   TRXDATE,  case  when JRNENTRY = 'BBF'  then ''  else [Journal Entry For Drillback]  end as [Journal Entry For Drillback],  [Account Index For Drillback]  FROM   #SalesRD   JOIN GL00105   ON #SalesRD.ACTINDX = GL00105.ACTINDX   JOIN GL00100   ON #SalesRD.ACTINDX = GL00100.ACTINDX   JOIN GL00102   ON GL00100.ACCATNUM = GL00102.ACCATNUM   LEFT OUTER JOIN (SELECT DISTINCT [Journal Entry],  [Journal Entry For Drillback]  FROM [AccountTransactions]) AccountTransactions   ON AccountTransactions.[Journal Entry] =   case   when #SalesRD.JRNENTRY = 'BBF'   then 0   else #SalesRD.JRNENTRY  end  JOIN (SELECT DISTINCT [Account Index], [Account Index For Drillback]  FROM [AccountTransactions]) AccountDrillback   ON #SalesRD.ACTINDX = AccountDrillback.[Account Index]   UNION ALL   SELECT rtrim(GL00102.ACCATDSC) AS ACCATDSC,   DEBIT,   CREDIT,   #Sales.ACTINDX,   rtrim(ACTNUMST)         AS ACTNUMST,   JRNENTRY,   TRXDATE,  case  when JRNENTRY = 'BBF'  then ''  else [Journal Entry For Drillback]  end as [Journal Entry For Drillback],   [Account Index For Drillback]   FROM   #Sales   JOIN GL00105   ON #Sales.ACTINDX = GL00105.ACTINDX   JOIN GL00100   ON #Sales.ACTINDX = GL00100.ACTINDX   JOIN GL00102   ON GL00100.ACCATNUM = GL00102.ACCATNUM  LEFT OUTER JOIN (SELECT DISTINCT [Journal Entry],  [Journal Entry For Drillback]  FROM [AccountTransactions]) AccountTransactions   ON AccountTransactions.[Journal Entry] =   case   when #Sales.JRNENTRY = 'BBF'   then 0   else #Sales.JRNENTRY  end  JOIN (SELECT DISTINCT [Account Index], [Account Index For Drillback]  FROM [AccountTransactions]) AccountDrillback   ON #Sales.ACTINDX = AccountDrillback.[Account Index]   ORDER  BY ACCATDSC,   ACTNUMST,   TRXDATE,   JRNENTRY     
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetail] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetail] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetail] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetail] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesDetail] TO [rpt_warehouse manager]
GO
