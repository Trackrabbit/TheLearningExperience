SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seePOPTopItemsByPurchShipQtyMetricMultiCocaller]   @I_dUserDate datetime = NULL,  @I_iNumItems int   = NULL,  @I_iPeriodDays int   = NULL,  @companyID varchar(8000) as  create table #TopPurchShipQty  (  QtyShipInv numeric (19,5),  ItemNumber char(31) not null,  CoID char(15) not null  )  declare @string1 varchar(8000) declare  getCompanyID cursor  for  select StrPiece from SplitDelimitedString (',',@companyID) open getCompanyID FETCH NEXT From getCompanyID into @companyID   WHILE @@FETCH_STATUS = 0 BEGIN  select @string1 = ''+RTRIM(@companyID)+'' + '..seePOPTopItemsByPurchShipQtyMetricMultiCo'   + ' '   + '''' +  RIGHT ('0000'+ CAST (DATENAME(yyyy,@I_dUserDate) AS varchar), 4) + RIGHT ('00'+ CAST (month(@I_dUserDate) AS varchar), 2) + RIGHT ('00'+ CAST (DATENAME(dd,@I_dUserDate) AS varchar), 2) + ''''   + ' ,'   + rtrim(cast(@I_iNumItems as int)) +   + ' ,'   + rtrim(cast(@I_iPeriodDays as int)) +'' insert into #TopPurchShipQty  exec (@string1)  FETCH NEXT From getCompanyID into @companyID  End CLOSE getCompanyID DEALLOCATE getCompanyID  select DYNAMICS..SY01500.CMPNYNAM as CoName, CoID, ItemNumber, QtyShipInv from #TopPurchShipQty join DYNAMICS..SY01500 on #TopPurchShipQty.CoID = DYNAMICS..SY01500.INTERID   
GO
GRANT EXECUTE ON  [dbo].[seePOPTopItemsByPurchShipQtyMetricMultiCocaller] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seePOPTopItemsByPurchShipQtyMetricMultiCocaller] TO [rpt_executive]
GO
