SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00900L_1] (@EMPLOYID_RS char(15), @YEAR1_RS smallint, @EMPLOYID_RE char(15), @YEAR1_RE smallint) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, LPCHKNUM, LSTPCKDT, LPCHKAMT, GROSWAGS_1, GROSWAGS_2, GROSWAGS_3, GROSWAGS_4, GROSWAGS_5, GROSWAGS_6, GROSWAGS_7, GROSWAGS_8, GROSWAGS_9, GROSWAGS_10, GROSWAGS_11, GROSWAGS_12, FDWTHLDG_1, FDWTHLDG_2, FDWTHLDG_3, FDWTHLDG_4, FDWTHLDG_5, FDWTHLDG_6, FDWTHLDG_7, FDWTHLDG_8, FDWTHLDG_9, FDWTHLDG_10, FDWTHLDG_11, FDWTHLDG_12, FICASSWG_1, FICASSWG_2, FICASSWG_3, FICASSWG_4, FICASSWG_5, FICASSWG_6, FICASSWG_7, FICASSWG_8, FICASSWG_9, FICASSWG_10, FICASSWG_11, FICASSWG_12, FICAMWGS_1, FICAMWGS_2, FICAMWGS_3, FICAMWGS_4, FICAMWGS_5, FICAMWGS_6, FICAMWGS_7, FICAMWGS_8, FICAMWGS_9, FICAMWGS_10, FICAMWGS_11, FICAMWGS_12, FICASSWH_1, FICASSWH_2, FICASSWH_3, FICASSWH_4, FICASSWH_5, FICASSWH_6, FICASSWH_7, FICASSWH_8, FICASSWH_9, FICASSWH_10, FICASSWH_11, FICASSWH_12, FICAMWDG_1, FICAMWDG_2, FICAMWDG_3, FICAMWDG_4, FICAMWDG_5, FICAMWDG_6, FICAMWDG_7, FICAMWDG_8, FICAMWDG_9, FICAMWDG_10, FICAMWDG_11, FICAMWDG_12, SUTAWAGS_1, SUTAWAGS_2, SUTAWAGS_3, SUTAWAGS_4, SUTAWAGS_5, SUTAWAGS_6, SUTAWAGS_7, SUTAWAGS_8, SUTAWAGS_9, SUTAWAGS_10, SUTAWAGS_11, SUTAWAGS_12, FUTAWAGS_1, FUTAWAGS_2, FUTAWAGS_3, FUTAWAGS_4, FUTAWAGS_5, FUTAWAGS_6, FUTAWAGS_7, FUTAWAGS_8, FUTAWAGS_9, FUTAWAGS_10, FUTAWAGS_11, FUTAWAGS_12, NETWAGES_1, NETWAGES_2, NETWAGES_3, NETWAGES_4, NETWAGES_5, NETWAGES_6, NETWAGES_7, NETWAGES_8, NETWAGES_9, NETWAGES_10, NETWAGES_11, NETWAGES_12, YEAR1, Federal_Wages_1, Federal_Wages_2, Federal_Wages_3, Federal_Wages_4, Federal_Wages_5, Federal_Wages_6, Federal_Wages_7, Federal_Wages_8, Federal_Wages_9, Federal_Wages_10, Federal_Wages_11, Federal_Wages_12, DEX_ROW_ID FROM .UPR00900 ORDER BY EMPLOYID DESC, YEAR1 DESC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, LPCHKNUM, LSTPCKDT, LPCHKAMT, GROSWAGS_1, GROSWAGS_2, GROSWAGS_3, GROSWAGS_4, GROSWAGS_5, GROSWAGS_6, GROSWAGS_7, GROSWAGS_8, GROSWAGS_9, GROSWAGS_10, GROSWAGS_11, GROSWAGS_12, FDWTHLDG_1, FDWTHLDG_2, FDWTHLDG_3, FDWTHLDG_4, FDWTHLDG_5, FDWTHLDG_6, FDWTHLDG_7, FDWTHLDG_8, FDWTHLDG_9, FDWTHLDG_10, FDWTHLDG_11, FDWTHLDG_12, FICASSWG_1, FICASSWG_2, FICASSWG_3, FICASSWG_4, FICASSWG_5, FICASSWG_6, FICASSWG_7, FICASSWG_8, FICASSWG_9, FICASSWG_10, FICASSWG_11, FICASSWG_12, FICAMWGS_1, FICAMWGS_2, FICAMWGS_3, FICAMWGS_4, FICAMWGS_5, FICAMWGS_6, FICAMWGS_7, FICAMWGS_8, FICAMWGS_9, FICAMWGS_10, FICAMWGS_11, FICAMWGS_12, FICASSWH_1, FICASSWH_2, FICASSWH_3, FICASSWH_4, FICASSWH_5, FICASSWH_6, FICASSWH_7, FICASSWH_8, FICASSWH_9, FICASSWH_10, FICASSWH_11, FICASSWH_12, FICAMWDG_1, FICAMWDG_2, FICAMWDG_3, FICAMWDG_4, FICAMWDG_5, FICAMWDG_6, FICAMWDG_7, FICAMWDG_8, FICAMWDG_9, FICAMWDG_10, FICAMWDG_11, FICAMWDG_12, SUTAWAGS_1, SUTAWAGS_2, SUTAWAGS_3, SUTAWAGS_4, SUTAWAGS_5, SUTAWAGS_6, SUTAWAGS_7, SUTAWAGS_8, SUTAWAGS_9, SUTAWAGS_10, SUTAWAGS_11, SUTAWAGS_12, FUTAWAGS_1, FUTAWAGS_2, FUTAWAGS_3, FUTAWAGS_4, FUTAWAGS_5, FUTAWAGS_6, FUTAWAGS_7, FUTAWAGS_8, FUTAWAGS_9, FUTAWAGS_10, FUTAWAGS_11, FUTAWAGS_12, NETWAGES_1, NETWAGES_2, NETWAGES_3, NETWAGES_4, NETWAGES_5, NETWAGES_6, NETWAGES_7, NETWAGES_8, NETWAGES_9, NETWAGES_10, NETWAGES_11, NETWAGES_12, YEAR1, Federal_Wages_1, Federal_Wages_2, Federal_Wages_3, Federal_Wages_4, Federal_Wages_5, Federal_Wages_6, Federal_Wages_7, Federal_Wages_8, Federal_Wages_9, Federal_Wages_10, Federal_Wages_11, Federal_Wages_12, DEX_ROW_ID FROM .UPR00900 WHERE EMPLOYID = @EMPLOYID_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE ORDER BY EMPLOYID DESC, YEAR1 DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, LPCHKNUM, LSTPCKDT, LPCHKAMT, GROSWAGS_1, GROSWAGS_2, GROSWAGS_3, GROSWAGS_4, GROSWAGS_5, GROSWAGS_6, GROSWAGS_7, GROSWAGS_8, GROSWAGS_9, GROSWAGS_10, GROSWAGS_11, GROSWAGS_12, FDWTHLDG_1, FDWTHLDG_2, FDWTHLDG_3, FDWTHLDG_4, FDWTHLDG_5, FDWTHLDG_6, FDWTHLDG_7, FDWTHLDG_8, FDWTHLDG_9, FDWTHLDG_10, FDWTHLDG_11, FDWTHLDG_12, FICASSWG_1, FICASSWG_2, FICASSWG_3, FICASSWG_4, FICASSWG_5, FICASSWG_6, FICASSWG_7, FICASSWG_8, FICASSWG_9, FICASSWG_10, FICASSWG_11, FICASSWG_12, FICAMWGS_1, FICAMWGS_2, FICAMWGS_3, FICAMWGS_4, FICAMWGS_5, FICAMWGS_6, FICAMWGS_7, FICAMWGS_8, FICAMWGS_9, FICAMWGS_10, FICAMWGS_11, FICAMWGS_12, FICASSWH_1, FICASSWH_2, FICASSWH_3, FICASSWH_4, FICASSWH_5, FICASSWH_6, FICASSWH_7, FICASSWH_8, FICASSWH_9, FICASSWH_10, FICASSWH_11, FICASSWH_12, FICAMWDG_1, FICAMWDG_2, FICAMWDG_3, FICAMWDG_4, FICAMWDG_5, FICAMWDG_6, FICAMWDG_7, FICAMWDG_8, FICAMWDG_9, FICAMWDG_10, FICAMWDG_11, FICAMWDG_12, SUTAWAGS_1, SUTAWAGS_2, SUTAWAGS_3, SUTAWAGS_4, SUTAWAGS_5, SUTAWAGS_6, SUTAWAGS_7, SUTAWAGS_8, SUTAWAGS_9, SUTAWAGS_10, SUTAWAGS_11, SUTAWAGS_12, FUTAWAGS_1, FUTAWAGS_2, FUTAWAGS_3, FUTAWAGS_4, FUTAWAGS_5, FUTAWAGS_6, FUTAWAGS_7, FUTAWAGS_8, FUTAWAGS_9, FUTAWAGS_10, FUTAWAGS_11, FUTAWAGS_12, NETWAGES_1, NETWAGES_2, NETWAGES_3, NETWAGES_4, NETWAGES_5, NETWAGES_6, NETWAGES_7, NETWAGES_8, NETWAGES_9, NETWAGES_10, NETWAGES_11, NETWAGES_12, YEAR1, Federal_Wages_1, Federal_Wages_2, Federal_Wages_3, Federal_Wages_4, Federal_Wages_5, Federal_Wages_6, Federal_Wages_7, Federal_Wages_8, Federal_Wages_9, Federal_Wages_10, Federal_Wages_11, Federal_Wages_12, DEX_ROW_ID FROM .UPR00900 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE ORDER BY EMPLOYID DESC, YEAR1 DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00900L_1] TO [DYNGRP]
GO
