SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL12000F_1] (@BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @JRNENTRY_RS int, @BCHSOURC_RE char(15), @BACHNUMB_RE char(15), @JRNENTRY_RE int) AS  set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, JRNENTRY, BUDGETID, REFRENCE, TRXDATE, PSTGSTUS, LASTUSER, LSTDTEDT, USWHPSTD, SOURCDOC, TRXSORCE, ERRSTATE, GLHDRVAL, GLHDRMSG, GLHDRMS2, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL12000 ORDER BY BCHSOURC ASC, BACHNUMB ASC, JRNENTRY ASC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, JRNENTRY, BUDGETID, REFRENCE, TRXDATE, PSTGSTUS, LASTUSER, LSTDTEDT, USWHPSTD, SOURCDOC, TRXSORCE, ERRSTATE, GLHDRVAL, GLHDRMSG, GLHDRMS2, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL12000 WHERE BCHSOURC = @BCHSOURC_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY BCHSOURC ASC, BACHNUMB ASC, JRNENTRY ASC END ELSE BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, JRNENTRY, BUDGETID, REFRENCE, TRXDATE, PSTGSTUS, LASTUSER, LSTDTEDT, USWHPSTD, SOURCDOC, TRXSORCE, ERRSTATE, GLHDRVAL, GLHDRMSG, GLHDRMS2, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL12000 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY BCHSOURC ASC, BACHNUMB ASC, JRNENTRY ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL12000F_1] TO [DYNGRP]
GO