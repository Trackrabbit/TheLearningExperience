SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00202N_1] (@BS int, @SRVRECTYPE smallint, @CALLNBR char(11), @EQPLINE int, @SRVRECTYPE_RS smallint, @CALLNBR_RS char(11), @EQPLINE_RS int, @SRVRECTYPE_RE smallint, @CALLNBR_RE char(11), @EQPLINE_RE int) AS  set nocount on IF @SRVRECTYPE_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 WHERE ( SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE > @EQPLINE OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR > @CALLNBR OR SRVRECTYPE > @SRVRECTYPE ) ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC END ELSE IF @SRVRECTYPE_RS = @SRVRECTYPE_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 WHERE SRVRECTYPE = @SRVRECTYPE_RS AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND EQPLINE BETWEEN @EQPLINE_RS AND @EQPLINE_RE AND ( SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE > @EQPLINE OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR > @CALLNBR OR SRVRECTYPE > @SRVRECTYPE ) ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 WHERE SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND EQPLINE BETWEEN @EQPLINE_RS AND @EQPLINE_RE AND ( SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE > @EQPLINE OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR > @CALLNBR OR SRVRECTYPE > @SRVRECTYPE ) ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00202N_1] TO [DYNGRP]
GO
