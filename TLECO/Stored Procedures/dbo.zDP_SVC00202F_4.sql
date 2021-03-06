SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00202F_4] (@EQUIPID_RS int, @SRVRECTYPE_RS smallint, @EQUIPID_RE int, @SRVRECTYPE_RE smallint) AS  set nocount on IF @EQUIPID_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 ORDER BY EQUIPID ASC, SRVRECTYPE ASC, DEX_ROW_ID ASC END ELSE IF @EQUIPID_RS = @EQUIPID_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 WHERE EQUIPID = @EQUIPID_RS AND SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE ORDER BY EQUIPID ASC, SRVRECTYPE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 WHERE EQUIPID BETWEEN @EQUIPID_RS AND @EQUIPID_RE AND SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE ORDER BY EQUIPID ASC, SRVRECTYPE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00202F_4] TO [DYNGRP]
GO
