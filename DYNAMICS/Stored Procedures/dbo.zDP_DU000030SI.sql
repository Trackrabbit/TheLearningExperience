SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000030SI] (@PRODID smallint, @fileNumber smallint, @companyID smallint, @errornum int, @errordes char(255), @Status smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .DU000030 (PRODID, fileNumber, companyID, errornum, errordes, Status) VALUES ( @PRODID, @fileNumber, @companyID, @errornum, @errordes, @Status) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000030SI] TO [DYNGRP]
GO
