SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00207SS_3] (@SRVRECTYPE smallint, @CALLNBR char(11), @TECHID char(11)) AS  set nocount on SELECT TOP 1  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, TECHID, DEX_ROW_ID FROM .SVC00207 WHERE SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND TECHID = @TECHID ORDER BY SRVRECTYPE ASC, CALLNBR ASC, TECHID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00207SS_3] TO [DYNGRP]
GO