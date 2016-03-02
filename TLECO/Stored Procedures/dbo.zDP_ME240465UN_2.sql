SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240465UN_2] (@BS int, @BCHSTTUS smallint, @BCHSTTUS_RS smallint, @BCHSTTUS_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @BCHSTTUS_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, BCHSTTUS, Queue_ID, MENUMAPPROVERS, MEUSERID1, MEUSERID2, CHKCOUNT, CHEKAMNT, MEREQUESTER, REQSTDATE, REQUESTFLAG, REJECTER, MECanceledBy, MEREJECTIONDATE, MEREJECTIONTIME, DEX_ROW_ID, REJECTIONNOTE FROM .ME240465 WHERE ( BCHSTTUS > @BCHSTTUS ) ORDER BY BCHSTTUS ASC, DEX_ROW_ID ASC END ELSE IF @BCHSTTUS_RS = @BCHSTTUS_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, BCHSTTUS, Queue_ID, MENUMAPPROVERS, MEUSERID1, MEUSERID2, CHKCOUNT, CHEKAMNT, MEREQUESTER, REQSTDATE, REQUESTFLAG, REJECTER, MECanceledBy, MEREJECTIONDATE, MEREJECTIONTIME, DEX_ROW_ID, REJECTIONNOTE FROM .ME240465 WHERE BCHSTTUS = @BCHSTTUS_RS AND ( BCHSTTUS > @BCHSTTUS ) ORDER BY BCHSTTUS ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, BCHSTTUS, Queue_ID, MENUMAPPROVERS, MEUSERID1, MEUSERID2, CHKCOUNT, CHEKAMNT, MEREQUESTER, REQSTDATE, REQUESTFLAG, REJECTER, MECanceledBy, MEREJECTIONDATE, MEREJECTIONTIME, DEX_ROW_ID, REJECTIONNOTE FROM .ME240465 WHERE BCHSTTUS BETWEEN @BCHSTTUS_RS AND @BCHSTTUS_RE AND ( BCHSTTUS > @BCHSTTUS ) ORDER BY BCHSTTUS ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240465UN_2] TO [DYNGRP]
GO
