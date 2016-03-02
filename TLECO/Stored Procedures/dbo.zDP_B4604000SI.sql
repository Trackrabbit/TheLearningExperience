SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4604000SI] (@BSSI_MTA_Number char(25), @BSSI_MTA_Name char(31), @BSSI_MTA_Desc char(255), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4604000 (BSSI_MTA_Number, BSSI_MTA_Name, BSSI_MTA_Desc, NOTEINDX) VALUES ( @BSSI_MTA_Number, @BSSI_MTA_Name, @BSSI_MTA_Desc, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4604000SI] TO [DYNGRP]
GO