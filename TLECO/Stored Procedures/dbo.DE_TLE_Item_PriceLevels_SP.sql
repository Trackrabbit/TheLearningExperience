SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE procedure [dbo].[DE_TLE_Item_PriceLevels_SP]
@location varchar(50)
as
set nocount on
 
--SET @location = '7TX7737901'

SELECT IV.ITEMNMBR Item_Number,
       IM.ITEMDESC Item_Description,
       IM.ITMCLSCD Item_Class,
       IV.PRCLEVEL Price_Level,
       CASE IM.PRICMTHD
       	  WHEN 1 THEN 'Currency Amount'
       	  WHEN 2 THEN '% of List Price'
	  WHEN 3 THEN '% Markup – Current Cost'
	  WHEN 4 THEN '% Markup – Standard Cost'
	  WHEN 5 THEN '% Margin – Current Cost'
	  WHEN 6 THEN '% Margin – Standard Cost'
	  END Price_Method,
       IV.CURNCYID Currency_ID,
       IV.UOFM U_of_M,
       CASE IM.PRICMTHD
	  WHEN 1 THEN IV.UOMPRICE
	  WHEN 2 THEN IV.UOMPRICE * IC.LISTPRCE / 100
	  ELSE 0
	  END Price,
       CASE IM.PRICMTHD
	  WHEN 1 THEN 0
	  ELSE IV.UOMPRICE
	  END Percent_of_List,
       IV.FROMQTY From_Qty,
       IV.TOQTY To_Qty,
       IV.QTYBSUOM Qty_In_Base_UofM

FROM   IV00108 IV

LEFT OUTER JOIN
       IV00101 IM
       ON IM.ITEMNMBR = IV.ITEMNMBR

LEFT OUTER JOIN
       IV00105 IC
       ON IC.ITEMNMBR = IV.ITEMNMBR
       AND IV.CURNCYID = IC.CURNCYID
	   where (@location) in (IV.PRCLEVEL)
	   order by Item_Description

GO
GRANT EXECUTE ON  [dbo].[DE_TLE_Item_PriceLevels_SP] TO [DYNGRP]
GO
