SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640015SI] (@BSSI_PortfolioID char(25), @BSSI_Template_ID char(25), @DSCRIPTN char(31), @BSSI_MajorStoreSqFt numeric(19,5), @BSSI_Dummy tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .B4640015 (BSSI_PortfolioID, BSSI_Template_ID, DSCRIPTN, BSSI_MajorStoreSqFt, BSSI_Dummy) VALUES ( @BSSI_PortfolioID, @BSSI_Template_ID, @DSCRIPTN, @BSSI_MajorStoreSqFt, @BSSI_Dummy) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640015SI] TO [DYNGRP]
GO
