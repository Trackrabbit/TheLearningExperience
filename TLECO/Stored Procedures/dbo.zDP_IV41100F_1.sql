SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV41100F_1] (@Landed_Cost_ID_RS char(15), @Landed_Cost_ID_RE char(15)) AS  set nocount on IF @Landed_Cost_ID_RS IS NULL BEGIN SELECT TOP 25  Landed_Cost_ID, Long_Description, NOTEINDX, VENDORID, CURNCYID, CURRNIDX, RATETPID, DECPLCUR, ODECPLCU, ACPURIDX, PURPVIDX, Invoice_Match, CALCMTHD, Orig_Landed_Cost_Amount, Calculation_Percentage, Revalue_Inventory, Tolerance_Percentage, Vendor_Note_Index, Currency_Note_Index, DEX_ROW_ID FROM .IV41100 ORDER BY Landed_Cost_ID ASC END ELSE IF @Landed_Cost_ID_RS = @Landed_Cost_ID_RE BEGIN SELECT TOP 25  Landed_Cost_ID, Long_Description, NOTEINDX, VENDORID, CURNCYID, CURRNIDX, RATETPID, DECPLCUR, ODECPLCU, ACPURIDX, PURPVIDX, Invoice_Match, CALCMTHD, Orig_Landed_Cost_Amount, Calculation_Percentage, Revalue_Inventory, Tolerance_Percentage, Vendor_Note_Index, Currency_Note_Index, DEX_ROW_ID FROM .IV41100 WHERE Landed_Cost_ID = @Landed_Cost_ID_RS ORDER BY Landed_Cost_ID ASC END ELSE BEGIN SELECT TOP 25  Landed_Cost_ID, Long_Description, NOTEINDX, VENDORID, CURNCYID, CURRNIDX, RATETPID, DECPLCUR, ODECPLCU, ACPURIDX, PURPVIDX, Invoice_Match, CALCMTHD, Orig_Landed_Cost_Amount, Calculation_Percentage, Revalue_Inventory, Tolerance_Percentage, Vendor_Note_Index, Currency_Note_Index, DEX_ROW_ID FROM .IV41100 WHERE Landed_Cost_ID BETWEEN @Landed_Cost_ID_RS AND @Landed_Cost_ID_RE ORDER BY Landed_Cost_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV41100F_1] TO [DYNGRP]
GO
