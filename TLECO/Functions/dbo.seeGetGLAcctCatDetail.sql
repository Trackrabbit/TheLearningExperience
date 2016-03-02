SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[seeGetGLAcctCatDetail] (@UserDate    DATETIME,   @BalanceType VARCHAR(15),   @AcctCat     INT,  @Label    VARCHAR(30),  @CurPrev  VARCHAR(30))  RETURNS @Balances TABLE (   AcctCat      INT,   DEBIT        NUMERIC(19, 5),   CREDIT       NUMERIC(19, 5),   ACTINDX      INT,   JRNENTRY     VARCHAR(30),   TRXDATE      DATETIME,   OrderingDate DATETIME,   Label        VARCHAR(30))  AS   BEGIN   DECLARE @StartDate DATETIME   DECLARE @EndDate DATETIME   DECLARE @DateLabel VARCHAR(30)   DECLARE @CurrPrevType INT    SELECT @UserDate = dbo.GetDateStripTime(@UserDate)   DECLARE T_cursor CURSOR LOCAL FOR   SELECT StartDate,   EndDate,   DateLabel,   CurrPrevType   FROM   GetKPIDetailDates(@UserDate, 'Fiscal')  WHERE DateLabel =  @Label   AND CurrPrevType = @CurPrev   OPEN T_cursor    FETCH NEXT FROM T_cursor INTO @StartDate, @EndDate, @DateLabel,   @CurrPrevType    WHILE ( @@FETCH_STATUS <> -1 )   BEGIN   IF @BalanceType = 'YTD'   INSERT INTO @Balances   (AcctCat,   DEBIT,   CREDIT,   ACTINDX,   JRNENTRY,   TRXDATE,   OrderingDate,   Label)   SELECT @AcctCat,   DEBIT,   CREDIT,   ACTINDX,   JRNENTRY,   TRXDATE,   OrderingDate,   Label    FROM   (SELECT seeGetGLAcctCatDetailYTD.*,   @EndDate   AS OrderingDate,   @DateLabel AS Label   FROM   seeGetGLAcctCatDetailYTD (@EndDate, @AcctCat)   ) s1    IF @BalanceType = 'NetChange'   INSERT INTO @Balances   (AcctCat,   DEBIT,   CREDIT,   ACTINDX,   JRNENTRY,   TRXDATE,   OrderingDate,   Label)   SELECT @AcctCat,   DEBIT,   CREDIT,   ACTINDX,   JRNENTRY,   TRXDATE,   OrderingDate,   Label   FROM   (SELECT seeGetGLAcctCatDetailNetChange.*,   @EndDate   AS OrderingDate,   @DateLabel AS Label   FROM   seeGetGLAcctCatDetailNetChange (@StartDate,   @EndDate,   @AcctCat)   ) s1    FETCH NEXT FROM T_cursor INTO @StartDate, @EndDate, @DateLabel,   @CurrPrevType   END    DEALLOCATE T_cursor    RETURN   END     
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetail] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetail] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetail] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetail] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetail] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetail] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetail] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetail] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetail] TO [rpt_order processor]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetail] TO [rpt_shipping and receiving]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetail] TO [rpt_warehouse manager]
GO
