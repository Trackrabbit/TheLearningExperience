SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00313SI] (@aaMLQueryID int, @aaColumn smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00313 (aaMLQueryID, aaColumn) VALUES ( @aaMLQueryID, @aaColumn) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00313SI] TO [DYNGRP]
GO
