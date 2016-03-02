SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640008SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNSEQNBR numeric(19,5), @YEAR1 smallint, @PERIODID smallint, @STRTDATE datetime, @ENDDATE datetime, @DATE1 datetime, @BSSI_MeterNumber char(31), @BSSI_PreviousReading numeric(19,5), @BSSI_CurrentReading numeric(19,5), @BSSI_Consumption numeric(19,5), @BSSI_ChargeLineSeq numeric(19,5), @USERID char(15), @BSSI_UserID_Modified char(15), @BSSI_IsProcessed tinyint, @BSSI_Imported tinyint, @BSSI_Description char(51), @BSSI_Dummy tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640008 (BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, PERIODID, STRTDATE, ENDDATE, DATE1, BSSI_MeterNumber, BSSI_PreviousReading, BSSI_CurrentReading, BSSI_Consumption, BSSI_ChargeLineSeq, USERID, BSSI_UserID_Modified, BSSI_IsProcessed, BSSI_Imported, BSSI_Description, BSSI_Dummy) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @LNSEQNBR, @YEAR1, @PERIODID, @STRTDATE, @ENDDATE, @DATE1, @BSSI_MeterNumber, @BSSI_PreviousReading, @BSSI_CurrentReading, @BSSI_Consumption, @BSSI_ChargeLineSeq, @USERID, @BSSI_UserID_Modified, @BSSI_IsProcessed, @BSSI_Imported, @BSSI_Description, @BSSI_Dummy) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640008SI] TO [DYNGRP]
GO
