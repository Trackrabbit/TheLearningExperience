SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10400F_1] (@USERID_RS char(15), @SRCECODE_RS char(7), @FUTASUTA_RS char(3), @UPRACTYP_RS smallint, @DEPRTMNT_RS char(7), @JOBTITLE_RS char(7), @PAYROLCD_RS char(7), @USERID_RE char(15), @SRCECODE_RE char(7), @FUTASUTA_RE char(3), @UPRACTYP_RE smallint, @DEPRTMNT_RE char(7), @JOBTITLE_RE char(7), @PAYROLCD_RE char(7)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, SRCECODE, FUTASUTA, DEPRTMNT, JOBTITLE, PAYROLCD, UPRACTYP, ACTINDX, AMNTOPST, DEX_ROW_ID FROM .UPR10400 ORDER BY USERID ASC, SRCECODE ASC, FUTASUTA ASC, UPRACTYP ASC, DEPRTMNT ASC, JOBTITLE ASC, PAYROLCD ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, SRCECODE, FUTASUTA, DEPRTMNT, JOBTITLE, PAYROLCD, UPRACTYP, ACTINDX, AMNTOPST, DEX_ROW_ID FROM .UPR10400 WHERE USERID = @USERID_RS AND SRCECODE BETWEEN @SRCECODE_RS AND @SRCECODE_RE AND FUTASUTA BETWEEN @FUTASUTA_RS AND @FUTASUTA_RE AND UPRACTYP BETWEEN @UPRACTYP_RS AND @UPRACTYP_RE AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND PAYROLCD BETWEEN @PAYROLCD_RS AND @PAYROLCD_RE ORDER BY USERID ASC, SRCECODE ASC, FUTASUTA ASC, UPRACTYP ASC, DEPRTMNT ASC, JOBTITLE ASC, PAYROLCD ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, SRCECODE, FUTASUTA, DEPRTMNT, JOBTITLE, PAYROLCD, UPRACTYP, ACTINDX, AMNTOPST, DEX_ROW_ID FROM .UPR10400 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND SRCECODE BETWEEN @SRCECODE_RS AND @SRCECODE_RE AND FUTASUTA BETWEEN @FUTASUTA_RS AND @FUTASUTA_RE AND UPRACTYP BETWEEN @UPRACTYP_RS AND @UPRACTYP_RE AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND PAYROLCD BETWEEN @PAYROLCD_RS AND @PAYROLCD_RE ORDER BY USERID ASC, SRCECODE ASC, FUTASUTA ASC, UPRACTYP ASC, DEPRTMNT ASC, JOBTITLE ASC, PAYROLCD ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10400F_1] TO [DYNGRP]
GO
