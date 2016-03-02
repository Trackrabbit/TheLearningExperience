SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL12000UN_4] (@BS int, @BUDGETID char(15), @BUDGETID_RS char(15), @BUDGETID_RE char(15)) AS  set nocount on IF @BUDGETID_RS IS NULL BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, JRNENTRY, BUDGETID, REFRENCE, TRXDATE, PSTGSTUS, LASTUSER, LSTDTEDT, USWHPSTD, SOURCDOC, TRXSORCE, ERRSTATE, GLHDRVAL, GLHDRMSG, GLHDRMS2, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL12000 WHERE ( BUDGETID > @BUDGETID ) ORDER BY BUDGETID ASC, DEX_ROW_ID ASC END ELSE IF @BUDGETID_RS = @BUDGETID_RE BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, JRNENTRY, BUDGETID, REFRENCE, TRXDATE, PSTGSTUS, LASTUSER, LSTDTEDT, USWHPSTD, SOURCDOC, TRXSORCE, ERRSTATE, GLHDRVAL, GLHDRMSG, GLHDRMS2, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL12000 WHERE BUDGETID = @BUDGETID_RS AND ( BUDGETID > @BUDGETID ) ORDER BY BUDGETID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, JRNENTRY, BUDGETID, REFRENCE, TRXDATE, PSTGSTUS, LASTUSER, LSTDTEDT, USWHPSTD, SOURCDOC, TRXSORCE, ERRSTATE, GLHDRVAL, GLHDRMSG, GLHDRMS2, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL12000 WHERE BUDGETID BETWEEN @BUDGETID_RS AND @BUDGETID_RE AND ( BUDGETID > @BUDGETID ) ORDER BY BUDGETID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL12000UN_4] TO [DYNGRP]
GO
