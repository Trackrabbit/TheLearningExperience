SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640007SS_1] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNSEQNBR numeric(19,5), @Line_SEQ_Offset int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, Line_SEQ_Offset, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_CorrectedAmount, DATE1, BSSI_SalesNumberStatus, BSSI_Sales_Amount, SOPNUMBE, BSSI_ChargeLineSeq, BSSI_YearEndChargeLineSe, BSSI_ReversingChargeLine, DEX_ROW_ID FROM .B4640007 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNSEQNBR = @LNSEQNBR AND Line_SEQ_Offset = @Line_SEQ_Offset ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, LNSEQNBR ASC, Line_SEQ_Offset ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640007SS_1] TO [DYNGRP]
GO
