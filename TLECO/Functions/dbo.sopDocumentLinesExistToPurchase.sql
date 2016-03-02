SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[sopDocumentLinesExistToPurchase] (  @I_cSOPNumber char(21),  @I_sSOPTYPE smallint ) RETURNS tinyint AS BEGIN  DECLARE  @tExists tinyint,  @tHasQty tinyint  select  @tExists=0  select @tExists =  case @I_sSOPTYPE  when 1 then 0  when 3 then 0  when 4 then 0  when 6 then 0  else    ((select 1 where exists(select top 1 SOPNUMBE from [dbo].[SOP10200]   left outer join IV00101 on IV00101.ITEMNMBR = SOP10200.ITEMNMBR  where SOPTYPE = @I_sSOPTYPE and SOPNUMBE = @I_cSOPNumber and   (isnull(IV00101.ITEMTYPE,0) <> 2 and isnull(IV00101.ITEMTYPE,0) <> 3) and  (QTYONPO = 0 and QTYRECVD = 0) and  (dbo.sopLineHasQtyToPurchase(SOPTYPE, NONINVEN, DROPSHIP, isnull(IV00101.ITEMTYPE,0), QTYREMAI, QTYTBAOR) <> 0) and  (NOT (SOPTYPE = 2 and   dbo.sopLineHasQtyToPurchase(SOPTYPE, NONINVEN, DROPSHIP, isnull(IV00101.ITEMTYPE,0), QTYREMAI, QTYTBAOR) <> 0 and   isnull(IV00101.ITEMTYPE,0) <> 1 and NONINVEN <> 1 and DROPSHIP <> 1 and QTYTBAOR = 0)  )  )))  end  return isnull(@tExists, 0) END   
GO
GRANT EXECUTE ON  [dbo].[sopDocumentLinesExistToPurchase] TO [DYNGRP]
GO
