SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeSOPLateShipmentMetricDetails]   @I_dEndDate datetime = NULL,   @I_iPeriodDays int   = NULL as select distinct DATEDIFF(day, T.ReqShipDate, T.ACTLSHIP) as DaysLate, T.SOPNUMBE, T.SOPTYPE, T.ReqShipDate, T.ACTLSHIP, V.* into #LateShipmentDetailsForOpen from SalesTransactions as V, dbo.SOP10200 as T where  (T.SOPTYPE = 2 or T.SOPTYPE = 3 or T.SOPTYPE = 6)   and T.ReqShipDate < T.ACTLSHIP   and (dbo.DYN_FUNC_SOP_Type(T.SOPTYPE) = V.[SOP Type])   and (T.SOPNUMBE = V.[SOP Number]) select distinct DATEDIFF(day, THeader.ReqShipDate, THeader.ACTLSHIP) as DaysLate, THeader.SOPNUMBE, THeader.SOPTYPE, TLine.ReqShipDate, TLine.ACTLSHIP, V.* into #LateShipmentDetailsForHistory from SalesTransactions as V,   dbo.SOP30300 as TLine with (NOLOCK),  dbo.SOP30200 as THeader with (NOLOCK) where THeader.VOIDSTTS <> 1   and THeader.SOPTYPE = 3   and (THeader.SOPTYPE = TLine.SOPTYPE and THeader.SOPNUMBE = TLine.SOPNUMBE)   and TLine.ReqShipDate < TLine.ACTLSHIP   and (dbo.DYN_FUNC_SOP_Type(THeader.SOPTYPE) = V.[SOP Type])  and (THeader.SOPNUMBE = V.[SOP Number]) select ForOpen.* into #LateShipmentDetails from #LateShipmentDetailsForOpen as ForOpen insert into #LateShipmentDetails select ForHistory.*  from #LateShipmentDetailsForHistory as ForHistory if @I_dEndDate is not null or @I_iPeriodDays is not null  select distinct * from #LateShipmentDetails   where ReqShipDate >= @I_dEndDate - @I_iPeriodDays + 1     and ReqShipDate <= @I_dEndDate else  select distinct * from #LateShipmentDetails drop table #LateShipmentDetails drop table #LateShipmentDetailsForOpen drop table #LateShipmentDetailsForHistory          
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentMetricDetails] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentMetricDetails] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentMetricDetails] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentMetricDetails] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentMetricDetails] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeSOPLateShipmentMetricDetails] TO [rpt_warehouse manager]
GO
