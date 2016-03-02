SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF50000F_1] (@USERID_RS char(15), @PRCSSQNC_RS smallint, @REPORTID_RS smallint, @AMNTFROM_RS smallint, @STACCNDX_RS int, @EDACCNDX_RS int, @PERIODID_RS smallint, @USERID_RE char(15), @PRCSSQNC_RE smallint, @REPORTID_RE smallint, @AMNTFROM_RE smallint, @STACCNDX_RE int, @EDACCNDX_RE int, @PERIODID_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, REPORTID, AMNTFROM, BUDGETID, HSTYEAR, STACCNDX, EDACCNDX, PERIODID, NTPRFAMT, ACBEGBAL, ACTNPRAM, PRCSSQNC, DEX_ROW_ID FROM .AF50000 ORDER BY USERID ASC, PRCSSQNC ASC, REPORTID ASC, AMNTFROM ASC, STACCNDX ASC, EDACCNDX ASC, PERIODID ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, REPORTID, AMNTFROM, BUDGETID, HSTYEAR, STACCNDX, EDACCNDX, PERIODID, NTPRFAMT, ACBEGBAL, ACTNPRAM, PRCSSQNC, DEX_ROW_ID FROM .AF50000 WHERE USERID = @USERID_RS AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND AMNTFROM BETWEEN @AMNTFROM_RS AND @AMNTFROM_RE AND STACCNDX BETWEEN @STACCNDX_RS AND @STACCNDX_RE AND EDACCNDX BETWEEN @EDACCNDX_RS AND @EDACCNDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY USERID ASC, PRCSSQNC ASC, REPORTID ASC, AMNTFROM ASC, STACCNDX ASC, EDACCNDX ASC, PERIODID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, REPORTID, AMNTFROM, BUDGETID, HSTYEAR, STACCNDX, EDACCNDX, PERIODID, NTPRFAMT, ACBEGBAL, ACTNPRAM, PRCSSQNC, DEX_ROW_ID FROM .AF50000 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND AMNTFROM BETWEEN @AMNTFROM_RS AND @AMNTFROM_RE AND STACCNDX BETWEEN @STACCNDX_RS AND @STACCNDX_RE AND EDACCNDX BETWEEN @EDACCNDX_RS AND @EDACCNDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY USERID ASC, PRCSSQNC ASC, REPORTID ASC, AMNTFROM ASC, STACCNDX ASC, EDACCNDX ASC, PERIODID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF50000F_1] TO [DYNGRP]
GO
