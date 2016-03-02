SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSOPLateShipmentCountsMetric]  @I_dUserDate datetime = NULL,  @I_iPeriodDays int   = NULL as  declare  @iterator int    select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  create table #LateShipmentCounts (ReqShipDateNumber int not null,   ReqShipDate datetime not null) select  @iterator = 1 while (@iterator <= @I_iPeriodDays) begin  insert into #LateShipmentCounts values(0, @I_dUserDate - @iterator)  select @iterator = @iterator + 1 end  insert into #LateShipmentCounts  (ReqShipDateNumber,  ReqShipDate) select  count(ReqShipDate) AS ReqShipDateNumber,  ReqShipDate from  dbo.SOP10200 with (NOLOCK) where  (SOPTYPE = 2 or SOPTYPE = 3 or SOPTYPE = 6) and ReqShipDate < ACTLSHIP and  (ReqShipDate >= @I_dUserDate - @I_iPeriodDays and ReqShipDate <= @I_dUserDate - 1) group by  ReqShipDate union all  select  count(Line.ReqShipDate) as ReqShipDateNumber,  Line.ReqShipDate  from  dbo.SOP30300 as Line with (NOLOCK),  dbo.SOP30200 as Header with (NOLOCK)  where  Header.VOIDSTTS <> 1 and Header.SOPTYPE = 3 and  (Header.SOPTYPE = Line.SOPTYPE and Header.SOPNUMBE = Line.SOPNUMBE) and   Line.ReqShipDate < Line.ACTLSHIP and (Line.ReqShipDate >= @I_dUserDate - @I_iPeriodDays and Line.ReqShipDate <= @I_dUserDate - 1)  group by  Line.ReqShipDate  order by  ReqShipDate  select  * from  #LateShipmentCounts with (NOLOCK)  drop table #LateShipmentCounts    
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentCountsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentCountsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentCountsMetric] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentCountsMetric] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentCountsMetric] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentCountsMetric] TO [rpt_warehouse manager]
GO
