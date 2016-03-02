SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30202F_3] (@SRVRECTYPE_RS smallint, @ITEMNMBR_RS char(31), @SRVRECTYPE_RE smallint, @ITEMNMBR_RE char(31)) AS  set nocount on IF @SRVRECTYPE_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC30202 ORDER BY SRVRECTYPE ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE IF @SRVRECTYPE_RS = @SRVRECTYPE_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC30202 WHERE SRVRECTYPE = @SRVRECTYPE_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY SRVRECTYPE ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, EQUIPID, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, PMPERF, DEX_ROW_ID FROM .SVC30202 WHERE SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY SRVRECTYPE ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30202F_3] TO [DYNGRP]
GO
