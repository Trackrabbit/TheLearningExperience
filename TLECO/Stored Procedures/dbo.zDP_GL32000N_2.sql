SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL32000N_2] (@BS int, @BUDGETID char(15), @ACTINDX int, @PERIODDT datetime, @PERIODID smallint, @DEX_ROW_ID int, @BUDGETID_RS char(15), @ACTINDX_RS int, @PERIODDT_RS datetime, @PERIODID_RS smallint, @BUDGETID_RE char(15), @ACTINDX_RE int, @PERIODDT_RE datetime, @PERIODID_RE smallint) AS  set nocount on IF @BUDGETID_RS IS NULL BEGIN SELECT TOP 25  JRNENTRY, BUDGETID, YEAR1, PERIODDT, PERIODID, ACTINDX, BUDGETAMT, BudgerAdjustment, REFRENCE, TRXDATE, SOURCDOC, TRXSORCE, USWHPSTD, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL32000 WHERE ( BUDGETID = @BUDGETID AND ACTINDX = @ACTINDX AND PERIODDT = @PERIODDT AND PERIODID = @PERIODID AND DEX_ROW_ID > @DEX_ROW_ID OR BUDGETID = @BUDGETID AND ACTINDX = @ACTINDX AND PERIODDT = @PERIODDT AND PERIODID > @PERIODID OR BUDGETID = @BUDGETID AND ACTINDX = @ACTINDX AND PERIODDT > @PERIODDT OR BUDGETID = @BUDGETID AND ACTINDX > @ACTINDX OR BUDGETID > @BUDGETID ) ORDER BY BUDGETID ASC, ACTINDX ASC, PERIODDT ASC, PERIODID ASC, DEX_ROW_ID ASC END ELSE IF @BUDGETID_RS = @BUDGETID_RE BEGIN SELECT TOP 25  JRNENTRY, BUDGETID, YEAR1, PERIODDT, PERIODID, ACTINDX, BUDGETAMT, BudgerAdjustment, REFRENCE, TRXDATE, SOURCDOC, TRXSORCE, USWHPSTD, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL32000 WHERE BUDGETID = @BUDGETID_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PERIODDT BETWEEN @PERIODDT_RS AND @PERIODDT_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( BUDGETID = @BUDGETID AND ACTINDX = @ACTINDX AND PERIODDT = @PERIODDT AND PERIODID = @PERIODID AND DEX_ROW_ID > @DEX_ROW_ID OR BUDGETID = @BUDGETID AND ACTINDX = @ACTINDX AND PERIODDT = @PERIODDT AND PERIODID > @PERIODID OR BUDGETID = @BUDGETID AND ACTINDX = @ACTINDX AND PERIODDT > @PERIODDT OR BUDGETID = @BUDGETID AND ACTINDX > @ACTINDX OR BUDGETID > @BUDGETID ) ORDER BY BUDGETID ASC, ACTINDX ASC, PERIODDT ASC, PERIODID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  JRNENTRY, BUDGETID, YEAR1, PERIODDT, PERIODID, ACTINDX, BUDGETAMT, BudgerAdjustment, REFRENCE, TRXDATE, SOURCDOC, TRXSORCE, USWHPSTD, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL32000 WHERE BUDGETID BETWEEN @BUDGETID_RS AND @BUDGETID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PERIODDT BETWEEN @PERIODDT_RS AND @PERIODDT_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( BUDGETID = @BUDGETID AND ACTINDX = @ACTINDX AND PERIODDT = @PERIODDT AND PERIODID = @PERIODID AND DEX_ROW_ID > @DEX_ROW_ID OR BUDGETID = @BUDGETID AND ACTINDX = @ACTINDX AND PERIODDT = @PERIODDT AND PERIODID > @PERIODID OR BUDGETID = @BUDGETID AND ACTINDX = @ACTINDX AND PERIODDT > @PERIODDT OR BUDGETID = @BUDGETID AND ACTINDX > @ACTINDX OR BUDGETID > @BUDGETID ) ORDER BY BUDGETID ASC, ACTINDX ASC, PERIODDT ASC, PERIODID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL32000N_2] TO [DYNGRP]
GO
