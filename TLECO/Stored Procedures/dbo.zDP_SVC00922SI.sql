SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00922SI] (@SRVTYPE char(11), @LNITMSEQ int, @ESCTYPE smallint, @FRMSTAT char(3), @TOSTAT char(3), @TECHID char(11), @priorityLevel smallint, @WAITTME int, @svcManagerLevel smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00922 (SRVTYPE, LNITMSEQ, ESCTYPE, FRMSTAT, TOSTAT, TECHID, priorityLevel, WAITTME, svcManagerLevel) VALUES ( @SRVTYPE, @LNITMSEQ, @ESCTYPE, @FRMSTAT, @TOSTAT, @TECHID, @priorityLevel, @WAITTME, @svcManagerLevel) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00922SI] TO [DYNGRP]
GO
