SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600300N_1] (@BS int, @BSSI_Equipment_ID char(25), @BSSI_Equipment_ID_RS char(25), @BSSI_Equipment_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Equipment_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Equipment_ID, BSSI_Description, NOTEINDX, VENDORID, ITEMNMBR, MANUFACTURER, BSSIModelNumber, BSSI_Serial_Number, PRCHDATE, BSSILastMaintenanceDate, BSSIWarrantyExpiryDate, DEX_ROW_ID FROM .B4600300 WHERE ( BSSI_Equipment_ID > @BSSI_Equipment_ID ) ORDER BY BSSI_Equipment_ID ASC END ELSE IF @BSSI_Equipment_ID_RS = @BSSI_Equipment_ID_RE BEGIN SELECT TOP 25  BSSI_Equipment_ID, BSSI_Description, NOTEINDX, VENDORID, ITEMNMBR, MANUFACTURER, BSSIModelNumber, BSSI_Serial_Number, PRCHDATE, BSSILastMaintenanceDate, BSSIWarrantyExpiryDate, DEX_ROW_ID FROM .B4600300 WHERE BSSI_Equipment_ID = @BSSI_Equipment_ID_RS AND ( BSSI_Equipment_ID > @BSSI_Equipment_ID ) ORDER BY BSSI_Equipment_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Equipment_ID, BSSI_Description, NOTEINDX, VENDORID, ITEMNMBR, MANUFACTURER, BSSIModelNumber, BSSI_Serial_Number, PRCHDATE, BSSILastMaintenanceDate, BSSIWarrantyExpiryDate, DEX_ROW_ID FROM .B4600300 WHERE BSSI_Equipment_ID BETWEEN @BSSI_Equipment_ID_RS AND @BSSI_Equipment_ID_RE AND ( BSSI_Equipment_ID > @BSSI_Equipment_ID ) ORDER BY BSSI_Equipment_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600300N_1] TO [DYNGRP]
GO
