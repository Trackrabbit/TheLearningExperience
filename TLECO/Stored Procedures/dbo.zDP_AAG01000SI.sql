SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG01000SI] (@aaUDFID int, @aaUDFString char(51), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG01000 (aaUDFID, aaUDFString) VALUES ( @aaUDFID, @aaUDFString) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG01000SI] TO [DYNGRP]
GO