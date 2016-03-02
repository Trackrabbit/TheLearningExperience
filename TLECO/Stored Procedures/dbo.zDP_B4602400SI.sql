SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602400SI] (@BSSI_Term char(25), @BSSI_Description char(51), @BSSI_Amendment tinyint, @BSSI_Total_Lease_Terms_Q int, @BSSI_Total_Lease_Terms_M int, @BSSI_Total_Lease_Terms_Y int, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602400 (BSSI_Term, BSSI_Description, BSSI_Amendment, BSSI_Total_Lease_Terms_Q, BSSI_Total_Lease_Terms_M, BSSI_Total_Lease_Terms_Y, NOTEINDX) VALUES ( @BSSI_Term, @BSSI_Description, @BSSI_Amendment, @BSSI_Total_Lease_Terms_Q, @BSSI_Total_Lease_Terms_M, @BSSI_Total_Lease_Terms_Y, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602400SI] TO [DYNGRP]
GO
