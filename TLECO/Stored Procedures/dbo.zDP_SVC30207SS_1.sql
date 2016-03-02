SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30207SS_1] (@SRVRECTYPE smallint, @CALLNBR char(11), @EQPLINE int, @LNITMSEQ int) AS  set nocount on SELECT TOP 1  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, TECHID, DEX_ROW_ID FROM .SVC30207 WHERE SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LNITMSEQ = @LNITMSEQ ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30207SS_1] TO [DYNGRP]
GO