SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10216SS_1] (@USERID char(15), @CHEKNMBR char(21)) AS  set nocount on SELECT TOP 1  USERID, CHEKNMBR, ERRDESCR, DEX_ROW_ID FROM .UPR10216 WHERE USERID = @USERID AND CHEKNMBR = @CHEKNMBR ORDER BY USERID ASC, CHEKNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10216SS_1] TO [DYNGRP]
GO
