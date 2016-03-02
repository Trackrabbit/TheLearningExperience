SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DT00100SI] (@DICTID smallint, @CMPANYID smallint, @USERID char(15), @TOOLBARBUTTON smallint, @TOOLBARSEQ smallint, @TOOLBARTYPE smallint, @TOOLBARPROMPT char(21), @TOOLBARCOMMAND char(127), @TOOLBARCMDPARMS char(127), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .DT00100 (DICTID, CMPANYID, USERID, TOOLBARBUTTON, TOOLBARSEQ, TOOLBARTYPE, TOOLBARPROMPT, TOOLBARCOMMAND, TOOLBARCMDPARMS) VALUES ( @DICTID, @CMPANYID, @USERID, @TOOLBARBUTTON, @TOOLBARSEQ, @TOOLBARTYPE, @TOOLBARPROMPT, @TOOLBARCOMMAND, @TOOLBARCMDPARMS) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DT00100SI] TO [DYNGRP]
GO