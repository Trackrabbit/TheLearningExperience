SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC30001SS_2] (@CURNCYID char(15), @ACTINDX int, @PERIODID smallint, @Ledger_ID smallint) AS  set nocount on SELECT TOP 1  CURNCYID, CURRNIDX, ACTINDX, HSTYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC30001 WHERE CURNCYID = @CURNCYID AND ACTINDX = @ACTINDX AND PERIODID = @PERIODID AND Ledger_ID = @Ledger_ID ORDER BY CURNCYID ASC, ACTINDX ASC, PERIODID ASC, Ledger_ID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC30001SS_2] TO [DYNGRP]
GO
