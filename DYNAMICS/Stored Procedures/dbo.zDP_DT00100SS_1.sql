SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DT00100SS_1] (@CMPANYID smallint, @USERID char(15), @TOOLBARBUTTON smallint, @TOOLBARSEQ smallint) AS  set nocount on SELECT TOP 1  DICTID, CMPANYID, USERID, TOOLBARBUTTON, TOOLBARSEQ, TOOLBARTYPE, TOOLBARPROMPT, TOOLBARCOMMAND, TOOLBARCMDPARMS, DEX_ROW_ID FROM .DT00100 WHERE CMPANYID = @CMPANYID AND USERID = @USERID AND TOOLBARBUTTON = @TOOLBARBUTTON AND TOOLBARSEQ = @TOOLBARSEQ ORDER BY CMPANYID ASC, USERID ASC, TOOLBARBUTTON ASC, TOOLBARSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DT00100SS_1] TO [DYNGRP]
GO
