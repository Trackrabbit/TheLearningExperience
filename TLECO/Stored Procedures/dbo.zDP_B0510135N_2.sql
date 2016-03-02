SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510135N_2] (@BS int, @MJW_Period_From_Date datetime, @MJW_Period_To_Date datetime, @DEX_ROW_ID int, @MJW_Period_From_Date_RS datetime, @MJW_Period_To_Date_RS datetime, @MJW_Period_From_Date_RE datetime, @MJW_Period_To_Date_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Period_From_Date_RS IS NULL BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Distribution_Descrip, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, MJW_Amount_To_Distribute, BACHNUMB, MJW_Distribution_Type, PERIODID, MJW_Period_From_Date, MJW_Period_To_Date, BSSI_Liquidation_Date, MJW_Interest_Paid_Days, IMS_Type_of_Distribution, IMS_Amount_Type, IMS_Percent_Distribute, MJW_Preferred_Returns, MJW_Investor_ID, MJW_Invesmentt_Num_From, MJW_Investment_Number_To, NOTEINDX, BSSI_AR_Batch, BSSI_Capital_Call_ID, DSCRIPTN, DOCDATE, BSSI_Facility_ID, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510135 WHERE ( MJW_Period_From_Date = @MJW_Period_From_Date AND MJW_Period_To_Date = @MJW_Period_To_Date AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Period_From_Date = @MJW_Period_From_Date AND MJW_Period_To_Date > @MJW_Period_To_Date OR MJW_Period_From_Date > @MJW_Period_From_Date ) ORDER BY MJW_Period_From_Date ASC, MJW_Period_To_Date ASC, DEX_ROW_ID ASC END ELSE IF @MJW_Period_From_Date_RS = @MJW_Period_From_Date_RE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Distribution_Descrip, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, MJW_Amount_To_Distribute, BACHNUMB, MJW_Distribution_Type, PERIODID, MJW_Period_From_Date, MJW_Period_To_Date, BSSI_Liquidation_Date, MJW_Interest_Paid_Days, IMS_Type_of_Distribution, IMS_Amount_Type, IMS_Percent_Distribute, MJW_Preferred_Returns, MJW_Investor_ID, MJW_Invesmentt_Num_From, MJW_Investment_Number_To, NOTEINDX, BSSI_AR_Batch, BSSI_Capital_Call_ID, DSCRIPTN, DOCDATE, BSSI_Facility_ID, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510135 WHERE MJW_Period_From_Date = @MJW_Period_From_Date_RS AND MJW_Period_To_Date BETWEEN @MJW_Period_To_Date_RS AND @MJW_Period_To_Date_RE AND ( MJW_Period_From_Date = @MJW_Period_From_Date AND MJW_Period_To_Date = @MJW_Period_To_Date AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Period_From_Date = @MJW_Period_From_Date AND MJW_Period_To_Date > @MJW_Period_To_Date OR MJW_Period_From_Date > @MJW_Period_From_Date ) ORDER BY MJW_Period_From_Date ASC, MJW_Period_To_Date ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Distribution_Descrip, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, MJW_Amount_To_Distribute, BACHNUMB, MJW_Distribution_Type, PERIODID, MJW_Period_From_Date, MJW_Period_To_Date, BSSI_Liquidation_Date, MJW_Interest_Paid_Days, IMS_Type_of_Distribution, IMS_Amount_Type, IMS_Percent_Distribute, MJW_Preferred_Returns, MJW_Investor_ID, MJW_Invesmentt_Num_From, MJW_Investment_Number_To, NOTEINDX, BSSI_AR_Batch, BSSI_Capital_Call_ID, DSCRIPTN, DOCDATE, BSSI_Facility_ID, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510135 WHERE MJW_Period_From_Date BETWEEN @MJW_Period_From_Date_RS AND @MJW_Period_From_Date_RE AND MJW_Period_To_Date BETWEEN @MJW_Period_To_Date_RS AND @MJW_Period_To_Date_RE AND ( MJW_Period_From_Date = @MJW_Period_From_Date AND MJW_Period_To_Date = @MJW_Period_To_Date AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Period_From_Date = @MJW_Period_From_Date AND MJW_Period_To_Date > @MJW_Period_To_Date OR MJW_Period_From_Date > @MJW_Period_From_Date ) ORDER BY MJW_Period_From_Date ASC, MJW_Period_To_Date ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510135N_2] TO [DYNGRP]
GO