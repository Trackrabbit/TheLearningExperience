SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04000L_1] (@USERID_RS char(15), @CMPNYNAM_RS char(65), @BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @USERID_RE char(15), @CMPNYNAM_RE char(65), @BCHSOURC_RE char(15), @BACHNUMB_RE char(15)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CMPNYNAM, BCHSOURC, BACHNUMB, PRRPTFAR_1, PRRPTFAR_2, PRRPTFAR_3, PRRPTFAR_4, PRRPTFAR_5, PRRPTFAR_6, PRTSCRAR_1, PRTSCRAR_2, PRTSCRAR_3, PRTSCRAR_4, PRTSCRAR_5, PRTSCRAR_6, PRTPRARR_1, PRTPRARR_2, PRTPRARR_3, PRTPRARR_4, PRTPRARR_5, PRTPRARR_6, EXPTFTAR_1, EXPTFTAR_2, EXPTFTAR_3, EXPTFTAR_4, EXPTFTAR_5, EXPTFTAR_6, FEXPNMAR_1, FEXPNMAR_2, FEXPNMAR_3, FEXPNMAR_4, FEXPNMAR_5, FEXPNMAR_6, DEX_ROW_ID FROM .SY04000 ORDER BY USERID DESC, CMPNYNAM DESC, BCHSOURC DESC, BACHNUMB DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CMPNYNAM, BCHSOURC, BACHNUMB, PRRPTFAR_1, PRRPTFAR_2, PRRPTFAR_3, PRRPTFAR_4, PRRPTFAR_5, PRRPTFAR_6, PRTSCRAR_1, PRTSCRAR_2, PRTSCRAR_3, PRTSCRAR_4, PRTSCRAR_5, PRTSCRAR_6, PRTPRARR_1, PRTPRARR_2, PRTPRARR_3, PRTPRARR_4, PRTPRARR_5, PRTPRARR_6, EXPTFTAR_1, EXPTFTAR_2, EXPTFTAR_3, EXPTFTAR_4, EXPTFTAR_5, EXPTFTAR_6, FEXPNMAR_1, FEXPNMAR_2, FEXPNMAR_3, FEXPNMAR_4, FEXPNMAR_5, FEXPNMAR_6, DEX_ROW_ID FROM .SY04000 WHERE USERID = @USERID_RS AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE ORDER BY USERID DESC, CMPNYNAM DESC, BCHSOURC DESC, BACHNUMB DESC END ELSE BEGIN SELECT TOP 25  USERID, CMPNYNAM, BCHSOURC, BACHNUMB, PRRPTFAR_1, PRRPTFAR_2, PRRPTFAR_3, PRRPTFAR_4, PRRPTFAR_5, PRRPTFAR_6, PRTSCRAR_1, PRTSCRAR_2, PRTSCRAR_3, PRTSCRAR_4, PRTSCRAR_5, PRTSCRAR_6, PRTPRARR_1, PRTPRARR_2, PRTPRARR_3, PRTPRARR_4, PRTPRARR_5, PRTPRARR_6, EXPTFTAR_1, EXPTFTAR_2, EXPTFTAR_3, EXPTFTAR_4, EXPTFTAR_5, EXPTFTAR_6, FEXPNMAR_1, FEXPNMAR_2, FEXPNMAR_3, FEXPNMAR_4, FEXPNMAR_5, FEXPNMAR_6, DEX_ROW_ID FROM .SY04000 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE ORDER BY USERID DESC, CMPNYNAM DESC, BCHSOURC DESC, BACHNUMB DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04000L_1] TO [DYNGRP]
GO
