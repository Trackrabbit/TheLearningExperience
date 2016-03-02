SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV41100SI] (@Landed_Cost_ID char(15), @Long_Description char(51), @NOTEINDX numeric(19,5), @VENDORID char(15), @CURNCYID char(15), @CURRNIDX smallint, @RATETPID char(15), @DECPLCUR smallint, @ODECPLCU smallint, @ACPURIDX int, @PURPVIDX int, @Invoice_Match tinyint, @CALCMTHD smallint, @Orig_Landed_Cost_Amount numeric(19,5), @Calculation_Percentage int, @Revalue_Inventory tinyint, @Tolerance_Percentage int, @Vendor_Note_Index numeric(19,5), @Currency_Note_Index numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV41100 (Landed_Cost_ID, Long_Description, NOTEINDX, VENDORID, CURNCYID, CURRNIDX, RATETPID, DECPLCUR, ODECPLCU, ACPURIDX, PURPVIDX, Invoice_Match, CALCMTHD, Orig_Landed_Cost_Amount, Calculation_Percentage, Revalue_Inventory, Tolerance_Percentage, Vendor_Note_Index, Currency_Note_Index) VALUES ( @Landed_Cost_ID, @Long_Description, @NOTEINDX, @VENDORID, @CURNCYID, @CURRNIDX, @RATETPID, @DECPLCUR, @ODECPLCU, @ACPURIDX, @PURPVIDX, @Invoice_Match, @CALCMTHD, @Orig_Landed_Cost_Amount, @Calculation_Percentage, @Revalue_Inventory, @Tolerance_Percentage, @Vendor_Note_Index, @Currency_Note_Index) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV41100SI] TO [DYNGRP]
GO
