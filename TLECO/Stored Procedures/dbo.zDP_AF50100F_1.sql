SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF50100F_1] (@USERID_RS char(15), @PRCSSQNC_RS smallint, @REPORTID_RS smallint, @TOTRWNUM_RS smallint, @STACCNDX_RS int, @EDACCNDX_RS int, @USERID_RE char(15), @PRCSSQNC_RE smallint, @REPORTID_RE smallint, @TOTRWNUM_RE smallint, @STACCNDX_RE int, @EDACCNDX_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, REPORTID, TOTRWNUM, STACCNDX, EDACCNDX, TOTLAMNT_1, TOTLAMNT_2, TOTLAMNT_3, TOTLAMNT_4, TOTLAMNT_5, TOTLAMNT_6, TOTLAMNT_7, TOTLAMNT_8, TOTLAMNT_9, TOTLAMNT_10, TOTLAMNT_11, TOTLAMNT_12, TOTLAMNT_13, TOTLAMNT_14, TOTLAMNT_15, TOTLAMNT_16, TOTLAMNT_17, TOTLAMNT_18, TOTLAMNT_19, TOTLAMNT_20, TOTLAMNT_21, TOTLAMNT_22, TOTLAMNT_23, TOTLAMNT_24, TOTLAMNT_25, TOTLAMNT_26, TOTLAMNT_27, TOTLAMNT_28, TOTLAMNT_29, TOTLAMNT_30, TOTLAMNT_31, TOTLAMNT_32, TOTLAMNT_33, TOTLAMNT_34, TOTLAMNT_35, TOTLAMNT_36, TOTLAMNT_37, TOTLAMNT_38, TOTLAMNT_39, TOTLAMNT_40, ACTOTAMT_1, ACTOTAMT_2, ACTOTAMT_3, ACTOTAMT_4, ACTOTAMT_5, ACTOTAMT_6, ACTOTAMT_7, ACTOTAMT_8, ACTOTAMT_9, ACTOTAMT_10, ACTOTAMT_11, ACTOTAMT_12, ACTOTAMT_13, ACTOTAMT_14, ACTOTAMT_15, ACTOTAMT_16, ACTOTAMT_17, ACTOTAMT_18, ACTOTAMT_19, ACTOTAMT_20, ACTOTAMT_21, ACTOTAMT_22, ACTOTAMT_23, ACTOTAMT_24, ACTOTAMT_25, ACTOTAMT_26, ACTOTAMT_27, ACTOTAMT_28, ACTOTAMT_29, ACTOTAMT_30, ACTOTAMT_31, ACTOTAMT_32, ACTOTAMT_33, ACTOTAMT_34, ACTOTAMT_35, ACTOTAMT_36, ACTOTAMT_37, ACTOTAMT_38, ACTOTAMT_39, ACTOTAMT_40, PRCSSQNC, DEX_ROW_ID FROM .AF50100 ORDER BY USERID ASC, PRCSSQNC ASC, REPORTID ASC, TOTRWNUM ASC, STACCNDX ASC, EDACCNDX ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, REPORTID, TOTRWNUM, STACCNDX, EDACCNDX, TOTLAMNT_1, TOTLAMNT_2, TOTLAMNT_3, TOTLAMNT_4, TOTLAMNT_5, TOTLAMNT_6, TOTLAMNT_7, TOTLAMNT_8, TOTLAMNT_9, TOTLAMNT_10, TOTLAMNT_11, TOTLAMNT_12, TOTLAMNT_13, TOTLAMNT_14, TOTLAMNT_15, TOTLAMNT_16, TOTLAMNT_17, TOTLAMNT_18, TOTLAMNT_19, TOTLAMNT_20, TOTLAMNT_21, TOTLAMNT_22, TOTLAMNT_23, TOTLAMNT_24, TOTLAMNT_25, TOTLAMNT_26, TOTLAMNT_27, TOTLAMNT_28, TOTLAMNT_29, TOTLAMNT_30, TOTLAMNT_31, TOTLAMNT_32, TOTLAMNT_33, TOTLAMNT_34, TOTLAMNT_35, TOTLAMNT_36, TOTLAMNT_37, TOTLAMNT_38, TOTLAMNT_39, TOTLAMNT_40, ACTOTAMT_1, ACTOTAMT_2, ACTOTAMT_3, ACTOTAMT_4, ACTOTAMT_5, ACTOTAMT_6, ACTOTAMT_7, ACTOTAMT_8, ACTOTAMT_9, ACTOTAMT_10, ACTOTAMT_11, ACTOTAMT_12, ACTOTAMT_13, ACTOTAMT_14, ACTOTAMT_15, ACTOTAMT_16, ACTOTAMT_17, ACTOTAMT_18, ACTOTAMT_19, ACTOTAMT_20, ACTOTAMT_21, ACTOTAMT_22, ACTOTAMT_23, ACTOTAMT_24, ACTOTAMT_25, ACTOTAMT_26, ACTOTAMT_27, ACTOTAMT_28, ACTOTAMT_29, ACTOTAMT_30, ACTOTAMT_31, ACTOTAMT_32, ACTOTAMT_33, ACTOTAMT_34, ACTOTAMT_35, ACTOTAMT_36, ACTOTAMT_37, ACTOTAMT_38, ACTOTAMT_39, ACTOTAMT_40, PRCSSQNC, DEX_ROW_ID FROM .AF50100 WHERE USERID = @USERID_RS AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND TOTRWNUM BETWEEN @TOTRWNUM_RS AND @TOTRWNUM_RE AND STACCNDX BETWEEN @STACCNDX_RS AND @STACCNDX_RE AND EDACCNDX BETWEEN @EDACCNDX_RS AND @EDACCNDX_RE ORDER BY USERID ASC, PRCSSQNC ASC, REPORTID ASC, TOTRWNUM ASC, STACCNDX ASC, EDACCNDX ASC END ELSE BEGIN SELECT TOP 25  USERID, REPORTID, TOTRWNUM, STACCNDX, EDACCNDX, TOTLAMNT_1, TOTLAMNT_2, TOTLAMNT_3, TOTLAMNT_4, TOTLAMNT_5, TOTLAMNT_6, TOTLAMNT_7, TOTLAMNT_8, TOTLAMNT_9, TOTLAMNT_10, TOTLAMNT_11, TOTLAMNT_12, TOTLAMNT_13, TOTLAMNT_14, TOTLAMNT_15, TOTLAMNT_16, TOTLAMNT_17, TOTLAMNT_18, TOTLAMNT_19, TOTLAMNT_20, TOTLAMNT_21, TOTLAMNT_22, TOTLAMNT_23, TOTLAMNT_24, TOTLAMNT_25, TOTLAMNT_26, TOTLAMNT_27, TOTLAMNT_28, TOTLAMNT_29, TOTLAMNT_30, TOTLAMNT_31, TOTLAMNT_32, TOTLAMNT_33, TOTLAMNT_34, TOTLAMNT_35, TOTLAMNT_36, TOTLAMNT_37, TOTLAMNT_38, TOTLAMNT_39, TOTLAMNT_40, ACTOTAMT_1, ACTOTAMT_2, ACTOTAMT_3, ACTOTAMT_4, ACTOTAMT_5, ACTOTAMT_6, ACTOTAMT_7, ACTOTAMT_8, ACTOTAMT_9, ACTOTAMT_10, ACTOTAMT_11, ACTOTAMT_12, ACTOTAMT_13, ACTOTAMT_14, ACTOTAMT_15, ACTOTAMT_16, ACTOTAMT_17, ACTOTAMT_18, ACTOTAMT_19, ACTOTAMT_20, ACTOTAMT_21, ACTOTAMT_22, ACTOTAMT_23, ACTOTAMT_24, ACTOTAMT_25, ACTOTAMT_26, ACTOTAMT_27, ACTOTAMT_28, ACTOTAMT_29, ACTOTAMT_30, ACTOTAMT_31, ACTOTAMT_32, ACTOTAMT_33, ACTOTAMT_34, ACTOTAMT_35, ACTOTAMT_36, ACTOTAMT_37, ACTOTAMT_38, ACTOTAMT_39, ACTOTAMT_40, PRCSSQNC, DEX_ROW_ID FROM .AF50100 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND TOTRWNUM BETWEEN @TOTRWNUM_RS AND @TOTRWNUM_RE AND STACCNDX BETWEEN @STACCNDX_RS AND @STACCNDX_RE AND EDACCNDX BETWEEN @EDACCNDX_RS AND @EDACCNDX_RE ORDER BY USERID ASC, PRCSSQNC ASC, REPORTID ASC, TOTRWNUM ASC, STACCNDX ASC, EDACCNDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF50100F_1] TO [DYNGRP]
GO
