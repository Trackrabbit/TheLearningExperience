SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA40200L_4] (@Ledger_ID_RS smallint, @Ledger_ID_RE smallint) AS  set nocount on IF @Ledger_ID_RS IS NULL BEGIN SELECT TOP 25  BOOKINDX, BOOKID, BOOKDESC, DEPRPERIOD, CURRFISCALYR, YEAR1, Auto_Add_Book_Info, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, PTGENLED, Ledger_ID, CALNDRID, DEX_ROW_ID FROM .FA40200 ORDER BY Ledger_ID DESC, DEX_ROW_ID DESC END ELSE IF @Ledger_ID_RS = @Ledger_ID_RE BEGIN SELECT TOP 25  BOOKINDX, BOOKID, BOOKDESC, DEPRPERIOD, CURRFISCALYR, YEAR1, Auto_Add_Book_Info, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, PTGENLED, Ledger_ID, CALNDRID, DEX_ROW_ID FROM .FA40200 WHERE Ledger_ID = @Ledger_ID_RS ORDER BY Ledger_ID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BOOKINDX, BOOKID, BOOKDESC, DEPRPERIOD, CURRFISCALYR, YEAR1, Auto_Add_Book_Info, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, PTGENLED, Ledger_ID, CALNDRID, DEX_ROW_ID FROM .FA40200 WHERE Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE ORDER BY Ledger_ID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA40200L_4] TO [DYNGRP]
GO
