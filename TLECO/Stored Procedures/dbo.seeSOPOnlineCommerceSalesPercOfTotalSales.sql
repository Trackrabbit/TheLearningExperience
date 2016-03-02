SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[seeSOPOnlineCommerceSalesPercOfTotalSales]  @PeriodStart DateTime = null,  @PeriodEnd DateTime = null As   DECLARE @EcommInvoiceType varchar(100) DECLARE @TotalCompanySales decimal(19,5) DECLARE @TotalEcommSales decimal(19,5)  DECLARE @CompanyID int SELECT @CompanyID = CMPANYID FROM DYNAMICS..SY01500 WHERE INTERID = db_name()  SELECT @EcommInvoiceType = ECOMMINVID FROM DYNAMICS..DO40100 do  WHERE do.CMPANYID = @CompanyID  Select @TotalCompanySales = SUM(DOCAMNT) From SOP30200 WHERE SOPTYPE = 3  Select @TotalEcommSales = SUM(DOCAMNT) From SOP30200 WHERE SOPTYPE = 3 AND DOCID = @EcommInvoiceType   Select CUSTNAME as CustomerName, CUSTNMBR as CustomerNo, SOPNUMBE as OrderNumber, DOCAMNT as SalesAmount, @TotalEcommSales as TotalECommSales, @TotalCompanySales as TotalSales  From SOP30200  WHERE SOPTYPE = 3 AND DOCID = @EcommInvoiceType  AND INVODATE >= CASE WHEN @PeriodStart is null THEN INVODATE ELSE @PeriodStart END AND INVODATE <= CASE WHEN @PeriodEnd is null THEN INVODATE ELSE @PeriodEnd END AND DOCAMNT > 0   
GO
GRANT EXECUTE ON  [dbo].[seeSOPOnlineCommerceSalesPercOfTotalSales] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSOPOnlineCommerceSalesPercOfTotalSales] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPOnlineCommerceSalesPercOfTotalSales] TO [rpt_operations manager]
GO
