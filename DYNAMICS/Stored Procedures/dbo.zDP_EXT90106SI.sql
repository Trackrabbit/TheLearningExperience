SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90106SI] (@PRODID smallint, @Series_Number smallint, @TABLTECH char(79), @TABLDESC char(51), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .EXT90106 (PRODID, Series_Number, TABLTECH, TABLDESC) VALUES ( @PRODID, @Series_Number, @TABLTECH, @TABLDESC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90106SI] TO [DYNGRP]
GO
