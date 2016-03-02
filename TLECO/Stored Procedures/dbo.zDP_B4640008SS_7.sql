SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640008SS_7] (@LOCNCODE char(11), @BSSI_MeterNumber char(31), @BSSI_CurrentReading numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, PERIODID, STRTDATE, ENDDATE, DATE1, BSSI_MeterNumber, BSSI_PreviousReading, BSSI_CurrentReading, BSSI_Consumption, BSSI_ChargeLineSeq, USERID, BSSI_UserID_Modified, BSSI_IsProcessed, BSSI_Imported, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640008 WHERE LOCNCODE = @LOCNCODE AND BSSI_MeterNumber = @BSSI_MeterNumber AND BSSI_CurrentReading = @BSSI_CurrentReading ORDER BY LOCNCODE ASC, BSSI_MeterNumber ASC, BSSI_CurrentReading ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640008SS_7] TO [DYNGRP]
GO
