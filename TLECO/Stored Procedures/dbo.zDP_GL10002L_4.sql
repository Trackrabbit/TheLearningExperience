SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL10002L_4] (@OFFINDX_RS int, @OFFINDX_RE int) AS  set nocount on IF @OFFINDX_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, ACTINDX, SQNCLINE, OFFINDX, PSTDAMNT, GLLINMSG, DSCRIPTN, GLLINVAL, ACCTTYPE, DECPLACS, OFFACTYP, OFFXVAR, OFFBLCLC, OFFDECPL, DEX_ROW_ID FROM .GL10002 ORDER BY OFFINDX DESC, DEX_ROW_ID DESC END ELSE IF @OFFINDX_RS = @OFFINDX_RE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, ACTINDX, SQNCLINE, OFFINDX, PSTDAMNT, GLLINMSG, DSCRIPTN, GLLINVAL, ACCTTYPE, DECPLACS, OFFACTYP, OFFXVAR, OFFBLCLC, OFFDECPL, DEX_ROW_ID FROM .GL10002 WHERE OFFINDX = @OFFINDX_RS ORDER BY OFFINDX DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, ACTINDX, SQNCLINE, OFFINDX, PSTDAMNT, GLLINMSG, DSCRIPTN, GLLINVAL, ACCTTYPE, DECPLACS, OFFACTYP, OFFXVAR, OFFBLCLC, OFFDECPL, DEX_ROW_ID FROM .GL10002 WHERE OFFINDX BETWEEN @OFFINDX_RS AND @OFFINDX_RE ORDER BY OFFINDX DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10002L_4] TO [DYNGRP]
GO
