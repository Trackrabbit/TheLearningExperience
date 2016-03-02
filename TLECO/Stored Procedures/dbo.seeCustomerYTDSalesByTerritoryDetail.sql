SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeCustomerYTDSalesByTerritoryDetail]   @State char (10) as create table #Detail (  Customer_Number char (15),  Customer_Name char(65),  City char (35),  [State] char (29),  Country char (61),  Territory char (15),  Salesperson_ID char (15),  Total_Sales_YTD numeric (19,5),  Drillback_for_CustomerID varchar(500),  Drillback_for_Salesperson varchar (500)) INSERT INTO #Detail (Customer_Number, Customer_Name, City, [State], Country, Territory, Salesperson_ID, Total_Sales_YTD, Drillback_for_CustomerID, Drillback_for_Salesperson) SELECT RM00101.CUSTNMBR, RM00101.CUSTNAME, RM00101.CITY, RTRIM(RM00101.[STATE]), RM00101.COUNTRY, RM00101.SALSTERR, RM00101.SLPRSNID, isnull(RM00103.TTLSLYTD,0), Customers.[Customer Number For Drillback], Customers.[Salesperson ID For Drillback] FROM RM00101 JOIN RM00103 on  RM00101.CUSTNMBR = RM00103.CUSTNMBR JOIN (select DISTINCT [Customer Number], [Customer Number For Drillback], [Salesperson ID For Drillback] from Customers) Customers   on RM00101.CUSTNMBR = Customers.[Customer Number] WHERE isnull(RM00103.TTLSLYTD,0)<>0  IF @State = 'All'  BEGIN  SELECT Customer_Number, Customer_Name, City, [State], Country, Territory, Salesperson_ID, Total_Sales_YTD, Drillback_for_CustomerID, Drillback_for_Salesperson  FROM #Detail END Else BEGIN  SELECT Customer_Number, Customer_Name, City, [State], Country, Territory, Salesperson_ID, Total_Sales_YTD, Drillback_for_CustomerID, Drillback_for_Salesperson  FROM #Detail   WHERE [State] = @State END          
GO
GRANT EXECUTE ON  [dbo].[seeCustomerYTDSalesByTerritoryDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeCustomerYTDSalesByTerritoryDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeCustomerYTDSalesByTerritoryDetail] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeCustomerYTDSalesByTerritoryDetail] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeCustomerYTDSalesByTerritoryDetail] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[seeCustomerYTDSalesByTerritoryDetail] TO [rpt_power user]
GO
GRANT EXECUTE ON  [dbo].[seeCustomerYTDSalesByTerritoryDetail] TO [rpt_sales manager]
GO
GRANT EXECUTE ON  [dbo].[seeCustomerYTDSalesByTerritoryDetail] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeCustomerYTDSalesByTerritoryDetail] TO [rpt_warehouse manager]
GO
