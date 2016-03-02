SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[seeGetGLAcctCatDetailYTD] (@UserDate DATETIME,   @AcctCat  INT)  RETURNS @Balances TABLE (   DEBIT    NUMERIC(19, 5),   CREDIT   NUMERIC(19, 5),   ACTINDX  INT,   JRNENTRY VARCHAR(30),   TRXDATE  DATETIME)  AS   BEGIN   DECLARE @CurrentPeriodID INT   DECLARE @CurrentYear INT   DECLARE @IsHist INT   DECLARE @TrxStartDate DATETIME   DECLARE @TrxEndDate DATETIME   DECLARE @FinalBalance NUMERIC(19, 5)    SELECT @UserDate = dbo.GetDateStripTime(@UserDate)    SELECT DISTINCT @CurrentPeriodID = PERIODID,   @CurrentYear = YEAR1,   @TrxStartDate = PERIODDT,   @TrxEndDate = @UserDate   FROM   SY40100   WHERE  @UserDate BETWEEN PERIODDT AND PERDENDT   AND FORIGIN = 1    SELECT @IsHist = HISTORYR   FROM   SY40101   WHERE  YEAR1 = @CurrentYear    IF @IsHist = 1   BEGIN   INSERT INTO @Balances (   DEBIT,  CREDIT,   ACTINDX,   JRNENTRY,  TRXDATE)  SELECT ISNULL(GL10111.DEBITAMT, 0.00), ISNULL(GL10111.CRDTAMNT, 0.00), GL10111.ACTINDX, 'BBF', @TrxStartDate   FROM   GL10111   WHERE  @AcctCat = GL10111.ACCATNUM   AND GL10111.PERIODID >= 0   AND GL10111.PERIODID <= ( @CurrentPeriodID   - 1   )   AND GL10111.YEAR1 = @CurrentYear  INSERT INTO @Balances (   DEBIT,  CREDIT,   ACTINDX,   JRNENTRY,  TRXDATE)  SELECT ISNULL(DEBITAMT, 0.00), ISNULL(CRDTAMNT, 0.00), GL30000.ACTINDX, JRNENTRY, TRXDATE  FROM   GL30000   join GL00100   on GL30000.ACTINDX   =   GL00100.ACTINDX   WHERE  @AcctCat = ACCATNUM   AND   TRXDATE >= @TrxStartDate   AND   TRXDATE <= @TrxEndDate   AND   HSTYEAR = @CurrentYear  END   ELSE   BEGIN   INSERT INTO @Balances (   DEBIT,  CREDIT,   ACTINDX,   JRNENTRY,  TRXDATE)  SELECT ISNULL(GL10110.DEBITAMT, 0.00), ISNULL(GL10110.CRDTAMNT, 0.00), GL10110.ACTINDX, 'BBF', @TrxStartDate   FROM   GL10110   WHERE  @AcctCat = GL10110.ACCATNUM   AND GL10110.PERIODID >= 0   AND GL10110.PERIODID <= ( @CurrentPeriodID   - 1   )   AND GL10110.YEAR1 = @CurrentYear  INSERT INTO @Balances (   DEBIT,  CREDIT,   ACTINDX,   JRNENTRY,  TRXDATE)  SELECT  ISNULL(DEBITAMT, 0.00), ISNULL(CRDTAMNT, 0.00), GL20000.ACTINDX, JRNENTRY, TRXDATE  FROM   GL20000   join GL00100   on GL20000.ACTINDX   =   GL00100.ACTINDX   WHERE  @AcctCat = ACCATNUM   AND   TRXDATE >= @TrxStartDate   AND   TRXDATE <= @TrxEndDate   AND   OPENYEAR = @CurrentYear   END    RETURN  END     
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailYTD] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailYTD] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailYTD] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailYTD] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailYTD] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailYTD] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailYTD] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailYTD] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailYTD] TO [rpt_order processor]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailYTD] TO [rpt_shipping and receiving]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailYTD] TO [rpt_warehouse manager]
GO
