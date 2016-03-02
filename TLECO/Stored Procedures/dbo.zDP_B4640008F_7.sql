SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640008F_7] (@LOCNCODE_RS char(11), @BSSI_MeterNumber_RS char(31), @BSSI_CurrentReading_RS numeric(19,5), @LOCNCODE_RE char(11), @BSSI_MeterNumber_RE char(31), @BSSI_CurrentReading_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, PERIODID, STRTDATE, ENDDATE, DATE1, BSSI_MeterNumber, BSSI_PreviousReading, BSSI_CurrentReading, BSSI_Consumption, BSSI_ChargeLineSeq, USERID, BSSI_UserID_Modified, BSSI_IsProcessed, BSSI_Imported, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640008 ORDER BY LOCNCODE ASC, BSSI_MeterNumber ASC, BSSI_CurrentReading ASC, DEX_ROW_ID ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, PERIODID, STRTDATE, ENDDATE, DATE1, BSSI_MeterNumber, BSSI_PreviousReading, BSSI_CurrentReading, BSSI_Consumption, BSSI_ChargeLineSeq, USERID, BSSI_UserID_Modified, BSSI_IsProcessed, BSSI_Imported, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640008 WHERE LOCNCODE = @LOCNCODE_RS AND BSSI_MeterNumber BETWEEN @BSSI_MeterNumber_RS AND @BSSI_MeterNumber_RE AND BSSI_CurrentReading BETWEEN @BSSI_CurrentReading_RS AND @BSSI_CurrentReading_RE ORDER BY LOCNCODE ASC, BSSI_MeterNumber ASC, BSSI_CurrentReading ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, PERIODID, STRTDATE, ENDDATE, DATE1, BSSI_MeterNumber, BSSI_PreviousReading, BSSI_CurrentReading, BSSI_Consumption, BSSI_ChargeLineSeq, USERID, BSSI_UserID_Modified, BSSI_IsProcessed, BSSI_Imported, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640008 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_MeterNumber BETWEEN @BSSI_MeterNumber_RS AND @BSSI_MeterNumber_RE AND BSSI_CurrentReading BETWEEN @BSSI_CurrentReading_RS AND @BSSI_CurrentReading_RE ORDER BY LOCNCODE ASC, BSSI_MeterNumber ASC, BSSI_CurrentReading ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640008F_7] TO [DYNGRP]
GO