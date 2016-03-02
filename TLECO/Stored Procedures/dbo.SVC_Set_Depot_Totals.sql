SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Set_Depot_Totals] (@worectype int = NULL, @wonbr varchar(11) = NULL)  as declare @linetotals numeric(19,2) declare @partsprice numeric(19,2) declare @partscost numeric(19,2) declare @laborprice numeric(19,2) declare @laborcost numeric(19,2) declare @LABORTOTAL numeric(19,5) if @worectype is NULL or @wonbr is NULL begin return 500 end select  @linetotals = SUM(XTNDPRCE)   from SVC06101   where WORECTYPE  = @worectype and  WORKORDNUM     = @wonbr select  @partsprice = SUM(XTNDPRCE),   @partscost = SUM(EXTDCOST)  from SVC06101   where WORECTYPE  = @worectype and  WORKORDNUM     = @wonbr and  LINITMTYP = 'P' and CMPNTSEQ = 0 select  @laborprice = SUM(XTNDPRCE),   @laborcost = SUM(EXTDCOST),  @LABORTOTAL = SUM(QTYSOLD)  from SVC06101   where WORECTYPE  = @worectype and  WORKORDNUM    = @wonbr and  LINITMTYP = 'L' if @linetotals is NULL select @linetotals = 0 if @partsprice is NULL select @partsprice = 0 if @partscost is NULL select @partscost = 0 if @laborprice is NULL select @laborprice = 0 if @laborcost is NULL select @laborcost = 0 if @LABORTOTAL is null select @LABORTOTAL = 0 update SVC06100 set  PARSTOTCST = @partscost,  LABSTOTCST = @laborcost,  TOTLABHRS = @LABORTOTAL  where WORECTYPE = @worectype and  WORKORDNUM    = @wonbr exec SVC_Calc_WO_Status @wonbr if @@error <> 0 begin return @@error end return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Set_Depot_Totals] TO [DYNGRP]
GO
