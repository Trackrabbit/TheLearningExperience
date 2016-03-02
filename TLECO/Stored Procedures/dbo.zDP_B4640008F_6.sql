SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640008F_6] (@BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @BSSI_MeterNumber_RS char(31), @STRTDATE_RS datetime, @ENDDATE_RS datetime, @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @BSSI_MeterNumber_RE char(31), @STRTDATE_RE datetime, @ENDDATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, PERIODID, STRTDATE, ENDDATE, DATE1, BSSI_MeterNumber, BSSI_PreviousReading, BSSI_CurrentReading, BSSI_Consumption, BSSI_ChargeLineSeq, USERID, BSSI_UserID_Modified, BSSI_IsProcessed, BSSI_Imported, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640008 ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_MeterNumber ASC, STRTDATE ASC, ENDDATE ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, PERIODID, STRTDATE, ENDDATE, DATE1, BSSI_MeterNumber, BSSI_PreviousReading, BSSI_CurrentReading, BSSI_Consumption, BSSI_ChargeLineSeq, USERID, BSSI_UserID_Modified, BSSI_IsProcessed, BSSI_Imported, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640008 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_MeterNumber BETWEEN @BSSI_MeterNumber_RS AND @BSSI_MeterNumber_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_MeterNumber ASC, STRTDATE ASC, ENDDATE ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, PERIODID, STRTDATE, ENDDATE, DATE1, BSSI_MeterNumber, BSSI_PreviousReading, BSSI_CurrentReading, BSSI_Consumption, BSSI_ChargeLineSeq, USERID, BSSI_UserID_Modified, BSSI_IsProcessed, BSSI_Imported, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640008 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_MeterNumber BETWEEN @BSSI_MeterNumber_RS AND @BSSI_MeterNumber_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_MeterNumber ASC, STRTDATE ASC, ENDDATE ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640008F_6] TO [DYNGRP]
GO
