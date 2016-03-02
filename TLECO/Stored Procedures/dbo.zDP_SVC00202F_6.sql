SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00202F_6] (@ITEMNMBR_RS char(31), @CALLNBR_RS char(11), @ITEMNMBR_RE char(31), @CALLNBR_RE char(11)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 ORDER BY ITEMNMBR ASC, CALLNBR ASC, DEX_ROW_ID ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 WHERE ITEMNMBR = @ITEMNMBR_RS AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE ORDER BY ITEMNMBR ASC, CALLNBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC00202 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE ORDER BY ITEMNMBR ASC, CALLNBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00202F_6] TO [DYNGRP]
GO
