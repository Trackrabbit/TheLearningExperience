SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640002N_1] (@BS int, @BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @BSSI_LineSeqNumber numeric(19,5), @LNSEQNBR numeric(19,5), @BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @BSSI_Charge_ID_RS char(25), @BSSI_LineSeqNumber_RS numeric(19,5), @LNSEQNBR_RS numeric(19,5), @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @BSSI_Charge_ID_RE char(25), @BSSI_LineSeqNumber_RE numeric(19,5), @LNSEQNBR_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, BSSI_LineSeqNumber, LNSEQNBR, BSSI_OccupancyTypeID, BSSI_Description, DEX_ROW_ID FROM .B4640002 WHERE ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_LineSeqNumber = @BSSI_LineSeqNumber AND LNSEQNBR > @LNSEQNBR OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_LineSeqNumber > @BSSI_LineSeqNumber OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID > @BSSI_Charge_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, BSSI_LineSeqNumber ASC, LNSEQNBR ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, BSSI_LineSeqNumber, LNSEQNBR, BSSI_OccupancyTypeID, BSSI_Description, DEX_ROW_ID FROM .B4640002 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND BSSI_LineSeqNumber BETWEEN @BSSI_LineSeqNumber_RS AND @BSSI_LineSeqNumber_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_LineSeqNumber = @BSSI_LineSeqNumber AND LNSEQNBR > @LNSEQNBR OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_LineSeqNumber > @BSSI_LineSeqNumber OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID > @BSSI_Charge_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, BSSI_LineSeqNumber ASC, LNSEQNBR ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, BSSI_LineSeqNumber, LNSEQNBR, BSSI_OccupancyTypeID, BSSI_Description, DEX_ROW_ID FROM .B4640002 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND BSSI_LineSeqNumber BETWEEN @BSSI_LineSeqNumber_RS AND @BSSI_LineSeqNumber_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_LineSeqNumber = @BSSI_LineSeqNumber AND LNSEQNBR > @LNSEQNBR OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_LineSeqNumber > @BSSI_LineSeqNumber OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID > @BSSI_Charge_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, BSSI_LineSeqNumber ASC, LNSEQNBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640002N_1] TO [DYNGRP]
GO
