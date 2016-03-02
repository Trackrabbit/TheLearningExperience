SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00407SI] (@aaTrxDimID int, @aaAllowAdjustment tinyint, @aaCodeReqdDrgAdj tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00407 (aaTrxDimID, aaAllowAdjustment, aaCodeReqdDrgAdj) VALUES ( @aaTrxDimID, @aaAllowAdjustment, @aaCodeReqdDrgAdj) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00407SI] TO [DYNGRP]
GO
