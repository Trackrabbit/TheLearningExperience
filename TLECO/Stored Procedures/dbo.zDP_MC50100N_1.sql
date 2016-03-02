SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC50100N_1] (@BS int, @AMNTFROM smallint, @CURNCYID char(15), @YEARID char(15), @ACTINDX int, @PERIODID smallint, @AMNTFROM_RS smallint, @CURNCYID_RS char(15), @YEARID_RS char(15), @ACTINDX_RS int, @PERIODID_RS smallint, @AMNTFROM_RE smallint, @CURNCYID_RE char(15), @YEARID_RE char(15), @ACTINDX_RE int, @PERIODID_RE smallint) AS  set nocount on IF @AMNTFROM_RS IS NULL BEGIN SELECT TOP 25  AMNTFROM, YEARID, PERIODID, CURNCYID, CURRNIDX, ACTINDX, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC50100 WHERE ( AMNTFROM = @AMNTFROM AND CURNCYID = @CURNCYID AND YEARID = @YEARID AND ACTINDX = @ACTINDX AND PERIODID > @PERIODID OR AMNTFROM = @AMNTFROM AND CURNCYID = @CURNCYID AND YEARID = @YEARID AND ACTINDX > @ACTINDX OR AMNTFROM = @AMNTFROM AND CURNCYID = @CURNCYID AND YEARID > @YEARID OR AMNTFROM = @AMNTFROM AND CURNCYID > @CURNCYID OR AMNTFROM > @AMNTFROM ) ORDER BY AMNTFROM ASC, CURNCYID ASC, YEARID ASC, ACTINDX ASC, PERIODID ASC END ELSE IF @AMNTFROM_RS = @AMNTFROM_RE BEGIN SELECT TOP 25  AMNTFROM, YEARID, PERIODID, CURNCYID, CURRNIDX, ACTINDX, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC50100 WHERE AMNTFROM = @AMNTFROM_RS AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND YEARID BETWEEN @YEARID_RS AND @YEARID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( AMNTFROM = @AMNTFROM AND CURNCYID = @CURNCYID AND YEARID = @YEARID AND ACTINDX = @ACTINDX AND PERIODID > @PERIODID OR AMNTFROM = @AMNTFROM AND CURNCYID = @CURNCYID AND YEARID = @YEARID AND ACTINDX > @ACTINDX OR AMNTFROM = @AMNTFROM AND CURNCYID = @CURNCYID AND YEARID > @YEARID OR AMNTFROM = @AMNTFROM AND CURNCYID > @CURNCYID OR AMNTFROM > @AMNTFROM ) ORDER BY AMNTFROM ASC, CURNCYID ASC, YEARID ASC, ACTINDX ASC, PERIODID ASC END ELSE BEGIN SELECT TOP 25  AMNTFROM, YEARID, PERIODID, CURNCYID, CURRNIDX, ACTINDX, FUNCTAMT, ORIGAMT, DEX_ROW_ID FROM .MC50100 WHERE AMNTFROM BETWEEN @AMNTFROM_RS AND @AMNTFROM_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND YEARID BETWEEN @YEARID_RS AND @YEARID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( AMNTFROM = @AMNTFROM AND CURNCYID = @CURNCYID AND YEARID = @YEARID AND ACTINDX = @ACTINDX AND PERIODID > @PERIODID OR AMNTFROM = @AMNTFROM AND CURNCYID = @CURNCYID AND YEARID = @YEARID AND ACTINDX > @ACTINDX OR AMNTFROM = @AMNTFROM AND CURNCYID = @CURNCYID AND YEARID > @YEARID OR AMNTFROM = @AMNTFROM AND CURNCYID > @CURNCYID OR AMNTFROM > @AMNTFROM ) ORDER BY AMNTFROM ASC, CURNCYID ASC, YEARID ASC, ACTINDX ASC, PERIODID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC50100N_1] TO [DYNGRP]
GO
