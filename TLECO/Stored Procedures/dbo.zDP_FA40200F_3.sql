SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA40200F_3] (@BOOKINDX_RS int, @Ledger_ID_RS smallint, @BOOKINDX_RE int, @Ledger_ID_RE smallint) AS  set nocount on IF @BOOKINDX_RS IS NULL BEGIN SELECT TOP 25  BOOKINDX, BOOKID, BOOKDESC, DEPRPERIOD, CURRFISCALYR, YEAR1, Auto_Add_Book_Info, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, PTGENLED, Ledger_ID, CALNDRID, DEX_ROW_ID FROM .FA40200 ORDER BY BOOKINDX ASC, Ledger_ID ASC END ELSE IF @BOOKINDX_RS = @BOOKINDX_RE BEGIN SELECT TOP 25  BOOKINDX, BOOKID, BOOKDESC, DEPRPERIOD, CURRFISCALYR, YEAR1, Auto_Add_Book_Info, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, PTGENLED, Ledger_ID, CALNDRID, DEX_ROW_ID FROM .FA40200 WHERE BOOKINDX = @BOOKINDX_RS AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE ORDER BY BOOKINDX ASC, Ledger_ID ASC END ELSE BEGIN SELECT TOP 25  BOOKINDX, BOOKID, BOOKDESC, DEPRPERIOD, CURRFISCALYR, YEAR1, Auto_Add_Book_Info, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, PTGENLED, Ledger_ID, CALNDRID, DEX_ROW_ID FROM .FA40200 WHERE BOOKINDX BETWEEN @BOOKINDX_RS AND @BOOKINDX_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE ORDER BY BOOKINDX ASC, Ledger_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA40200F_3] TO [DYNGRP]
GO
