SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL10002N_2] (@BS int, @JRNENTRY int, @DEX_ROW_ID int, @JRNENTRY_RS int, @JRNENTRY_RE int) AS  set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, ACTINDX, SQNCLINE, OFFINDX, PSTDAMNT, GLLINMSG, DSCRIPTN, GLLINVAL, ACCTTYPE, DECPLACS, OFFACTYP, OFFXVAR, OFFBLCLC, OFFDECPL, DEX_ROW_ID FROM .GL10002 WHERE ( JRNENTRY = @JRNENTRY AND DEX_ROW_ID > @DEX_ROW_ID OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, ACTINDX, SQNCLINE, OFFINDX, PSTDAMNT, GLLINMSG, DSCRIPTN, GLLINVAL, ACCTTYPE, DECPLACS, OFFACTYP, OFFXVAR, OFFBLCLC, OFFDECPL, DEX_ROW_ID FROM .GL10002 WHERE JRNENTRY = @JRNENTRY_RS AND ( JRNENTRY = @JRNENTRY AND DEX_ROW_ID > @DEX_ROW_ID OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, ACTINDX, SQNCLINE, OFFINDX, PSTDAMNT, GLLINMSG, DSCRIPTN, GLLINVAL, ACCTTYPE, DECPLACS, OFFACTYP, OFFXVAR, OFFBLCLC, OFFDECPL, DEX_ROW_ID FROM .GL10002 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND ( JRNENTRY = @JRNENTRY AND DEX_ROW_ID > @DEX_ROW_ID OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10002N_2] TO [DYNGRP]
GO
