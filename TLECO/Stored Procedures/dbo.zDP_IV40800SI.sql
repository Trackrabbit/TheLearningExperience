SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40800SI] (@PRCLEVEL char(11), @DSCRIPTN char(31), @NOTEINDX numeric(19,5), @CREATDDT datetime, @MODIFDT datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV40800 (PRCLEVEL, DSCRIPTN, NOTEINDX, CREATDDT, MODIFDT) VALUES ( @PRCLEVEL, @DSCRIPTN, @NOTEINDX, @CREATDDT, @MODIFDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40800SI] TO [DYNGRP]
GO
