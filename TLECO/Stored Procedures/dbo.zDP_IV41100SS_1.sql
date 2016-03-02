SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV41100SS_1] (@Landed_Cost_ID char(15)) AS  set nocount on SELECT TOP 1  Landed_Cost_ID, Long_Description, NOTEINDX, VENDORID, CURNCYID, CURRNIDX, RATETPID, DECPLCUR, ODECPLCU, ACPURIDX, PURPVIDX, Invoice_Match, CALCMTHD, Orig_Landed_Cost_Amount, Calculation_Percentage, Revalue_Inventory, Tolerance_Percentage, Vendor_Note_Index, Currency_Note_Index, DEX_ROW_ID FROM .IV41100 WHERE Landed_Cost_ID = @Landed_Cost_ID ORDER BY Landed_Cost_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV41100SS_1] TO [DYNGRP]
GO
