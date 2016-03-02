SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30301L_3] (@YEAR1_RS smallint, @YEAR1_RE smallint) AS  set nocount on IF @YEAR1_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, YEAR1, PYRLRTYP, PAYROLCD, MTDWAGES_1, MTDWAGES_2, MTDWAGES_3, MTDWAGES_4, MTDWAGES_5, MTDWAGES_6, MTDWAGES_7, MTDWAGES_8, MTDWAGES_9, MTDWAGES_10, MTDWAGES_11, MTDWAGES_12, MTDHOURS_1, MTDHOURS_2, MTDHOURS_3, MTDHOURS_4, MTDHOURS_5, MTDHOURS_6, MTDHOURS_7, MTDHOURS_8, MTDHOURS_9, MTDHOURS_10, MTDHOURS_11, MTDHOURS_12, STXBLWGS_1, STXBLWGS_2, STXBLWGS_3, STXBLWGS_4, STXBLWGS_5, STXBLWGS_6, STXBLWGS_7, STXBLWGS_8, STXBLWGS_9, STXBLWGS_10, STXBLWGS_11, STXBLWGS_12, LCTXBLWG_1, LCTXBLWG_2, LCTXBLWG_3, LCTXBLWG_4, LCTXBLWG_5, LCTXBLWG_6, LCTXBLWG_7, LCTXBLWG_8, LCTXBLWG_9, LCTXBLWG_10, LCTXBLWG_11, LCTXBLWG_12, DEX_ROW_ID FROM .UPR30301 ORDER BY YEAR1 DESC, DEX_ROW_ID DESC END ELSE IF @YEAR1_RS = @YEAR1_RE BEGIN SELECT TOP 25  EMPLOYID, YEAR1, PYRLRTYP, PAYROLCD, MTDWAGES_1, MTDWAGES_2, MTDWAGES_3, MTDWAGES_4, MTDWAGES_5, MTDWAGES_6, MTDWAGES_7, MTDWAGES_8, MTDWAGES_9, MTDWAGES_10, MTDWAGES_11, MTDWAGES_12, MTDHOURS_1, MTDHOURS_2, MTDHOURS_3, MTDHOURS_4, MTDHOURS_5, MTDHOURS_6, MTDHOURS_7, MTDHOURS_8, MTDHOURS_9, MTDHOURS_10, MTDHOURS_11, MTDHOURS_12, STXBLWGS_1, STXBLWGS_2, STXBLWGS_3, STXBLWGS_4, STXBLWGS_5, STXBLWGS_6, STXBLWGS_7, STXBLWGS_8, STXBLWGS_9, STXBLWGS_10, STXBLWGS_11, STXBLWGS_12, LCTXBLWG_1, LCTXBLWG_2, LCTXBLWG_3, LCTXBLWG_4, LCTXBLWG_5, LCTXBLWG_6, LCTXBLWG_7, LCTXBLWG_8, LCTXBLWG_9, LCTXBLWG_10, LCTXBLWG_11, LCTXBLWG_12, DEX_ROW_ID FROM .UPR30301 WHERE YEAR1 = @YEAR1_RS ORDER BY YEAR1 DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, YEAR1, PYRLRTYP, PAYROLCD, MTDWAGES_1, MTDWAGES_2, MTDWAGES_3, MTDWAGES_4, MTDWAGES_5, MTDWAGES_6, MTDWAGES_7, MTDWAGES_8, MTDWAGES_9, MTDWAGES_10, MTDWAGES_11, MTDWAGES_12, MTDHOURS_1, MTDHOURS_2, MTDHOURS_3, MTDHOURS_4, MTDHOURS_5, MTDHOURS_6, MTDHOURS_7, MTDHOURS_8, MTDHOURS_9, MTDHOURS_10, MTDHOURS_11, MTDHOURS_12, STXBLWGS_1, STXBLWGS_2, STXBLWGS_3, STXBLWGS_4, STXBLWGS_5, STXBLWGS_6, STXBLWGS_7, STXBLWGS_8, STXBLWGS_9, STXBLWGS_10, STXBLWGS_11, STXBLWGS_12, LCTXBLWG_1, LCTXBLWG_2, LCTXBLWG_3, LCTXBLWG_4, LCTXBLWG_5, LCTXBLWG_6, LCTXBLWG_7, LCTXBLWG_8, LCTXBLWG_9, LCTXBLWG_10, LCTXBLWG_11, LCTXBLWG_12, DEX_ROW_ID FROM .UPR30301 WHERE YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE ORDER BY YEAR1 DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30301L_3] TO [DYNGRP]
GO
