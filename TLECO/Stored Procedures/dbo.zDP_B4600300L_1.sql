SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600300L_1] (@BSSI_Equipment_ID_RS char(25), @BSSI_Equipment_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Equipment_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Equipment_ID, BSSI_Description, NOTEINDX, VENDORID, ITEMNMBR, MANUFACTURER, BSSIModelNumber, BSSI_Serial_Number, PRCHDATE, BSSILastMaintenanceDate, BSSIWarrantyExpiryDate, DEX_ROW_ID FROM .B4600300 ORDER BY BSSI_Equipment_ID DESC END ELSE IF @BSSI_Equipment_ID_RS = @BSSI_Equipment_ID_RE BEGIN SELECT TOP 25  BSSI_Equipment_ID, BSSI_Description, NOTEINDX, VENDORID, ITEMNMBR, MANUFACTURER, BSSIModelNumber, BSSI_Serial_Number, PRCHDATE, BSSILastMaintenanceDate, BSSIWarrantyExpiryDate, DEX_ROW_ID FROM .B4600300 WHERE BSSI_Equipment_ID = @BSSI_Equipment_ID_RS ORDER BY BSSI_Equipment_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Equipment_ID, BSSI_Description, NOTEINDX, VENDORID, ITEMNMBR, MANUFACTURER, BSSIModelNumber, BSSI_Serial_Number, PRCHDATE, BSSILastMaintenanceDate, BSSIWarrantyExpiryDate, DEX_ROW_ID FROM .B4600300 WHERE BSSI_Equipment_ID BETWEEN @BSSI_Equipment_ID_RS AND @BSSI_Equipment_ID_RE ORDER BY BSSI_Equipment_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600300L_1] TO [DYNGRP]
GO
