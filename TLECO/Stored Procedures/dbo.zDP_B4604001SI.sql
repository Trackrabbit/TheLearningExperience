SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4604001SI] (@BSSI_BTA_Number char(25), @BSSI_BTA_Name char(31), @BSSI_BTA_Rank int, @BSSI_BTA_Desc char(255), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4604001 (BSSI_BTA_Number, BSSI_BTA_Name, BSSI_BTA_Rank, BSSI_BTA_Desc, NOTEINDX) VALUES ( @BSSI_BTA_Number, @BSSI_BTA_Name, @BSSI_BTA_Rank, @BSSI_BTA_Desc, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4604001SI] TO [DYNGRP]
GO
