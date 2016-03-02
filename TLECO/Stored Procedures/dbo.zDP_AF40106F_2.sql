SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_AF40106F_2] (@REPORTID_RS smallint, @ROWTYPE_RS smallint, @ROWNUMBR_RS smallint, @REPORTID_RE smallint, @ROWTYPE_RE smallint, @ROWNUMBR_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @REPORTID_RS IS NULL BEGIN SELECT TOP 25  REPORTID, ROWNUMBR, TOTKNCNT, ROWTYPE, ROWSIZE, ROLUPFLG, ROWDESC, SUBSUDID, TYPCLBAL, CATNUMBR, PRTSIGN, PRTHEDER, CENTHEDR, ROWFTFAM, ROWFTSIZ, ROWSTYLE_1, ROWSTYLE_2, ROWSTYLE_3, ROWSTYLE_4, ROWSTYLE_5, ROWSTYLE_6, ROFMRKIN_1, ROFMRKIN_2, ROFMRKIN_3, ROFMRKIN_4, ROFMRKIN_5, ROFMRKIN_6, ROFMRKIN_7, ROFMRKIN_8, ROFMRKIN_9, ROFMRKIN_10, ROFMRKIN_11, ROFMRKIN_12, ROFMRKIN_13, ROFMRKIN_14, ROFMRKIN_15, ROFMRKIN_16, ROFMRKIN_17, ROFMRKIN_18, ROFMRKIN_19, ROFMRKIN_20, ROFMRKIN_21, ROFMRKIN_22, ROFMRKIN_23, ROFMRKIN_24, ROFMRKIN_25, ROFMRKIN_26, ROFMRKIN_27, ROFMRKIN_28, ROFMRKIN_29, ROFMRKIN_30, ROFMRKIN_31, ROFMRKIN_32, ROFMRKIN_33, ROFMRKIN_34, ROFMRKIN_35, ROFMRKIN_36, ROFMRKIN_37, ROFMRKIN_38, ROFMRKIN_39, ROFMRKIN_40, CFLOSCTN, RWEXPERR, NOTEINDX, STTACCT_1, STTACCT_2, STTACCT_3, STTACCT_4, ENDACCT_1, ENDACCT_2, ENDACCT_3, ENDACCT_4, DEX_ROW_ID FROM .AF40106 ORDER BY REPORTID ASC, ROWTYPE ASC, ROWNUMBR ASC END ELSE IF @REPORTID_RS = @REPORTID_RE BEGIN SELECT TOP 25  REPORTID, ROWNUMBR, TOTKNCNT, ROWTYPE, ROWSIZE, ROLUPFLG, ROWDESC, SUBSUDID, TYPCLBAL, CATNUMBR, PRTSIGN, PRTHEDER, CENTHEDR, ROWFTFAM, ROWFTSIZ, ROWSTYLE_1, ROWSTYLE_2, ROWSTYLE_3, ROWSTYLE_4, ROWSTYLE_5, ROWSTYLE_6, ROFMRKIN_1, ROFMRKIN_2, ROFMRKIN_3, ROFMRKIN_4, ROFMRKIN_5, ROFMRKIN_6, ROFMRKIN_7, ROFMRKIN_8, ROFMRKIN_9, ROFMRKIN_10, ROFMRKIN_11, ROFMRKIN_12, ROFMRKIN_13, ROFMRKIN_14, ROFMRKIN_15, ROFMRKIN_16, ROFMRKIN_17, ROFMRKIN_18, ROFMRKIN_19, ROFMRKIN_20, ROFMRKIN_21, ROFMRKIN_22, ROFMRKIN_23, ROFMRKIN_24, ROFMRKIN_25, ROFMRKIN_26, ROFMRKIN_27, ROFMRKIN_28, ROFMRKIN_29, ROFMRKIN_30, ROFMRKIN_31, ROFMRKIN_32, ROFMRKIN_33, ROFMRKIN_34, ROFMRKIN_35, ROFMRKIN_36, ROFMRKIN_37, ROFMRKIN_38, ROFMRKIN_39, ROFMRKIN_40, CFLOSCTN, RWEXPERR, NOTEINDX, STTACCT_1, STTACCT_2, STTACCT_3, STTACCT_4, ENDACCT_1, ENDACCT_2, ENDACCT_3, ENDACCT_4, DEX_ROW_ID FROM .AF40106 WHERE REPORTID = @REPORTID_RS AND ROWTYPE BETWEEN @ROWTYPE_RS AND @ROWTYPE_RE AND ROWNUMBR BETWEEN @ROWNUMBR_RS AND @ROWNUMBR_RE ORDER BY REPORTID ASC, ROWTYPE ASC, ROWNUMBR ASC END ELSE BEGIN SELECT TOP 25  REPORTID, ROWNUMBR, TOTKNCNT, ROWTYPE, ROWSIZE, ROLUPFLG, ROWDESC, SUBSUDID, TYPCLBAL, CATNUMBR, PRTSIGN, PRTHEDER, CENTHEDR, ROWFTFAM, ROWFTSIZ, ROWSTYLE_1, ROWSTYLE_2, ROWSTYLE_3, ROWSTYLE_4, ROWSTYLE_5, ROWSTYLE_6, ROFMRKIN_1, ROFMRKIN_2, ROFMRKIN_3, ROFMRKIN_4, ROFMRKIN_5, ROFMRKIN_6, ROFMRKIN_7, ROFMRKIN_8, ROFMRKIN_9, ROFMRKIN_10, ROFMRKIN_11, ROFMRKIN_12, ROFMRKIN_13, ROFMRKIN_14, ROFMRKIN_15, ROFMRKIN_16, ROFMRKIN_17, ROFMRKIN_18, ROFMRKIN_19, ROFMRKIN_20, ROFMRKIN_21, ROFMRKIN_22, ROFMRKIN_23, ROFMRKIN_24, ROFMRKIN_25, ROFMRKIN_26, ROFMRKIN_27, ROFMRKIN_28, ROFMRKIN_29, ROFMRKIN_30, ROFMRKIN_31, ROFMRKIN_32, ROFMRKIN_33, ROFMRKIN_34, ROFMRKIN_35, ROFMRKIN_36, ROFMRKIN_37, ROFMRKIN_38, ROFMRKIN_39, ROFMRKIN_40, CFLOSCTN, RWEXPERR, NOTEINDX, STTACCT_1, STTACCT_2, STTACCT_3, STTACCT_4, ENDACCT_1, ENDACCT_2, ENDACCT_3, ENDACCT_4, DEX_ROW_ID FROM .AF40106 WHERE REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND ROWTYPE BETWEEN @ROWTYPE_RS AND @ROWTYPE_RE AND ROWNUMBR BETWEEN @ROWNUMBR_RS AND @ROWNUMBR_RE ORDER BY REPORTID ASC, ROWTYPE ASC, ROWNUMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_AF40106F_2] TO [DYNGRP]
GO
