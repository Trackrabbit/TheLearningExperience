SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[seeGetGLAcctCatDetailNetChange] (@StartDate DATETIME,   @EndDate   DATETIME,   @AcctCat   INT)  RETURNS @FinalBalance TABLE (   DEBIT    NUMERIC(19, 5),   CREDIT   NUMERIC(19, 5),   ACTINDX  INT,   JRNENTRY VARCHAR(30),   TRXDATE  DATETIME)  AS   BEGIN   DECLARE @CurrentYear INT   DECLARE @IsHist INT   DECLARE @TrxStartDate DATETIME   DECLARE @TrxEndDate DATETIME   DECLARE @DATEMAX DATETIME   DECLARE @INVALIDPERIOD INT    SELECT @StartDate = dbo.GetDateStripTime(@StartDate)    SELECT @EndDate = dbo.GetDateStripTime(@EndDate)    SET @DATEMAX = dbo.GetDateStripTime(@EndDate)   SET @INVALIDPERIOD = -1    SELECT @CurrentYear = YEAR1,   @IsHist = HISTORYR   FROM   SY40101   WHERE  @StartDate BETWEEN FSTFSCDY AND LSTFSCDY    IF @IsHist = 1   BEGIN    INSERT INTO @FinalBalance (   DEBIT,  CREDIT,   ACTINDX,   JRNENTRY,  TRXDATE)   SELECT ISNULL(DEBITAMT, 0.00), ISNULL(CRDTAMNT, 0.00), GL30000.ACTINDX, JRNENTRY, TRXDATE  FROM   GL30000   join GL00100   on GL30000.ACTINDX   =   GL00100.ACTINDX   WHERE  @AcctCat = ACCATNUM   AND   TRXDATE >= @StartDate   AND   TRXDATE <= @EndDate    END   ELSE   BEGIN    INSERT INTO @FinalBalance (   DEBIT,   CREDIT,  ACTINDX,   JRNENTRY,  TRXDATE)   SELECT ISNULL(DEBITAMT, 0.00), ISNULL(CRDTAMNT, 0.00), GL20000.ACTINDX, JRNENTRY, TRXDATE  FROM   GL20000   join GL00100   on GL20000.ACTINDX   =   GL00100.ACTINDX   WHERE  @AcctCat = ACCATNUM   AND   TRXDATE >= @StartDate   AND   TRXDATE <= @EndDate    END    RETURN   END     
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailNetChange] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailNetChange] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailNetChange] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailNetChange] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailNetChange] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailNetChange] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailNetChange] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailNetChange] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailNetChange] TO [rpt_order processor]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailNetChange] TO [rpt_shipping and receiving]
GO
GRANT SELECT ON  [dbo].[seeGetGLAcctCatDetailNetChange] TO [rpt_warehouse manager]
GO
