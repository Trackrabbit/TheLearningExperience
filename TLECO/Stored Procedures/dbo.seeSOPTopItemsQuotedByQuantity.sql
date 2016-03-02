SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSOPTopItemsQuotedByQuantity]  @I_dUserDate datetime = NULL,  @I_iPeriodDays int   = NULL,  @I_iNumItems int   = NULL,  @Prospect varchar(max)  as  declare @ValuesTable table (Value nvarchar(500))  insert into @ValuesTable select * from dbo.seeSplitString(@Prospect, ',')  select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  if @Prospect = '' begin  select  TOP (select @I_iNumItems) sum(round((Line.QUANTITY * Line.QTYBSUOM), Line.DECPLQTY - 1)) as QTYInBase,  Line.ITEMNMBR as ItemNumber,  '' as Filter  from  dbo.SOP30200 as Header with (NOLOCK),  dbo.SOP30300 as Line with (NOLOCK)  where  (Header.DOCDATE >= @I_dUserDate - @I_iPeriodDays and Header.DOCDATE <= @I_dUserDate - 1) and  Header.SOPTYPE = 1 and Header.VOIDSTTS <> 1 and  (Header.SOPTYPE = Line.SOPTYPE and Header.SOPNUMBE = Line.SOPNUMBE) and   Line.QUANTITY > 0 and PROSPECT = 1  group by  ITEMNMBR  order by  QTYInBase DESC,  ItemNumber end else begin   select  sum(round((Line.QUANTITY * Line.QTYBSUOM), Line.DECPLQTY - 1)) as QTYInBase,  Line.ITEMNMBR as ItemNumber,  CUSTNMBR as Filter  from  dbo.SOP30200 as Header with (NOLOCK),  dbo.SOP30300 as Line with (NOLOCK),  (select  TOP (select @I_iNumItems) sum(round((Line.QUANTITY * Line.QTYBSUOM), Line.DECPLQTY - 1)) as QTYInBase,  Line.ITEMNMBR as ItemNumber  from  dbo.SOP30200 as Header with (NOLOCK),  dbo.SOP30300 as Line with (NOLOCK)  where  (Header.DOCDATE >= @I_dUserDate - @I_iPeriodDays and Header.DOCDATE <= @I_dUserDate - 1) and  Header.SOPTYPE = 1 and Header.VOIDSTTS <> 1 and  (Header.SOPTYPE = Line.SOPTYPE and Header.SOPNUMBE = Line.SOPNUMBE) and   Line.QUANTITY > 0 and PROSPECT = 1  group by  ITEMNMBR  order by  QTYInBase DESC,  ItemNumber) ItemsList,  @ValuesTable CustomerList  where  (Header.DOCDATE >= @I_dUserDate - @I_iPeriodDays and Header.DOCDATE <= @I_dUserDate - 1) and  Header.SOPTYPE = 1 and Header.VOIDSTTS <> 1 and  (Header.SOPTYPE = Line.SOPTYPE and Header.SOPNUMBE = Line.SOPNUMBE) and   Line.QUANTITY > 0 and PROSPECT = 1  and Line.ITEMNMBR = ItemsList.ItemNumber  and CustomerList.Value = CUSTNMBR  group by  ITEMNMBR,  CUSTNMBR  order by  QTYInBase DESC,  ItemNumber,  Filter  end    
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopItemsQuotedByQuantity] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopItemsQuotedByQuantity] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopItemsQuotedByQuantity] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopItemsQuotedByQuantity] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopItemsQuotedByQuantity] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopItemsQuotedByQuantity] TO [rpt_purchasing manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopItemsQuotedByQuantity] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopItemsQuotedByQuantity] TO [rpt_warehouse manager]
GO
