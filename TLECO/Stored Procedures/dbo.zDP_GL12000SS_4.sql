SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL12000SS_4] (@BUDGETID char(15)) AS  set nocount on SELECT TOP 1  BCHSOURC, BACHNUMB, JRNENTRY, BUDGETID, REFRENCE, TRXDATE, PSTGSTUS, LASTUSER, LSTDTEDT, USWHPSTD, SOURCDOC, TRXSORCE, ERRSTATE, GLHDRVAL, GLHDRMSG, GLHDRMS2, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL12000 WHERE BUDGETID = @BUDGETID ORDER BY BUDGETID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL12000SS_4] TO [DYNGRP]
GO