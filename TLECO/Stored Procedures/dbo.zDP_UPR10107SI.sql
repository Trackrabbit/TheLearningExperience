SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10107SI] (@RPTNGYR smallint, @EMPLOYID char(15), @OTHRCODE char(7), @OTHBXNUM smallint, @OTHRAMNT numeric(19,5), @W2PRINTD tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR10107 (RPTNGYR, EMPLOYID, OTHRCODE, OTHBXNUM, OTHRAMNT, W2PRINTD) VALUES ( @RPTNGYR, @EMPLOYID, @OTHRCODE, @OTHBXNUM, @OTHRAMNT, @W2PRINTD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10107SI] TO [DYNGRP]
GO