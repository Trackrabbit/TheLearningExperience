SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4690001SI] (@BSSI_Description char(51), @BSSI_Ground_Lease_Number char(25), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4690001 (BSSI_Description, BSSI_Ground_Lease_Number) VALUES ( @BSSI_Description, @BSSI_Ground_Lease_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4690001SI] TO [DYNGRP]
GO
