SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC30001UN_2] (@BS int, @CURNCYID char(15), @ACTINDX int, @PERIODID smallint, @Ledger_ID smallint, @CURNCYID_RS char(15), @ACTINDX_RS int, @PERIODID_RS smallint, @Ledger_ID_RS smallint, @CURNCYID_RE char(15), @ACTINDX_RE int, @PERIODID_RE smallint, @Ledger_ID_RE smallint) AS  set nocount on IF @CURNCYID_RS IS NULL BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, ACTINDX, HSTYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC30001 WHERE ( CURNCYID = @CURNCYID AND ACTINDX = @ACTINDX AND PERIODID = @PERIODID AND Ledger_ID > @Ledger_ID OR CURNCYID = @CURNCYID AND ACTINDX = @ACTINDX AND PERIODID > @PERIODID OR CURNCYID = @CURNCYID AND ACTINDX > @ACTINDX OR CURNCYID > @CURNCYID ) ORDER BY CURNCYID ASC, ACTINDX ASC, PERIODID ASC, Ledger_ID ASC, DEX_ROW_ID ASC END ELSE IF @CURNCYID_RS = @CURNCYID_RE BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, ACTINDX, HSTYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC30001 WHERE CURNCYID = @CURNCYID_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND ( CURNCYID = @CURNCYID AND ACTINDX = @ACTINDX AND PERIODID = @PERIODID AND Ledger_ID > @Ledger_ID OR CURNCYID = @CURNCYID AND ACTINDX = @ACTINDX AND PERIODID > @PERIODID OR CURNCYID = @CURNCYID AND ACTINDX > @ACTINDX OR CURNCYID > @CURNCYID ) ORDER BY CURNCYID ASC, ACTINDX ASC, PERIODID ASC, Ledger_ID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, ACTINDX, HSTYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC30001 WHERE CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND ( CURNCYID = @CURNCYID AND ACTINDX = @ACTINDX AND PERIODID = @PERIODID AND Ledger_ID > @Ledger_ID OR CURNCYID = @CURNCYID AND ACTINDX = @ACTINDX AND PERIODID > @PERIODID OR CURNCYID = @CURNCYID AND ACTINDX > @ACTINDX OR CURNCYID > @CURNCYID ) ORDER BY CURNCYID ASC, ACTINDX ASC, PERIODID ASC, Ledger_ID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC30001UN_2] TO [DYNGRP]
GO
