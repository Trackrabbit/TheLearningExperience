SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY03600SI] (@WKSTNTYP char(15), @LOFPTHNM smallint, @FRMPTHNM char(255), @DTAPTHNM char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY03600 (WKSTNTYP, LOFPTHNM, FRMPTHNM, DTAPTHNM) VALUES ( @WKSTNTYP, @LOFPTHNM, @FRMPTHNM, @DTAPTHNM) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY03600SI] TO [DYNGRP]
GO
