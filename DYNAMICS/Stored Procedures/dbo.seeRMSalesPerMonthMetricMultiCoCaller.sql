SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeRMSalesPerMonthMetricMultiCoCaller]   @I_dUserDate DATETIME = NULL,  @I_iPeriodMonths INT   = NULL,  @I_vCustomerNumber VARCHAR(max),  @I_vSalesPersonID VARCHAR(max),  @companyID VARCHAR(8000) AS CREATE TABLE #SalesPerMonthMultiCo (  CoID CHAR(15) not null,  SalesAmount INT not null,  MonthDate DATETIME not null,  Filter VARCHAR(15) not null)  DECLARE @string1 VARCHAR(8000)  DECLARE  getCompanyID CURSOR  FOR  SELECT StrPiece  FROM SplitDelimitedString (',',@companyID) OPEN getCompanyID FETCH NEXT FROM getCompanyID INTO @companyID   WHILE @@FETCH_STATUS = 0 BEGIN  SELECT @string1 = ''+RTRIM(@companyID)+'' + '..seeRMSalesPerMonthMetricMultiCo'   + ' '   + '''' +  RIGHT ('0000'+ CAST (DATENAME(yyyy,@I_dUserDate) AS varchar), 4) + RIGHT ('00'+ CAST (month(@I_dUserDate) AS varchar), 2) + RIGHT ('00'+ CAST (DATENAME(dd,@I_dUserDate) AS varchar), 2) + ''''   + ' ,'   + RTRIM(@I_iPeriodMonths)   + ' ,'  +'''' + RTRIM(@I_vCustomerNumber) + ''''  + ' ,'  +'''' + RTRIM(@I_vSalesPersonID) + '''' insert into #SalesPerMonthMultiCo exec (@string1)  FETCH NEXT From getCompanyID into @companyID  End CLOSE getCompanyID DEALLOCATE getCompanyID  select DYNAMICS..SY01500.CMPNYNAM as CoName, CoID, SalesAmount, MonthDate, Filter FROM #SalesPerMonthMultiCo JOIN DYNAMICS..SY01500 on #SalesPerMonthMultiCo.CoID = DYNAMICS..SY01500.INTERID    
GO
GRANT EXECUTE ON  [dbo].[seeRMSalesPerMonthMetricMultiCoCaller] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeRMSalesPerMonthMetricMultiCoCaller] TO [rpt_executive]
GO
