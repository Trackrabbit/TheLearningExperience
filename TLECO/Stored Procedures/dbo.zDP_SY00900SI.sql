SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY00900SI] (@SOURCDOC char(11), @SDOCDSCR char(31), @NOTEINDX numeric(19,5), @LSTUSRED char(15), @CREATDDT datetime, @MODIFDT datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY00900 (SOURCDOC, SDOCDSCR, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT) VALUES ( @SOURCDOC, @SDOCDSCR, @NOTEINDX, @LSTUSRED, @CREATDDT, @MODIFDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00900SI] TO [DYNGRP]
GO
