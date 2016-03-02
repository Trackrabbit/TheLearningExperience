SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30700SS_2] (@POPRCTNM char(17), @Landed_Cost_ID char(15), @VENDORID char(15), @ACPURIDX int, @RCPTLNNM int, @LCLINENUMBER int) AS  set nocount on SELECT TOP 1  POPRCTNM, RCPTLNNM, LCLINENUMBER, LCHDRNUMBER, Landed_Cost_ID, NOTEINDX, Long_Description, Landed_Cost_Type, VENDORID, Vendor_Note_Index, CURNCYID, Currency_Note_Index, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DECPLCUR, ODECPLCU, ACPURIDX, DistRef, PURPVIDX, Invoice_Match, CALCMTHD, Orig_Landed_Cost_Amount, Calculation_Percentage, Total_Landed_Cost_Amount, Orig_TotalLandedCostAmt, Landed_Cost_Warnings, Apportion_By, Orig_UnapportionedAmount, INVINDX, DEX_ROW_ID FROM .POP30700 WHERE POPRCTNM = @POPRCTNM AND Landed_Cost_ID = @Landed_Cost_ID AND VENDORID = @VENDORID AND ACPURIDX = @ACPURIDX AND RCPTLNNM = @RCPTLNNM AND LCLINENUMBER = @LCLINENUMBER ORDER BY POPRCTNM ASC, Landed_Cost_ID ASC, VENDORID ASC, ACPURIDX ASC, RCPTLNNM ASC, LCLINENUMBER ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30700SS_2] TO [DYNGRP]
GO