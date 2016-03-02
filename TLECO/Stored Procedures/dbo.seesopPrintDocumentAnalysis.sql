SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seesopPrintDocumentAnalysis]  @FromItemNumber char(31),  @ToItemNumber char(31),  @FromCustomerID char(15), @ToCustomerID char(15), @FromDocumentDate datetime, @ToDocumentDate datetime, @IncludeKitComponent tinyint  as   select SOP30200.CUSTNMBR as CustomerID,  SOP30200.CUSTNAME as CustomerName,  SOP30200.SOPTYPE  as SOPType,  SOP30300.ITEMNMBR as ItemNumber,  SOP30300.ITEMDESC as ItemDescription,  SOP30300.CMPNTSEQ as KitComponent,  SOP30300.DROPSHIP as DropShip,  SOP30300.NONINVEN as NonIV,  SOP30300.DECPLQTY as DecimalPlacesQTYS,  case when SOP30300.SOPTYPE = 4 then   -1 * (SOP30300.QUANTITY * SOP30300.QTYBSUOM)  when SOP30300.SOPTYPE = 3 and SOP30300.QUANTITY < 0 then   (SOP30300.QTYTOINV * SOP30300.QTYBSUOM)  else   (SOP30300.QUANTITY * SOP30300.QTYBSUOM)  end as QTY,    case when SOP30300.SOPTYPE = 4 and SOP30300.CMPNTSEQ = 0 then   -1 * SOP30300.EXTDCOST  when SOP30300.SOPTYPE <> 4 and SOP30300.CMPNTSEQ = 0 then  SOP30300.EXTDCOST  else  0.00  end as ExtendedCost,   case when SOP30300.SOPTYPE = 4 and SOP30300.CMPNTSEQ = 0 then   -1 * SOP30300.XTNDPRCE  else SOP30300.XTNDPRCE  end as ExtendedPrice  from SOP30200  inner join SOP30300 on SOP30300.SOPTYPE = SOP30200.SOPTYPE and SOP30300.SOPNUMBE = SOP30200.SOPNUMBE where (SOP30300.ITEMNMBR >= @FromItemNumber and SOP30300.ITEMNMBR <= @ToItemNumber) and (SOP30200.CUSTNMBR >= @FromCustomerID and SOP30200.CUSTNMBR <= @ToCustomerID) and (SOP30200.DOCDATE >= @FromDocumentDate and SOP30200.DOCDATE <= @ToDocumentDate)   
GO
GRANT EXECUTE ON  [dbo].[seesopPrintDocumentAnalysis] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seesopPrintDocumentAnalysis] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[seesopPrintDocumentAnalysis] TO [rpt_power user]
GO
