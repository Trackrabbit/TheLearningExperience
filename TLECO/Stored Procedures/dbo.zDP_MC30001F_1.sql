SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC30001F_1] (@ACTINDX_RS int, @HSTYEAR_RS smallint, @PERIODID_RS smallint, @Ledger_ID_RS smallint, @CURNCYID_RS char(15), @ACTINDX_RE int, @HSTYEAR_RE smallint, @PERIODID_RE smallint, @Ledger_ID_RE smallint, @CURNCYID_RE char(15)) AS  set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, ACTINDX, HSTYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC30001 ORDER BY ACTINDX ASC, HSTYEAR ASC, PERIODID ASC, Ledger_ID ASC, CURNCYID ASC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, ACTINDX, HSTYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC30001 WHERE ACTINDX = @ACTINDX_RS AND HSTYEAR BETWEEN @HSTYEAR_RS AND @HSTYEAR_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE ORDER BY ACTINDX ASC, HSTYEAR ASC, PERIODID ASC, Ledger_ID ASC, CURNCYID ASC END ELSE BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, ACTINDX, HSTYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC30001 WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND HSTYEAR BETWEEN @HSTYEAR_RS AND @HSTYEAR_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE ORDER BY ACTINDX ASC, HSTYEAR ASC, PERIODID ASC, Ledger_ID ASC, CURNCYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC30001F_1] TO [DYNGRP]
GO