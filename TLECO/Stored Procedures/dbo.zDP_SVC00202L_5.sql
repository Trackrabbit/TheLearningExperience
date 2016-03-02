SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00202L_5] (@EQUIPID_RS int, @CALLNBR_RS char(11), @EQUIPID_RE int, @CALLNBR_RE char(11)) AS  set nocount on IF @EQUIPID_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 ORDER BY EQUIPID DESC, CALLNBR DESC, DEX_ROW_ID DESC END ELSE IF @EQUIPID_RS = @EQUIPID_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 WHERE EQUIPID = @EQUIPID_RS AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE ORDER BY EQUIPID DESC, CALLNBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 WHERE EQUIPID BETWEEN @EQUIPID_RS AND @EQUIPID_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE ORDER BY EQUIPID DESC, CALLNBR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00202L_5] TO [DYNGRP]
GO