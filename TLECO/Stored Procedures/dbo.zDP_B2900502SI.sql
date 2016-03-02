SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900502SI] (@BSSI_LeaseID char(17), @CUSTNMBR char(15), @DOCDATE datetime, @FIRST_INV_DUE_DATE datetime, @BSSI_DownPayment numeric(19,5), @SCHEDULE_INT_TYPE1 smallint, @BSSI_LeaseLoanType char(7), @BSSI_Facility_ID char(67), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900502 (BSSI_LeaseID, CUSTNMBR, DOCDATE, FIRST_INV_DUE_DATE, BSSI_DownPayment, SCHEDULE_INT_TYPE1, BSSI_LeaseLoanType, BSSI_Facility_ID) VALUES ( @BSSI_LeaseID, @CUSTNMBR, @DOCDATE, @FIRST_INV_DUE_DATE, @BSSI_DownPayment, @SCHEDULE_INT_TYPE1, @BSSI_LeaseLoanType, @BSSI_Facility_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900502SI] TO [DYNGRP]
GO
