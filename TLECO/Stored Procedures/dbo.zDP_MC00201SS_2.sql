SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC00201SS_2] (@ACTINDX int, @OPENYEAR smallint, @CURNCYID char(15), @Ledger_ID smallint, @PERIODID smallint) AS  set nocount on SELECT TOP 1  CURNCYID, CURRNIDX, ACTINDX, OPENYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC00201 WHERE ACTINDX = @ACTINDX AND OPENYEAR = @OPENYEAR AND CURNCYID = @CURNCYID AND Ledger_ID = @Ledger_ID AND PERIODID = @PERIODID ORDER BY ACTINDX ASC, OPENYEAR ASC, CURNCYID ASC, Ledger_ID ASC, PERIODID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00201SS_2] TO [DYNGRP]
GO