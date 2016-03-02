SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30202SS_1] (@SRVRECTYPE smallint, @CALLNBR char(11), @EQPLINE int) AS  set nocount on SELECT TOP 1  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC30202 WHERE SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30202SS_1] TO [DYNGRP]
GO