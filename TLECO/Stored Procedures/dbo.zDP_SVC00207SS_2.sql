SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00207SS_2] (@TECHID char(11), @SRVRECTYPE smallint, @CALLNBR char(11), @EQPLINE int) AS  set nocount on SELECT TOP 1  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, TECHID, DEX_ROW_ID FROM .SVC00207 WHERE TECHID = @TECHID AND SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE ORDER BY TECHID ASC, SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00207SS_2] TO [DYNGRP]
GO
