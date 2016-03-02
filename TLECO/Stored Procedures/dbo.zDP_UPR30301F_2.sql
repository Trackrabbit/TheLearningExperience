SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30301F_2] (@EMPLOYID_RS char(15), @PYRLRTYP_RS smallint, @PAYROLCD_RS char(7), @YEAR1_RS smallint, @EMPLOYID_RE char(15), @PYRLRTYP_RE smallint, @PAYROLCD_RE char(7), @YEAR1_RE smallint) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, YEAR1, PYRLRTYP, PAYROLCD, MTDWAGES_1, MTDWAGES_2, MTDWAGES_3, MTDWAGES_4, MTDWAGES_5, MTDWAGES_6, MTDWAGES_7, MTDWAGES_8, MTDWAGES_9, MTDWAGES_10, MTDWAGES_11, MTDWAGES_12, MTDHOURS_1, MTDHOURS_2, MTDHOURS_3, MTDHOURS_4, MTDHOURS_5, MTDHOURS_6, MTDHOURS_7, MTDHOURS_8, MTDHOURS_9, MTDHOURS_10, MTDHOURS_11, MTDHOURS_12, STXBLWGS_1, STXBLWGS_2, STXBLWGS_3, STXBLWGS_4, STXBLWGS_5, STXBLWGS_6, STXBLWGS_7, STXBLWGS_8, STXBLWGS_9, STXBLWGS_10, STXBLWGS_11, STXBLWGS_12, LCTXBLWG_1, LCTXBLWG_2, LCTXBLWG_3, LCTXBLWG_4, LCTXBLWG_5, LCTXBLWG_6, LCTXBLWG_7, LCTXBLWG_8, LCTXBLWG_9, LCTXBLWG_10, LCTXBLWG_11, LCTXBLWG_12, DEX_ROW_ID FROM .UPR30301 ORDER BY EMPLOYID ASC, PYRLRTYP ASC, PAYROLCD ASC, YEAR1 ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, YEAR1, PYRLRTYP, PAYROLCD, MTDWAGES_1, MTDWAGES_2, MTDWAGES_3, MTDWAGES_4, MTDWAGES_5, MTDWAGES_6, MTDWAGES_7, MTDWAGES_8, MTDWAGES_9, MTDWAGES_10, MTDWAGES_11, MTDWAGES_12, MTDHOURS_1, MTDHOURS_2, MTDHOURS_3, MTDHOURS_4, MTDHOURS_5, MTDHOURS_6, MTDHOURS_7, MTDHOURS_8, MTDHOURS_9, MTDHOURS_10, MTDHOURS_11, MTDHOURS_12, STXBLWGS_1, STXBLWGS_2, STXBLWGS_3, STXBLWGS_4, STXBLWGS_5, STXBLWGS_6, STXBLWGS_7, STXBLWGS_8, STXBLWGS_9, STXBLWGS_10, STXBLWGS_11, STXBLWGS_12, LCTXBLWG_1, LCTXBLWG_2, LCTXBLWG_3, LCTXBLWG_4, LCTXBLWG_5, LCTXBLWG_6, LCTXBLWG_7, LCTXBLWG_8, LCTXBLWG_9, LCTXBLWG_10, LCTXBLWG_11, LCTXBLWG_12, DEX_ROW_ID FROM .UPR30301 WHERE EMPLOYID = @EMPLOYID_RS AND PYRLRTYP BETWEEN @PYRLRTYP_RS AND @PYRLRTYP_RE AND PAYROLCD BETWEEN @PAYROLCD_RS AND @PAYROLCD_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE ORDER BY EMPLOYID ASC, PYRLRTYP ASC, PAYROLCD ASC, YEAR1 ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, YEAR1, PYRLRTYP, PAYROLCD, MTDWAGES_1, MTDWAGES_2, MTDWAGES_3, MTDWAGES_4, MTDWAGES_5, MTDWAGES_6, MTDWAGES_7, MTDWAGES_8, MTDWAGES_9, MTDWAGES_10, MTDWAGES_11, MTDWAGES_12, MTDHOURS_1, MTDHOURS_2, MTDHOURS_3, MTDHOURS_4, MTDHOURS_5, MTDHOURS_6, MTDHOURS_7, MTDHOURS_8, MTDHOURS_9, MTDHOURS_10, MTDHOURS_11, MTDHOURS_12, STXBLWGS_1, STXBLWGS_2, STXBLWGS_3, STXBLWGS_4, STXBLWGS_5, STXBLWGS_6, STXBLWGS_7, STXBLWGS_8, STXBLWGS_9, STXBLWGS_10, STXBLWGS_11, STXBLWGS_12, LCTXBLWG_1, LCTXBLWG_2, LCTXBLWG_3, LCTXBLWG_4, LCTXBLWG_5, LCTXBLWG_6, LCTXBLWG_7, LCTXBLWG_8, LCTXBLWG_9, LCTXBLWG_10, LCTXBLWG_11, LCTXBLWG_12, DEX_ROW_ID FROM .UPR30301 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PYRLRTYP BETWEEN @PYRLRTYP_RS AND @PYRLRTYP_RE AND PAYROLCD BETWEEN @PAYROLCD_RS AND @PAYROLCD_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE ORDER BY EMPLOYID ASC, PYRLRTYP ASC, PAYROLCD ASC, YEAR1 ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30301F_2] TO [DYNGRP]
GO
