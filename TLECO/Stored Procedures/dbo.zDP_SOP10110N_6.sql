SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10110N_6] (@BS int, @ACTIVE tinyint, @STRTDATE datetime, @ENDDATE datetime, @PRCSHID char(15), @DEX_ROW_ID int, @ACTIVE_RS tinyint, @STRTDATE_RS datetime, @ENDDATE_RS datetime, @PRCSHID_RS char(15), @ACTIVE_RE tinyint, @STRTDATE_RE datetime, @ENDDATE_RE datetime, @PRCSHID_RE char(15)) AS  set nocount on IF @ACTIVE_RS IS NULL BEGIN SELECT TOP 25  PRCSHID, DESCEXPR, NTPRONLY, ACTIVE, STRTDATE, ENDDATE, NOTEINDX, PROMO, CURNCYID, DEX_ROW_ID FROM .SOP10110 WHERE ( ACTIVE = @ACTIVE AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID = @PRCSHID AND DEX_ROW_ID > @DEX_ROW_ID OR ACTIVE = @ACTIVE AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID > @PRCSHID OR ACTIVE = @ACTIVE AND STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR ACTIVE = @ACTIVE AND STRTDATE > @STRTDATE OR ACTIVE > @ACTIVE ) ORDER BY ACTIVE ASC, STRTDATE ASC, ENDDATE ASC, PRCSHID ASC, DEX_ROW_ID ASC END ELSE IF @ACTIVE_RS = @ACTIVE_RE BEGIN SELECT TOP 25  PRCSHID, DESCEXPR, NTPRONLY, ACTIVE, STRTDATE, ENDDATE, NOTEINDX, PROMO, CURNCYID, DEX_ROW_ID FROM .SOP10110 WHERE ACTIVE = @ACTIVE_RS AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND ( ACTIVE = @ACTIVE AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID = @PRCSHID AND DEX_ROW_ID > @DEX_ROW_ID OR ACTIVE = @ACTIVE AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID > @PRCSHID OR ACTIVE = @ACTIVE AND STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR ACTIVE = @ACTIVE AND STRTDATE > @STRTDATE OR ACTIVE > @ACTIVE ) ORDER BY ACTIVE ASC, STRTDATE ASC, ENDDATE ASC, PRCSHID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRCSHID, DESCEXPR, NTPRONLY, ACTIVE, STRTDATE, ENDDATE, NOTEINDX, PROMO, CURNCYID, DEX_ROW_ID FROM .SOP10110 WHERE ACTIVE BETWEEN @ACTIVE_RS AND @ACTIVE_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND ( ACTIVE = @ACTIVE AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID = @PRCSHID AND DEX_ROW_ID > @DEX_ROW_ID OR ACTIVE = @ACTIVE AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID > @PRCSHID OR ACTIVE = @ACTIVE AND STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR ACTIVE = @ACTIVE AND STRTDATE > @STRTDATE OR ACTIVE > @ACTIVE ) ORDER BY ACTIVE ASC, STRTDATE ASC, ENDDATE ASC, PRCSHID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10110N_6] TO [DYNGRP]
GO
