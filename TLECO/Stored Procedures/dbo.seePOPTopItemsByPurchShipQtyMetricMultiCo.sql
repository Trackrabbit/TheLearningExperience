SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seePOPTopItemsByPurchShipQtyMetricMultiCo]  @I_dUserDate datetime = NULL,  @I_iNumItems int   = NULL,  @I_iPeriodDays int   = NULL as  select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  create table dbo.#ItemQtys (ITEMNMBR char(31) NOT NULL,  QTYSHPPD numeric(19,5),  DEX_ROW_ID int identity NOT NULL) create index AK2#ItemQtys on #ItemQtys (ITEMNMBR)  insert #ItemQtys   (ITEMNMBR,   QTYSHPPD) select  RcptApply.ITEMNMBR as Item,   sum(round(RcptApply.QTYSHPPD * RcptApply.UMQTYINB, LineHist.DECPLQTY - 1))  from  POP30310 as LineHist with (NOLOCK),   POP10500 as RcptApply with (NOLOCK)  where   (RcptApply.Status = 1) and (RcptApply.DATERECD >= @I_dUserDate - @I_iPeriodDays and RcptApply.DATERECD <= @I_dUserDate - 1) and   (RcptApply.POPRCTNM = LineHist.POPRCTNM and RcptApply.RCPTLNNM = LineHist.RCPTLNNM) and   (RcptApply.QTYSHPPD > 0) and (RcptApply.POPTYPE = 1 or RcptApply.POPTYPE = 3) group by   RcptApply.ITEMNMBR  insert #ItemQtys   (ITEMNMBR,   QTYSHPPD) select  RcptApply.ITEMNMBR as Item,   sum(round(RcptApply.QTYINVCD * RcptApply.UMQTYINB, LineHist.DECPLQTY - 1))  from   POP30310 as LineHist with (NOLOCK),   POP10500 as RcptApply with (NOLOCK) where   (RcptApply.Status = 1) and (RcptApply.DATERECD >= @I_dUserDate - @I_iPeriodDays and RcptApply.DATERECD <= @I_dUserDate - 1) and   (RcptApply.POPRCTNM = LineHist.POPRCTNM and RcptApply.RCPTLNNM = LineHist.RCPTLNNM) and (RcptApply.QTYINVCD > 0) and   (RcptApply.POPTYPE = 2) and (exists   (select   *   from   POP10100 as POWork   where   (RcptApply.PONUMBER <> '' and RcptApply.PONUMBER = POWork.PONUMBER and (POWork.POTYPE = 2 or POWork.POTYPE = 4)))   or exists (  select   *   from   POP30100 as POHist   where   (RcptApply.PONUMBER <> '' and RcptApply.PONUMBER = POHist.PONUMBER and (POHist.POTYPE = 2 or POHist.POTYPE = 4)))) group by   RcptApply.ITEMNMBR  select   top (select @I_iNumItems) sum(ItemQtys.QTYSHPPD) as QtyShipInv,   ItemQtys.ITEMNMBR as ItemNumber, db_name() as CoID from   #ItemQtys as ItemQtys  group by   ItemQtys.ITEMNMBR order by   QtyShipInv DESC,   ItemNumber,  CoID  drop table #ItemQtys    
GO
GRANT EXECUTE ON  [dbo].[seePOPTopItemsByPurchShipQtyMetricMultiCo] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seePOPTopItemsByPurchShipQtyMetricMultiCo] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seePOPTopItemsByPurchShipQtyMetricMultiCo] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seePOPTopItemsByPurchShipQtyMetricMultiCo] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seePOPTopItemsByPurchShipQtyMetricMultiCo] TO [rpt_purchasing agent]
GO
GRANT EXECUTE ON  [dbo].[seePOPTopItemsByPurchShipQtyMetricMultiCo] TO [rpt_purchasing manager]
GO
GRANT EXECUTE ON  [dbo].[seePOPTopItemsByPurchShipQtyMetricMultiCo] TO [rpt_shipping and receiving]
GO
