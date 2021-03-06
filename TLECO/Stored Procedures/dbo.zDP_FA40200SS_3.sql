SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA40200SS_3] (@BOOKINDX int, @Ledger_ID smallint) AS  set nocount on SELECT TOP 1  BOOKINDX, BOOKID, BOOKDESC, DEPRPERIOD, CURRFISCALYR, YEAR1, Auto_Add_Book_Info, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, PTGENLED, Ledger_ID, CALNDRID, DEX_ROW_ID FROM .FA40200 WHERE BOOKINDX = @BOOKINDX AND Ledger_ID = @Ledger_ID ORDER BY BOOKINDX ASC, Ledger_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA40200SS_3] TO [DYNGRP]
GO
