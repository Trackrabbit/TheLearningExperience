SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD020000SI] (@EFFECTIVEDATE_I datetime, @DWNONWKNDS smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .DD020000 (EFFECTIVEDATE_I, DWNONWKNDS) VALUES ( @EFFECTIVEDATE_I, @DWNONWKNDS) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD020000SI] TO [DYNGRP]
GO
