SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC30001F_3] (@HSTYEAR_RS smallint, @ACTINDX_RS int, @CURNCYID_RS char(15), @Ledger_ID_RS smallint, @PERIODID_RS smallint, @HSTYEAR_RE smallint, @ACTINDX_RE int, @CURNCYID_RE char(15), @Ledger_ID_RE smallint, @PERIODID_RE smallint) AS  set nocount on IF @HSTYEAR_RS IS NULL BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, ACTINDX, HSTYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC30001 ORDER BY HSTYEAR ASC, ACTINDX ASC, CURNCYID ASC, Ledger_ID ASC, PERIODID ASC END ELSE IF @HSTYEAR_RS = @HSTYEAR_RE BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, ACTINDX, HSTYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC30001 WHERE HSTYEAR = @HSTYEAR_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY HSTYEAR ASC, ACTINDX ASC, CURNCYID ASC, Ledger_ID ASC, PERIODID ASC END ELSE BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, ACTINDX, HSTYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC30001 WHERE HSTYEAR BETWEEN @HSTYEAR_RS AND @HSTYEAR_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY HSTYEAR ASC, ACTINDX ASC, CURNCYID ASC, Ledger_ID ASC, PERIODID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC30001F_3] TO [DYNGRP]
GO