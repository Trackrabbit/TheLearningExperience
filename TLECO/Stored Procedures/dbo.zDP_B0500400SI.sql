SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500400SI] (@BSSI_CategoryID char(21), @BSSI_CategoryDescription char(51), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0500400 (BSSI_CategoryID, BSSI_CategoryDescription, NOTEINDX) VALUES ( @BSSI_CategoryID, @BSSI_CategoryDescription, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500400SI] TO [DYNGRP]
GO
