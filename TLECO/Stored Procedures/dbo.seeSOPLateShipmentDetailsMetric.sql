SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSOPLateShipmentDetailsMetric]  @I_dEndDate datetime = NULL,  @I_iPeriodDays int   = NULL as  select  @I_dEndDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dEndDate), @I_dEndDate) select  @I_dEndDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dEndDate), @I_dEndDate) select  @I_dEndDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dEndDate), @I_dEndDate) select  @I_dEndDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dEndDate), @I_dEndDate)  create table #LateShipmentDetails (DaysLate int not null,  ReqShipDate datetime not null,  ActlShipDate datetime not null,  SOPNumber char(21) not null,  ItemNumber char(31) not null,  ItemDescription char(101) not null,  ShipToName char(65) not null,  ShipToCountry char(61) not null,  SalesTerritory char(15) not null,  SalesPersonID char(15) not null)  insert into #LateShipmentDetails  (DaysLate,  ReqShipDate,  ActlShipDate,  SOPNumber,  ItemNumber,  ItemDescription,  ShipToName,  ShipToCountry,  SalesTerritory,  SalesPersonID) select  DATEDIFF(day, ReqShipDate, ACTLSHIP) as DaysLate,  ReqShipDate as ReqShipDate,  ACTLSHIP as ActlShipDate,  SOPNUMBE as SOPNumber,  ITEMNMBR as ItemNumber,  ITEMDESC as ItemDescription,  ShipToName as ShipToName,  COUNTRY as ShipToCountry,  SALSTERR as SalesTerritory,  SLPRSNID as SalesPersonID from  dbo.SOP10200 with (NOLOCK) where  (SOPTYPE = 2 or SOPTYPE = 3 or SOPTYPE = 6) and ReqShipDate < ACTLSHIP and  (ReqShipDate >= @I_dEndDate - @I_iPeriodDays + 1 and ReqShipDate <= @I_dEndDate) union all select  DATEDIFF(day, Line.ReqShipDate, Line.ACTLSHIP) as DaysLate,  Line.ReqShipDate as ShipDate,  Line.ACTLSHIP as ActlShipDate,  Line.SOPNUMBE as SOPNumber,  Line.ITEMNMBR as ItemNumber,  Line.ITEMDESC as ItemDescription,  Line.ShipToName as ShipToName,  Line.COUNTRY as ShipToCountry,  Line.SALSTERR as SalesTerritory,  Line.SLPRSNID as SalesPersonID from  dbo.SOP30300 as Line with (NOLOCK),  dbo.SOP30200 as Header with (NOLOCK) where  Header.VOIDSTTS <> 1 and Header.SOPTYPE = 3 and  (Header.SOPTYPE = Line.SOPTYPE and Header.SOPNUMBE = Line.SOPNUMBE) and   Line.ReqShipDate < Line.ACTLSHIP and (Line.ReqShipDate >= @I_dEndDate - @I_iPeriodDays + 1 and Line.ReqShipDate <= @I_dEndDate) order by  ReqShipDate  select  * from  #LateShipmentDetails with (NOLOCK)  drop table #LateShipmentDetails    
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentDetailsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentDetailsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentDetailsMetric] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentDetailsMetric] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentDetailsMetric] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentDetailsMetric] TO [rpt_warehouse manager]
GO
