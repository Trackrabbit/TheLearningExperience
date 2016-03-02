SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC00201F_4] (@OPENYEAR_RS smallint, @OPENYEAR_RE smallint) AS  set nocount on IF @OPENYEAR_RS IS NULL BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, ACTINDX, OPENYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC00201 ORDER BY OPENYEAR ASC, DEX_ROW_ID ASC END ELSE IF @OPENYEAR_RS = @OPENYEAR_RE BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, ACTINDX, OPENYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC00201 WHERE OPENYEAR = @OPENYEAR_RS ORDER BY OPENYEAR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, ACTINDX, OPENYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC00201 WHERE OPENYEAR BETWEEN @OPENYEAR_RS AND @OPENYEAR_RE ORDER BY OPENYEAR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00201F_4] TO [DYNGRP]
GO