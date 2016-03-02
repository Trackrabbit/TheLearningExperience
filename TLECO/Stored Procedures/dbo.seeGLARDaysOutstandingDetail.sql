SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLARDaysOutstandingDetail] @UserDate datetime = NULL,  @Label    VARCHAR(30),   @CurPrev  VARCHAR(30),  @Date DATETIME = NULL AS  IF (@Label IS NULL OR @Label = '') BEGIN  SET @Label = (SELECT rtrim(PERNAME) AS PERNAME   FROM (SELECT DISTINCT(PERNAME), PERIODID   FROM SY40100   WHERE PERNAME <> 'Beginning Balance'   and @Date between PERIODDT and PERDENDT) SY40100)  END  IF (@UserDate IS NULL or @UserDate = '') BEGIN  SET @UserDate = @Date END   set dateformat ymd    declare @CurrentBalance  numeric(19, 5),   @PreviousBalance numeric(19, 5),   @LastYearBalance numeric(19, 5)   create table #AllBalances   (   AcctCat         int,   DEBIT        NUMERIC(19, 5),   CREDIT       NUMERIC(19, 5),   ACTINDX      INT,   JRNENTRY     VARCHAR(30),   TRXDATE      DATETIME,   OrderingDate    datetime,   Label           varchar(21),   CurrNumOfDays   int,   PrevNumOfDays   int,   DaysOutstanding decimal(19, 5)   )    INSERT INTO #AllBalances   SELECT *,   0,   0,   0.0   FROM   seeGetGLAcctCatDetail(@UserDate, 'NetChange', 31, @Label, @CurPrev)    INSERT INTO #AllBalances   SELECT *,   0,   0,   0.0   FROM   seeGetGLAcctCatDetail (@UserDate, 'NetChange', 32, @Label, @CurPrev)    INSERT INTO #AllBalances   SELECT *,   0,   0,   0.0   FROM   seeGetGLAcctCatDetail (@UserDate, 'YTD', 3, @Label, @CurPrev)    SELECT rtrim(GL00102.ACCATDSC) AS ACCATDSC,   DEBIT,   CREDIT,   #AllBalances.ACTINDX,   rtrim(ACTNUMST)         AS ACTNUMST,   JRNENTRY,   TRXDATE,  case  when JRNENTRY = 'BBF'  then ''  else [Journal Entry For Drillback]  end as [Journal Entry For Drillback],   [Account Index For Drillback]  FROM   #AllBalances   JOIN GL00105   ON #AllBalances.ACTINDX = GL00105.ACTINDX   JOIN GL00100   ON #AllBalances.ACTINDX = GL00100.ACTINDX   JOIN GL00102   ON GL00100.ACCATNUM = GL00102.ACCATNUM   LEFT OUTER JOIN (SELECT DISTINCT [Journal Entry],  [Journal Entry For Drillback]  FROM [AccountTransactions]) AccountTransactions   ON AccountTransactions.[Journal Entry] =   case   when #AllBalances.JRNENTRY = 'BBF'   then 0   else #AllBalances.JRNENTRY  end  JOIN (SELECT DISTINCT [Account Index], [Account Index For Drillback]  FROM [AccountTransactions]) AccountDrillback   ON #AllBalances.ACTINDX = AccountDrillback.[Account Index]   ORDER  BY ACCATDSC,   ACTNUMST,   TRXDATE,   JRNENTRY    
GO
GRANT EXECUTE ON  [dbo].[seeGLARDaysOutstandingDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLARDaysOutstandingDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLARDaysOutstandingDetail] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeGLARDaysOutstandingDetail] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLARDaysOutstandingDetail] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLARDaysOutstandingDetail] TO [rpt_executive]
GO
