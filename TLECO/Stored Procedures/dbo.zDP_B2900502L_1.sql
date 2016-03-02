SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900502L_1] (@BSSI_LeaseID_RS char(17), @BSSI_LeaseID_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_LeaseID_RS IS NULL BEGIN SELECT TOP 25  BSSI_LeaseID, CUSTNMBR, DOCDATE, FIRST_INV_DUE_DATE, BSSI_DownPayment, SCHEDULE_INT_TYPE1, BSSI_LeaseLoanType, BSSI_Facility_ID, DEX_ROW_ID FROM .B2900502 ORDER BY BSSI_LeaseID DESC END ELSE IF @BSSI_LeaseID_RS = @BSSI_LeaseID_RE BEGIN SELECT TOP 25  BSSI_LeaseID, CUSTNMBR, DOCDATE, FIRST_INV_DUE_DATE, BSSI_DownPayment, SCHEDULE_INT_TYPE1, BSSI_LeaseLoanType, BSSI_Facility_ID, DEX_ROW_ID FROM .B2900502 WHERE BSSI_LeaseID = @BSSI_LeaseID_RS ORDER BY BSSI_LeaseID DESC END ELSE BEGIN SELECT TOP 25  BSSI_LeaseID, CUSTNMBR, DOCDATE, FIRST_INV_DUE_DATE, BSSI_DownPayment, SCHEDULE_INT_TYPE1, BSSI_LeaseLoanType, BSSI_Facility_ID, DEX_ROW_ID FROM .B2900502 WHERE BSSI_LeaseID BETWEEN @BSSI_LeaseID_RS AND @BSSI_LeaseID_RE ORDER BY BSSI_LeaseID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900502L_1] TO [DYNGRP]
GO
