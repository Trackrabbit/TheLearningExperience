SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30700N_1] (@BS int, @POPRCTNM char(17), @RCPTLNNM int, @LCLINENUMBER int, @POPRCTNM_RS char(17), @RCPTLNNM_RS int, @LCLINENUMBER_RS int, @POPRCTNM_RE char(17), @RCPTLNNM_RE int, @LCLINENUMBER_RE int) AS  set nocount on IF @POPRCTNM_RS IS NULL BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, LCLINENUMBER, LCHDRNUMBER, Landed_Cost_ID, NOTEINDX, Long_Description, Landed_Cost_Type, VENDORID, Vendor_Note_Index, CURNCYID, Currency_Note_Index, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DECPLCUR, ODECPLCU, ACPURIDX, DistRef, PURPVIDX, Invoice_Match, CALCMTHD, Orig_Landed_Cost_Amount, Calculation_Percentage, Total_Landed_Cost_Amount, Orig_TotalLandedCostAmt, Landed_Cost_Warnings, Apportion_By, Orig_UnapportionedAmount, INVINDX, DEX_ROW_ID FROM .POP30700 WHERE ( POPRCTNM = @POPRCTNM AND RCPTLNNM = @RCPTLNNM AND LCLINENUMBER > @LCLINENUMBER OR POPRCTNM = @POPRCTNM AND RCPTLNNM > @RCPTLNNM OR POPRCTNM > @POPRCTNM ) ORDER BY POPRCTNM ASC, RCPTLNNM ASC, LCLINENUMBER ASC END ELSE IF @POPRCTNM_RS = @POPRCTNM_RE BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, LCLINENUMBER, LCHDRNUMBER, Landed_Cost_ID, NOTEINDX, Long_Description, Landed_Cost_Type, VENDORID, Vendor_Note_Index, CURNCYID, Currency_Note_Index, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DECPLCUR, ODECPLCU, ACPURIDX, DistRef, PURPVIDX, Invoice_Match, CALCMTHD, Orig_Landed_Cost_Amount, Calculation_Percentage, Total_Landed_Cost_Amount, Orig_TotalLandedCostAmt, Landed_Cost_Warnings, Apportion_By, Orig_UnapportionedAmount, INVINDX, DEX_ROW_ID FROM .POP30700 WHERE POPRCTNM = @POPRCTNM_RS AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE AND LCLINENUMBER BETWEEN @LCLINENUMBER_RS AND @LCLINENUMBER_RE AND ( POPRCTNM = @POPRCTNM AND RCPTLNNM = @RCPTLNNM AND LCLINENUMBER > @LCLINENUMBER OR POPRCTNM = @POPRCTNM AND RCPTLNNM > @RCPTLNNM OR POPRCTNM > @POPRCTNM ) ORDER BY POPRCTNM ASC, RCPTLNNM ASC, LCLINENUMBER ASC END ELSE BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, LCLINENUMBER, LCHDRNUMBER, Landed_Cost_ID, NOTEINDX, Long_Description, Landed_Cost_Type, VENDORID, Vendor_Note_Index, CURNCYID, Currency_Note_Index, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DECPLCUR, ODECPLCU, ACPURIDX, DistRef, PURPVIDX, Invoice_Match, CALCMTHD, Orig_Landed_Cost_Amount, Calculation_Percentage, Total_Landed_Cost_Amount, Orig_TotalLandedCostAmt, Landed_Cost_Warnings, Apportion_By, Orig_UnapportionedAmount, INVINDX, DEX_ROW_ID FROM .POP30700 WHERE POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE AND LCLINENUMBER BETWEEN @LCLINENUMBER_RS AND @LCLINENUMBER_RE AND ( POPRCTNM = @POPRCTNM AND RCPTLNNM = @RCPTLNNM AND LCLINENUMBER > @LCLINENUMBER OR POPRCTNM = @POPRCTNM AND RCPTLNNM > @RCPTLNNM OR POPRCTNM > @POPRCTNM ) ORDER BY POPRCTNM ASC, RCPTLNNM ASC, LCLINENUMBER ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30700N_1] TO [DYNGRP]
GO
