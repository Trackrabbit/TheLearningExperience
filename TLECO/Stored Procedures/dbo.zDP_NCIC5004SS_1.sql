SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5004SS_1] (@Xfr_Record_Number numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  CMPANYID, Xfr_Record_Number, NC_Src_Account_Index, NC_Dest_IC_Account_Index, NC_Source_Company_ID, CURNCYID, CHEKBKID, ACTINDX, DistRef, NC_Xfr_Record_Number, NC_Currency_ID, NC_Checkbook_ID, NC_Account_Index, NC_Distribution_Referenc, FUNCTAMT, ORIGAMT, CMXFTDATE, NC_FunctionalOriginating, VOIDED, DEX_ROW_ID FROM .NCIC5004 WHERE Xfr_Record_Number = @Xfr_Record_Number ORDER BY Xfr_Record_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5004SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5004SS_1] TO [public]
GO
