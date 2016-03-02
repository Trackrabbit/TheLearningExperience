SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF50200L_1] (@USERID_RS char(15), @PRCSSQNC_RS smallint, @REPORTID_RS smallint, @SUBSUDID_RS char(15), @STTACCT_1_RS char(9), @STTACCT_2_RS char(9), @STTACCT_3_RS char(9), @STTACCT_4_RS char(9), @STTACCT_5_RS char(9), @ENDACCT_1_RS char(9), @ENDACCT_2_RS char(9), @ENDACCT_3_RS char(9), @ENDACCT_4_RS char(9), @ENDACCT_5_RS char(9), @USERID_RE char(15), @PRCSSQNC_RE smallint, @REPORTID_RE smallint, @SUBSUDID_RE char(15), @STTACCT_1_RE char(9), @STTACCT_2_RE char(9), @STTACCT_3_RE char(9), @STTACCT_4_RE char(9), @STTACCT_5_RE char(9), @ENDACCT_1_RE char(9), @ENDACCT_2_RE char(9), @ENDACCT_3_RE char(9), @ENDACCT_4_RE char(9), @ENDACCT_5_RE char(9)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, REPORTID, SUBSUDID, STTACCT_1, STTACCT_2, STTACCT_3, STTACCT_4, STTACCT_5, ENDACCT_1, ENDACCT_2, ENDACCT_3, ENDACCT_4, ENDACCT_5, SUBTOTAM_1, SUBTOTAM_2, SUBTOTAM_3, SUBTOTAM_4, SUBTOTAM_5, SUBTOTAM_6, SUBTOTAM_7, SUBTOTAM_8, SUBTOTAM_9, SUBTOTAM_10, SUBTOTAM_11, SUBTOTAM_12, SUBTOTAM_13, SUBTOTAM_14, SUBTOTAM_15, SUBTOTAM_16, SUBTOTAM_17, SUBTOTAM_18, SUBTOTAM_19, SUBTOTAM_20, SUBTOTAM_21, SUBTOTAM_22, SUBTOTAM_23, SUBTOTAM_24, SUBTOTAM_25, SUBTOTAM_26, SUBTOTAM_27, SUBTOTAM_28, SUBTOTAM_29, SUBTOTAM_30, SUBTOTAM_31, SUBTOTAM_32, SUBTOTAM_33, SUBTOTAM_34, SUBTOTAM_35, SUBTOTAM_36, SUBTOTAM_37, SUBTOTAM_38, SUBTOTAM_39, SUBTOTAM_40, PRCSSQNC, DEX_ROW_ID FROM .AF50200 ORDER BY USERID DESC, PRCSSQNC DESC, REPORTID DESC, SUBSUDID DESC, STTACCT_1 DESC, STTACCT_2 DESC, STTACCT_3 DESC, STTACCT_4 DESC, STTACCT_5 DESC, ENDACCT_1 DESC, ENDACCT_2 DESC, ENDACCT_3 DESC, ENDACCT_4 DESC, ENDACCT_5 DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, REPORTID, SUBSUDID, STTACCT_1, STTACCT_2, STTACCT_3, STTACCT_4, STTACCT_5, ENDACCT_1, ENDACCT_2, ENDACCT_3, ENDACCT_4, ENDACCT_5, SUBTOTAM_1, SUBTOTAM_2, SUBTOTAM_3, SUBTOTAM_4, SUBTOTAM_5, SUBTOTAM_6, SUBTOTAM_7, SUBTOTAM_8, SUBTOTAM_9, SUBTOTAM_10, SUBTOTAM_11, SUBTOTAM_12, SUBTOTAM_13, SUBTOTAM_14, SUBTOTAM_15, SUBTOTAM_16, SUBTOTAM_17, SUBTOTAM_18, SUBTOTAM_19, SUBTOTAM_20, SUBTOTAM_21, SUBTOTAM_22, SUBTOTAM_23, SUBTOTAM_24, SUBTOTAM_25, SUBTOTAM_26, SUBTOTAM_27, SUBTOTAM_28, SUBTOTAM_29, SUBTOTAM_30, SUBTOTAM_31, SUBTOTAM_32, SUBTOTAM_33, SUBTOTAM_34, SUBTOTAM_35, SUBTOTAM_36, SUBTOTAM_37, SUBTOTAM_38, SUBTOTAM_39, SUBTOTAM_40, PRCSSQNC, DEX_ROW_ID FROM .AF50200 WHERE USERID = @USERID_RS AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND SUBSUDID BETWEEN @SUBSUDID_RS AND @SUBSUDID_RE AND STTACCT_1 BETWEEN @STTACCT_1_RS AND @STTACCT_1_RE AND STTACCT_2 BETWEEN @STTACCT_2_RS AND @STTACCT_2_RE AND STTACCT_3 BETWEEN @STTACCT_3_RS AND @STTACCT_3_RE AND STTACCT_4 BETWEEN @STTACCT_4_RS AND @STTACCT_4_RE AND STTACCT_5 BETWEEN @STTACCT_5_RS AND @STTACCT_5_RE AND ENDACCT_1 BETWEEN @ENDACCT_1_RS AND @ENDACCT_1_RE AND ENDACCT_2 BETWEEN @ENDACCT_2_RS AND @ENDACCT_2_RE AND ENDACCT_3 BETWEEN @ENDACCT_3_RS AND @ENDACCT_3_RE AND ENDACCT_4 BETWEEN @ENDACCT_4_RS AND @ENDACCT_4_RE AND ENDACCT_5 BETWEEN @ENDACCT_5_RS AND @ENDACCT_5_RE ORDER BY USERID DESC, PRCSSQNC DESC, REPORTID DESC, SUBSUDID DESC, STTACCT_1 DESC, STTACCT_2 DESC, STTACCT_3 DESC, STTACCT_4 DESC, STTACCT_5 DESC, ENDACCT_1 DESC, ENDACCT_2 DESC, ENDACCT_3 DESC, ENDACCT_4 DESC, ENDACCT_5 DESC END ELSE BEGIN SELECT TOP 25  USERID, REPORTID, SUBSUDID, STTACCT_1, STTACCT_2, STTACCT_3, STTACCT_4, STTACCT_5, ENDACCT_1, ENDACCT_2, ENDACCT_3, ENDACCT_4, ENDACCT_5, SUBTOTAM_1, SUBTOTAM_2, SUBTOTAM_3, SUBTOTAM_4, SUBTOTAM_5, SUBTOTAM_6, SUBTOTAM_7, SUBTOTAM_8, SUBTOTAM_9, SUBTOTAM_10, SUBTOTAM_11, SUBTOTAM_12, SUBTOTAM_13, SUBTOTAM_14, SUBTOTAM_15, SUBTOTAM_16, SUBTOTAM_17, SUBTOTAM_18, SUBTOTAM_19, SUBTOTAM_20, SUBTOTAM_21, SUBTOTAM_22, SUBTOTAM_23, SUBTOTAM_24, SUBTOTAM_25, SUBTOTAM_26, SUBTOTAM_27, SUBTOTAM_28, SUBTOTAM_29, SUBTOTAM_30, SUBTOTAM_31, SUBTOTAM_32, SUBTOTAM_33, SUBTOTAM_34, SUBTOTAM_35, SUBTOTAM_36, SUBTOTAM_37, SUBTOTAM_38, SUBTOTAM_39, SUBTOTAM_40, PRCSSQNC, DEX_ROW_ID FROM .AF50200 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND SUBSUDID BETWEEN @SUBSUDID_RS AND @SUBSUDID_RE AND STTACCT_1 BETWEEN @STTACCT_1_RS AND @STTACCT_1_RE AND STTACCT_2 BETWEEN @STTACCT_2_RS AND @STTACCT_2_RE AND STTACCT_3 BETWEEN @STTACCT_3_RS AND @STTACCT_3_RE AND STTACCT_4 BETWEEN @STTACCT_4_RS AND @STTACCT_4_RE AND STTACCT_5 BETWEEN @STTACCT_5_RS AND @STTACCT_5_RE AND ENDACCT_1 BETWEEN @ENDACCT_1_RS AND @ENDACCT_1_RE AND ENDACCT_2 BETWEEN @ENDACCT_2_RS AND @ENDACCT_2_RE AND ENDACCT_3 BETWEEN @ENDACCT_3_RS AND @ENDACCT_3_RE AND ENDACCT_4 BETWEEN @ENDACCT_4_RS AND @ENDACCT_4_RE AND ENDACCT_5 BETWEEN @ENDACCT_5_RS AND @ENDACCT_5_RE ORDER BY USERID DESC, PRCSSQNC DESC, REPORTID DESC, SUBSUDID DESC, STTACCT_1 DESC, STTACCT_2 DESC, STTACCT_3 DESC, STTACCT_4 DESC, STTACCT_5 DESC, ENDACCT_1 DESC, ENDACCT_2 DESC, ENDACCT_3 DESC, ENDACCT_4 DESC, ENDACCT_5 DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF50200L_1] TO [DYNGRP]
GO