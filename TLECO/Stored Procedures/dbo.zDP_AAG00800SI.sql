SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800SI] (@aaAliasID int, @aaAlias char(31), @aaDescription char(51), @aaShortDescription char(51), @aaInactive tinyint, @MODIFDT datetime, @MDFUSRID char(15), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00800 (aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX) VALUES ( @aaAliasID, @aaAlias, @aaDescription, @aaShortDescription, @aaInactive, @MODIFDT, @MDFUSRID, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800SI] TO [DYNGRP]
GO
