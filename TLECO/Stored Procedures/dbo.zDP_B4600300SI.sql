SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600300SI] (@BSSI_Equipment_ID char(25), @BSSI_Description char(51), @NOTEINDX numeric(19,5), @VENDORID char(15), @ITEMNMBR char(31), @MANUFACTURER char(31), @BSSIModelNumber char(21), @BSSI_Serial_Number char(21), @PRCHDATE datetime, @BSSILastMaintenanceDate datetime, @BSSIWarrantyExpiryDate datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4600300 (BSSI_Equipment_ID, BSSI_Description, NOTEINDX, VENDORID, ITEMNMBR, MANUFACTURER, BSSIModelNumber, BSSI_Serial_Number, PRCHDATE, BSSILastMaintenanceDate, BSSIWarrantyExpiryDate) VALUES ( @BSSI_Equipment_ID, @BSSI_Description, @NOTEINDX, @VENDORID, @ITEMNMBR, @MANUFACTURER, @BSSIModelNumber, @BSSI_Serial_Number, @PRCHDATE, @BSSILastMaintenanceDate, @BSSIWarrantyExpiryDate) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600300SI] TO [DYNGRP]
GO
