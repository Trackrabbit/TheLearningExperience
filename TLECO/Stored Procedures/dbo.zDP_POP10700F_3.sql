SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10700F_3] (@POPRCTNM_RS char(17), @CURNCYID_RS char(15), @VENDORID_RS char(15), @RCPTLNNM_RS int, @LCLINENUMBER_RS int, @POPRCTNM_RE char(17), @CURNCYID_RE char(15), @VENDORID_RE char(15), @RCPTLNNM_RE int, @LCLINENUMBER_RE int) AS  set nocount on IF @POPRCTNM_RS IS NULL BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, LCLINENUMBER, LCHDRNUMBER, Landed_Cost_ID, NOTEINDX, Long_Description, Landed_Cost_Type, VENDORID, Vendor_Note_Index, CURNCYID, Currency_Note_Index, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DECPLCUR, ODECPLCU, ACPURIDX, DistRef, PURPVIDX, Invoice_Match, CALCMTHD, Orig_Landed_Cost_Amount, Calculation_Percentage, Total_Landed_Cost_Amount, Orig_TotalLandedCostAmt, Landed_Cost_Warnings, Apportion_By, Orig_UnapportionedAmount, INVINDX, Applied, DEX_ROW_ID FROM .POP10700 ORDER BY POPRCTNM ASC, CURNCYID ASC, VENDORID ASC, RCPTLNNM ASC, LCLINENUMBER ASC END ELSE IF @POPRCTNM_RS = @POPRCTNM_RE BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, LCLINENUMBER, LCHDRNUMBER, Landed_Cost_ID, NOTEINDX, Long_Description, Landed_Cost_Type, VENDORID, Vendor_Note_Index, CURNCYID, Currency_Note_Index, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DECPLCUR, ODECPLCU, ACPURIDX, DistRef, PURPVIDX, Invoice_Match, CALCMTHD, Orig_Landed_Cost_Amount, Calculation_Percentage, Total_Landed_Cost_Amount, Orig_TotalLandedCostAmt, Landed_Cost_Warnings, Apportion_By, Orig_UnapportionedAmount, INVINDX, Applied, DEX_ROW_ID FROM .POP10700 WHERE POPRCTNM = @POPRCTNM_RS AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE AND LCLINENUMBER BETWEEN @LCLINENUMBER_RS AND @LCLINENUMBER_RE ORDER BY POPRCTNM ASC, CURNCYID ASC, VENDORID ASC, RCPTLNNM ASC, LCLINENUMBER ASC END ELSE BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, LCLINENUMBER, LCHDRNUMBER, Landed_Cost_ID, NOTEINDX, Long_Description, Landed_Cost_Type, VENDORID, Vendor_Note_Index, CURNCYID, Currency_Note_Index, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DECPLCUR, ODECPLCU, ACPURIDX, DistRef, PURPVIDX, Invoice_Match, CALCMTHD, Orig_Landed_Cost_Amount, Calculation_Percentage, Total_Landed_Cost_Amount, Orig_TotalLandedCostAmt, Landed_Cost_Warnings, Apportion_By, Orig_UnapportionedAmount, INVINDX, Applied, DEX_ROW_ID FROM .POP10700 WHERE POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE AND LCLINENUMBER BETWEEN @LCLINENUMBER_RS AND @LCLINENUMBER_RE ORDER BY POPRCTNM ASC, CURNCYID ASC, VENDORID ASC, RCPTLNNM ASC, LCLINENUMBER ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10700F_3] TO [DYNGRP]
GO