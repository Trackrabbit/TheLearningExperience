SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00316SI] (@aaMLQueryID int, @aaTrxDimID int, @aaUDFID int, @aaUDFSelect tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00316 (aaMLQueryID, aaTrxDimID, aaUDFID, aaUDFSelect) VALUES ( @aaMLQueryID, @aaTrxDimID, @aaUDFID, @aaUDFSelect) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00316SI] TO [DYNGRP]
GO
