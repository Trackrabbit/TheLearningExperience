SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90103SI] (@PRODID smallint, @Series_Number smallint, @FORMNAME char(79), @DSPLNAME char(81), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .EXT90103 (PRODID, Series_Number, FORMNAME, DSPLNAME) VALUES ( @PRODID, @Series_Number, @FORMNAME, @DSPLNAME) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90103SI] TO [DYNGRP]
GO
