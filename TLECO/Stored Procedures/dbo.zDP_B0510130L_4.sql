SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510130L_4] (@MJW_Investor_ID_RS char(21), @IMS_Type_of_Distribution_RS smallint, @MJW_Investor_ID_RE char(21), @IMS_Type_of_Distribution_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Investor_ID_RS IS NULL BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Distribution_Descrip, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, MJW_Amount_To_Distribute, BACHNUMB, MJW_Distribution_Type, PERIODID, MJW_Period_From_Date, MJW_Period_To_Date, BSSI_Liquidation_Date, MJW_Interest_Paid_Days, IMS_Type_of_Distribution, IMS_Amount_Type, IMS_Percent_Distribute, MJW_Preferred_Returns, MJW_Investor_ID, MJW_Invesmentt_Num_From, MJW_Investment_Number_To, NOTEINDX, BSSI_Test, BSSI_AR_Batch, BSSI_Capital_Call_ID, DSCRIPTN, DOCDATE, BSSI_Facility_ID, CURNCYID, CURRNIDX, DUMYRCRD, BSSI_Fund_Call_AR_Number, DEX_ROW_ID FROM .B0510130 ORDER BY MJW_Investor_ID DESC, IMS_Type_of_Distribution DESC, DEX_ROW_ID DESC END ELSE IF @MJW_Investor_ID_RS = @MJW_Investor_ID_RE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Distribution_Descrip, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, MJW_Amount_To_Distribute, BACHNUMB, MJW_Distribution_Type, PERIODID, MJW_Period_From_Date, MJW_Period_To_Date, BSSI_Liquidation_Date, MJW_Interest_Paid_Days, IMS_Type_of_Distribution, IMS_Amount_Type, IMS_Percent_Distribute, MJW_Preferred_Returns, MJW_Investor_ID, MJW_Invesmentt_Num_From, MJW_Investment_Number_To, NOTEINDX, BSSI_Test, BSSI_AR_Batch, BSSI_Capital_Call_ID, DSCRIPTN, DOCDATE, BSSI_Facility_ID, CURNCYID, CURRNIDX, DUMYRCRD, BSSI_Fund_Call_AR_Number, DEX_ROW_ID FROM .B0510130 WHERE MJW_Investor_ID = @MJW_Investor_ID_RS AND IMS_Type_of_Distribution BETWEEN @IMS_Type_of_Distribution_RS AND @IMS_Type_of_Distribution_RE ORDER BY MJW_Investor_ID DESC, IMS_Type_of_Distribution DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Distribution_Descrip, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, MJW_Amount_To_Distribute, BACHNUMB, MJW_Distribution_Type, PERIODID, MJW_Period_From_Date, MJW_Period_To_Date, BSSI_Liquidation_Date, MJW_Interest_Paid_Days, IMS_Type_of_Distribution, IMS_Amount_Type, IMS_Percent_Distribute, MJW_Preferred_Returns, MJW_Investor_ID, MJW_Invesmentt_Num_From, MJW_Investment_Number_To, NOTEINDX, BSSI_Test, BSSI_AR_Batch, BSSI_Capital_Call_ID, DSCRIPTN, DOCDATE, BSSI_Facility_ID, CURNCYID, CURRNIDX, DUMYRCRD, BSSI_Fund_Call_AR_Number, DEX_ROW_ID FROM .B0510130 WHERE MJW_Investor_ID BETWEEN @MJW_Investor_ID_RS AND @MJW_Investor_ID_RE AND IMS_Type_of_Distribution BETWEEN @IMS_Type_of_Distribution_RS AND @IMS_Type_of_Distribution_RE ORDER BY MJW_Investor_ID DESC, IMS_Type_of_Distribution DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510130L_4] TO [DYNGRP]
GO
