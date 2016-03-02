SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510135L_6] (@BSSI_Capital_Call_ID_RS char(25), @DOCDATE_RS datetime, @BSSI_Capital_Call_ID_RE char(25), @DOCDATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Capital_Call_ID_RS IS NULL BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Distribution_Descrip, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, MJW_Amount_To_Distribute, BACHNUMB, MJW_Distribution_Type, PERIODID, MJW_Period_From_Date, MJW_Period_To_Date, BSSI_Liquidation_Date, MJW_Interest_Paid_Days, IMS_Type_of_Distribution, IMS_Amount_Type, IMS_Percent_Distribute, MJW_Preferred_Returns, MJW_Investor_ID, MJW_Invesmentt_Num_From, MJW_Investment_Number_To, NOTEINDX, BSSI_AR_Batch, BSSI_Capital_Call_ID, DSCRIPTN, DOCDATE, BSSI_Facility_ID, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510135 ORDER BY BSSI_Capital_Call_ID DESC, DOCDATE DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Capital_Call_ID_RS = @BSSI_Capital_Call_ID_RE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Distribution_Descrip, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, MJW_Amount_To_Distribute, BACHNUMB, MJW_Distribution_Type, PERIODID, MJW_Period_From_Date, MJW_Period_To_Date, BSSI_Liquidation_Date, MJW_Interest_Paid_Days, IMS_Type_of_Distribution, IMS_Amount_Type, IMS_Percent_Distribute, MJW_Preferred_Returns, MJW_Investor_ID, MJW_Invesmentt_Num_From, MJW_Investment_Number_To, NOTEINDX, BSSI_AR_Batch, BSSI_Capital_Call_ID, DSCRIPTN, DOCDATE, BSSI_Facility_ID, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510135 WHERE BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID_RS AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE ORDER BY BSSI_Capital_Call_ID DESC, DOCDATE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Distribution_Descrip, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, MJW_Amount_To_Distribute, BACHNUMB, MJW_Distribution_Type, PERIODID, MJW_Period_From_Date, MJW_Period_To_Date, BSSI_Liquidation_Date, MJW_Interest_Paid_Days, IMS_Type_of_Distribution, IMS_Amount_Type, IMS_Percent_Distribute, MJW_Preferred_Returns, MJW_Investor_ID, MJW_Invesmentt_Num_From, MJW_Investment_Number_To, NOTEINDX, BSSI_AR_Batch, BSSI_Capital_Call_ID, DSCRIPTN, DOCDATE, BSSI_Facility_ID, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510135 WHERE BSSI_Capital_Call_ID BETWEEN @BSSI_Capital_Call_ID_RS AND @BSSI_Capital_Call_ID_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE ORDER BY BSSI_Capital_Call_ID DESC, DOCDATE DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510135L_6] TO [DYNGRP]
GO
