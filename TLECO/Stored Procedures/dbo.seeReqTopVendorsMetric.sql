SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeReqTopVendorsMetric]  @UserDate datetime = NULL,  @I_iNumItems int   = NULL,  @I_iPeriodMonths int   = NULL  as set nocount ON  declare @dtStart datetime,   @dtEnd datetime  select  @UserDate = DATEADD(HOUR, -DATEPART(HOUR, @UserDate), @UserDate) select  @UserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @UserDate), @UserDate) select  @UserDate = DATEADD(SECOND, -DATEPART(SECOND, @UserDate), @UserDate) select  @UserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @UserDate), @UserDate)  select  @dtEnd = DATEADD(day, -DAY(@UserDate), @UserDate) select  @dtStart = DATEADD(month, -@I_iPeriodMonths, DATEADD(day, -DAY(@UserDate)+1, @UserDate))  CREATE TABLE dbo.#VendorAmts (VENDORID char(15) NOT NULL,   REQAMT numeric(19,5))   CREATE INDEX AK2#VendorAmts ON #VendorAmts (VENDORID)   insert #VendorAmts (VENDORID, REQAMT)  select [PurchLineWork].[VENDORID], SUM([PurchLineWork].[EXTDCOST]+[PurchLineWork].[FRTAMNT]+[PurchLineWork].[TAXAMNT]) from POP10210 as [PurchLineWork] where [PurchLineWork].REQDATE between @dtStart and @dtEnd group by [PurchLineWork].[VENDORID]  insert #VendorAmts (VENDORID, REQAMT)  select [PurchLineHist].[VENDORID], SUM([PurchLineHist].[EXTDCOST]+[PurchLineHist].[FRTAMNT]+[PurchLineHist].[TAXAMNT]) from POP30210 as [PurchLineHist] where [PurchLineHist].REQDATE between @dtStart and @dtEnd group by [PurchLineHist].[VENDORID]  select top (select @I_iNumItems) VENDORID as [VendorID], SUM(REQAMT) as [TotalAmount] from #VendorAmts group by VENDORID order by SUM(REQAMT) desc  DROP TABLE dbo.#VendorAmts   set nocount OFF RETURN   
GO
GRANT EXECUTE ON  [dbo].[seeReqTopVendorsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeReqTopVendorsMetric] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeReqTopVendorsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeReqTopVendorsMetric] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeReqTopVendorsMetric] TO [rpt_purchasing agent]
GO
GRANT EXECUTE ON  [dbo].[seeReqTopVendorsMetric] TO [rpt_purchasing manager]
GO
