SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7133306SI] (@BSSI_Identifier char(31), @BSSI_Description char(51), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7133306 (BSSI_Identifier, BSSI_Description) VALUES ( @BSSI_Identifier, @BSSI_Description) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7133306SI] TO [DYNGRP]
GO
