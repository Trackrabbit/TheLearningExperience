SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602909N_1] (@BS int, @BSSI_Ground_Lease_Number char(25), @BSSI_Ground_Lease_Number_RS char(25), @BSSI_Ground_Lease_Number_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Ground_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, BSSI_Commencement_Date, BSSI_Lead_Time, BSSI_Renewal_Type, BSSI_First_Term_Months, BSSI_First_Term_Qty, BSSI_First_Term_Years, BSSI_Renewal_Option_Qty, BSSI_Renewal_Option_Mont, BSSI_Renewal_Option_Year, BSSI_Total_Lease_Terms_M, BSSI_Alignment, NOTEINDX, DEX_ROW_ID FROM .B4602909 WHERE ( BSSI_Ground_Lease_Number > @BSSI_Ground_Lease_Number ) ORDER BY BSSI_Ground_Lease_Number ASC END ELSE IF @BSSI_Ground_Lease_Number_RS = @BSSI_Ground_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, BSSI_Commencement_Date, BSSI_Lead_Time, BSSI_Renewal_Type, BSSI_First_Term_Months, BSSI_First_Term_Qty, BSSI_First_Term_Years, BSSI_Renewal_Option_Qty, BSSI_Renewal_Option_Mont, BSSI_Renewal_Option_Year, BSSI_Total_Lease_Terms_M, BSSI_Alignment, NOTEINDX, DEX_ROW_ID FROM .B4602909 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number_RS AND ( BSSI_Ground_Lease_Number > @BSSI_Ground_Lease_Number ) ORDER BY BSSI_Ground_Lease_Number ASC END ELSE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, BSSI_Commencement_Date, BSSI_Lead_Time, BSSI_Renewal_Type, BSSI_First_Term_Months, BSSI_First_Term_Qty, BSSI_First_Term_Years, BSSI_Renewal_Option_Qty, BSSI_Renewal_Option_Mont, BSSI_Renewal_Option_Year, BSSI_Total_Lease_Terms_M, BSSI_Alignment, NOTEINDX, DEX_ROW_ID FROM .B4602909 WHERE BSSI_Ground_Lease_Number BETWEEN @BSSI_Ground_Lease_Number_RS AND @BSSI_Ground_Lease_Number_RE AND ( BSSI_Ground_Lease_Number > @BSSI_Ground_Lease_Number ) ORDER BY BSSI_Ground_Lease_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602909N_1] TO [DYNGRP]
GO
