SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSPlandedcost] @RcptNumbr varchar(12), @RcptLnNum int, @IncludeFunctionalCurrency tinyint as set nocount on  select a.ITEMNMBR as [Item Number], a.VENDORID as [Vendor ID], a.CURNCYID as [Currency ID], b.CALCMTHD as [Calc Method], b.Orig_Landed_Cost_Amount as [Landed Cost Amount],  b.Calculation_Percentage as [Percentage], case   when @IncludeFunctionalCurrency = 0  then b.Orig_TotalLandedCostAmt  else  b.Total_Landed_Cost_Amount  end as [Total Landed Cost Amount] from POP10500 a join POP30700 b on a.POPRCTNM = b.POPRCTNM and a.RCPTLNNM = b.RCPTLNNM and a.POLNENUM = b.LCLINENUMBER where a.POPRCTNM = @RcptNumbr  and a.RCPTLNNM = @RcptLnNum and a.PONUMBER = '' and a.POLNENUM <> 0    
GO
GRANT EXECUTE ON  [dbo].[seeSPlandedcost] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSPlandedcost] TO [rpt_power user]
GO
GRANT EXECUTE ON  [dbo].[seeSPlandedcost] TO [rpt_purchasing agent]
GO
GRANT EXECUTE ON  [dbo].[seeSPlandedcost] TO [rpt_purchasing manager]
GO
