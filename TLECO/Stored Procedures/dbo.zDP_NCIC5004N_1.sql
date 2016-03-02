SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5004N_1] (@BS int, @Xfr_Record_Number numeric(19,5), @Xfr_Record_Number_RS numeric(19,5), @Xfr_Record_Number_RE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on IF @Xfr_Record_Number_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, Xfr_Record_Number, NC_Src_Account_Index, NC_Dest_IC_Account_Index, NC_Source_Company_ID, CURNCYID, CHEKBKID, ACTINDX, DistRef, NC_Xfr_Record_Number, NC_Currency_ID, NC_Checkbook_ID, NC_Account_Index, NC_Distribution_Referenc, FUNCTAMT, ORIGAMT, CMXFTDATE, NC_FunctionalOriginating, VOIDED, DEX_ROW_ID FROM .NCIC5004 WHERE ( Xfr_Record_Number > @Xfr_Record_Number ) ORDER BY Xfr_Record_Number ASC END ELSE IF @Xfr_Record_Number_RS = @Xfr_Record_Number_RE BEGIN SELECT TOP 25  CMPANYID, Xfr_Record_Number, NC_Src_Account_Index, NC_Dest_IC_Account_Index, NC_Source_Company_ID, CURNCYID, CHEKBKID, ACTINDX, DistRef, NC_Xfr_Record_Number, NC_Currency_ID, NC_Checkbook_ID, NC_Account_Index, NC_Distribution_Referenc, FUNCTAMT, ORIGAMT, CMXFTDATE, NC_FunctionalOriginating, VOIDED, DEX_ROW_ID FROM .NCIC5004 WHERE Xfr_Record_Number = @Xfr_Record_Number_RS AND ( Xfr_Record_Number > @Xfr_Record_Number ) ORDER BY Xfr_Record_Number ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, Xfr_Record_Number, NC_Src_Account_Index, NC_Dest_IC_Account_Index, NC_Source_Company_ID, CURNCYID, CHEKBKID, ACTINDX, DistRef, NC_Xfr_Record_Number, NC_Currency_ID, NC_Checkbook_ID, NC_Account_Index, NC_Distribution_Referenc, FUNCTAMT, ORIGAMT, CMXFTDATE, NC_FunctionalOriginating, VOIDED, DEX_ROW_ID FROM .NCIC5004 WHERE Xfr_Record_Number BETWEEN @Xfr_Record_Number_RS AND @Xfr_Record_Number_RE AND ( Xfr_Record_Number > @Xfr_Record_Number ) ORDER BY Xfr_Record_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5004N_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5004N_1] TO [public]
GO
