SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF50000N_3] (@BS int, @USERID char(15), @PRCSSQNC smallint, @REPORTID smallint, @AMNTFROM smallint, @HSTYEAR smallint, @STACCNDX int, @EDACCNDX int, @PERIODID smallint, @DEX_ROW_ID int, @USERID_RS char(15), @PRCSSQNC_RS smallint, @REPORTID_RS smallint, @AMNTFROM_RS smallint, @HSTYEAR_RS smallint, @STACCNDX_RS int, @EDACCNDX_RS int, @PERIODID_RS smallint, @USERID_RE char(15), @PRCSSQNC_RE smallint, @REPORTID_RE smallint, @AMNTFROM_RE smallint, @HSTYEAR_RE smallint, @STACCNDX_RE int, @EDACCNDX_RE int, @PERIODID_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, REPORTID, AMNTFROM, BUDGETID, HSTYEAR, STACCNDX, EDACCNDX, PERIODID, NTPRFAMT, ACBEGBAL, ACTNPRAM, PRCSSQNC, DEX_ROW_ID FROM .AF50000 WHERE ( USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR = @HSTYEAR AND STACCNDX = @STACCNDX AND EDACCNDX = @EDACCNDX AND PERIODID = @PERIODID AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR = @HSTYEAR AND STACCNDX = @STACCNDX AND EDACCNDX = @EDACCNDX AND PERIODID > @PERIODID OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR = @HSTYEAR AND STACCNDX = @STACCNDX AND EDACCNDX > @EDACCNDX OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR = @HSTYEAR AND STACCNDX > @STACCNDX OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR > @HSTYEAR OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM > @AMNTFROM OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID > @REPORTID OR USERID = @USERID AND PRCSSQNC > @PRCSSQNC OR USERID > @USERID ) ORDER BY USERID ASC, PRCSSQNC ASC, REPORTID ASC, AMNTFROM ASC, HSTYEAR ASC, STACCNDX ASC, EDACCNDX ASC, PERIODID ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, REPORTID, AMNTFROM, BUDGETID, HSTYEAR, STACCNDX, EDACCNDX, PERIODID, NTPRFAMT, ACBEGBAL, ACTNPRAM, PRCSSQNC, DEX_ROW_ID FROM .AF50000 WHERE USERID = @USERID_RS AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND AMNTFROM BETWEEN @AMNTFROM_RS AND @AMNTFROM_RE AND HSTYEAR BETWEEN @HSTYEAR_RS AND @HSTYEAR_RE AND STACCNDX BETWEEN @STACCNDX_RS AND @STACCNDX_RE AND EDACCNDX BETWEEN @EDACCNDX_RS AND @EDACCNDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR = @HSTYEAR AND STACCNDX = @STACCNDX AND EDACCNDX = @EDACCNDX AND PERIODID = @PERIODID AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR = @HSTYEAR AND STACCNDX = @STACCNDX AND EDACCNDX = @EDACCNDX AND PERIODID > @PERIODID OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR = @HSTYEAR AND STACCNDX = @STACCNDX AND EDACCNDX > @EDACCNDX OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR = @HSTYEAR AND STACCNDX > @STACCNDX OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR > @HSTYEAR OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM > @AMNTFROM OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID > @REPORTID OR USERID = @USERID AND PRCSSQNC > @PRCSSQNC OR USERID > @USERID ) ORDER BY USERID ASC, PRCSSQNC ASC, REPORTID ASC, AMNTFROM ASC, HSTYEAR ASC, STACCNDX ASC, EDACCNDX ASC, PERIODID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, REPORTID, AMNTFROM, BUDGETID, HSTYEAR, STACCNDX, EDACCNDX, PERIODID, NTPRFAMT, ACBEGBAL, ACTNPRAM, PRCSSQNC, DEX_ROW_ID FROM .AF50000 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND AMNTFROM BETWEEN @AMNTFROM_RS AND @AMNTFROM_RE AND HSTYEAR BETWEEN @HSTYEAR_RS AND @HSTYEAR_RE AND STACCNDX BETWEEN @STACCNDX_RS AND @STACCNDX_RE AND EDACCNDX BETWEEN @EDACCNDX_RS AND @EDACCNDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR = @HSTYEAR AND STACCNDX = @STACCNDX AND EDACCNDX = @EDACCNDX AND PERIODID = @PERIODID AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR = @HSTYEAR AND STACCNDX = @STACCNDX AND EDACCNDX = @EDACCNDX AND PERIODID > @PERIODID OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR = @HSTYEAR AND STACCNDX = @STACCNDX AND EDACCNDX > @EDACCNDX OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR = @HSTYEAR AND STACCNDX > @STACCNDX OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM = @AMNTFROM AND HSTYEAR > @HSTYEAR OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND AMNTFROM > @AMNTFROM OR USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID > @REPORTID OR USERID = @USERID AND PRCSSQNC > @PRCSSQNC OR USERID > @USERID ) ORDER BY USERID ASC, PRCSSQNC ASC, REPORTID ASC, AMNTFROM ASC, HSTYEAR ASC, STACCNDX ASC, EDACCNDX ASC, PERIODID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF50000N_3] TO [DYNGRP]
GO