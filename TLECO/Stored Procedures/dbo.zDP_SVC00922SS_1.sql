SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00922SS_1] (@SRVTYPE char(11), @LNITMSEQ int) AS  set nocount on SELECT TOP 1  SRVTYPE, LNITMSEQ, ESCTYPE, FRMSTAT, TOSTAT, TECHID, priorityLevel, WAITTME, svcManagerLevel, DEX_ROW_ID FROM .SVC00922 WHERE SRVTYPE = @SRVTYPE AND LNITMSEQ = @LNITMSEQ ORDER BY SRVTYPE ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00922SS_1] TO [DYNGRP]
GO
