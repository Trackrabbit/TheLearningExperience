SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00202UN_2] (@BS int, @SRVRECTYPE smallint, @EQUIPID int, @SRVRECTYPE_RS smallint, @EQUIPID_RS int, @SRVRECTYPE_RE smallint, @EQUIPID_RE int) AS  set nocount on IF @SRVRECTYPE_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 WHERE ( SRVRECTYPE = @SRVRECTYPE AND EQUIPID > @EQUIPID OR SRVRECTYPE > @SRVRECTYPE ) ORDER BY SRVRECTYPE ASC, EQUIPID ASC, DEX_ROW_ID ASC END ELSE IF @SRVRECTYPE_RS = @SRVRECTYPE_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 WHERE SRVRECTYPE = @SRVRECTYPE_RS AND EQUIPID BETWEEN @EQUIPID_RS AND @EQUIPID_RE AND ( SRVRECTYPE = @SRVRECTYPE AND EQUIPID > @EQUIPID OR SRVRECTYPE > @SRVRECTYPE ) ORDER BY SRVRECTYPE ASC, EQUIPID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 WHERE SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND EQUIPID BETWEEN @EQUIPID_RS AND @EQUIPID_RE AND ( SRVRECTYPE = @SRVRECTYPE AND EQUIPID > @EQUIPID OR SRVRECTYPE > @SRVRECTYPE ) ORDER BY SRVRECTYPE ASC, EQUIPID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00202UN_2] TO [DYNGRP]
GO
