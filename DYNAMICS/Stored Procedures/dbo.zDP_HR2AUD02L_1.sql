SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2AUD02L_1] (@MYSTERYFORMKEY_I_RS smallint, @MYSTERYFORMKEY_I_RE smallint) AS  set nocount on IF @MYSTERYFORMKEY_I_RS IS NULL BEGIN SELECT TOP 25  MYSTERYFORMKEY_I, MYSTERYWINDOWNAME_I, MSTRINGLABEL_I_1, MSTRINGLABEL_I_2, MSTRINGLABEL_I_3, MSTRINGLABEL_I_4, MSTRINGLABEL_I_5, MSTRINGCHECK_I_1, MSTRINGCHECK_I_2, MSTRINGCHECK_I_3, MSTRINGCHECK_I_4, MSTRINGCHECK_I_5, MLINTLABEL_I_1, MLINTLABEL_I_2, MLINTLABEL_I_3, MLINTLABEL_I_4, MLINTLABEL_I_5, MLINTCHECK_I_1, MLINTCHECK_I_2, MLINTCHECK_I_3, MLINTCHECK_I_4, MLINTCHECK_I_5, MDLRLABEL_I_1, MDLRLABEL_I_2, MDLRLABEL_I_3, MDLRLABEL_I_4, MDLRLABEL_I_5, MDLRCHECK_I_1, MDLRCHECK_I_2, MDLRCHECK_I_3, MDLRCHECK_I_4, MDLRCHECK_I_5, MCHECKLABEL_I_1, MCHECKLABEL_I_2, MCHECKLABEL_I_3, MCHECKLABEL_I_4, MCHECKLABEL_I_5, MCHECKLABEL_I_6, MCHECKLABEL_I_7, MCHECKLABEL_I_8, MCHECKLABEL_I_9, MCHECKLABEL_I_10, MCHECKCHECK_I_1, MCHECKCHECK_I_2, MCHECKCHECK_I_3, MCHECKCHECK_I_4, MCHECKCHECK_I_5, MCHECKCHECK_I_6, MCHECKCHECK_I_7, MCHECKCHECK_I_8, MCHECKCHECK_I_9, MCHECKCHECK_I_10, MDATELABEL_I_1, MDATELABEL_I_2, MDATELABEL_I_3, MDATELABEL_I_4, MDATELABEL_I_5, MDATECHECK_I_1, MDATECHECK_I_2, MDATECHECK_I_3, MDATECHECK_I_4, MDATECHECK_I_5, MTIMELABEL_I_1, MTIMELABEL_I_2, MTIMELABEL_I_3, MTIMELABEL_I_4, MTIMELABEL_I_5, MTIMECHECK_I_1, MTIMECHECK_I_2, MTIMECHECK_I_3, MTIMECHECK_I_4, MTIMECHECK_I_5, MTEXT1LABEL_I, MTEXT1CHECK_I, MTEXT2LABEL_I, MTEXT2CHECK_I, MMULTIRECORD_I, DEX_ROW_ID FROM .HR2AUD02 ORDER BY MYSTERYFORMKEY_I DESC END ELSE IF @MYSTERYFORMKEY_I_RS = @MYSTERYFORMKEY_I_RE BEGIN SELECT TOP 25  MYSTERYFORMKEY_I, MYSTERYWINDOWNAME_I, MSTRINGLABEL_I_1, MSTRINGLABEL_I_2, MSTRINGLABEL_I_3, MSTRINGLABEL_I_4, MSTRINGLABEL_I_5, MSTRINGCHECK_I_1, MSTRINGCHECK_I_2, MSTRINGCHECK_I_3, MSTRINGCHECK_I_4, MSTRINGCHECK_I_5, MLINTLABEL_I_1, MLINTLABEL_I_2, MLINTLABEL_I_3, MLINTLABEL_I_4, MLINTLABEL_I_5, MLINTCHECK_I_1, MLINTCHECK_I_2, MLINTCHECK_I_3, MLINTCHECK_I_4, MLINTCHECK_I_5, MDLRLABEL_I_1, MDLRLABEL_I_2, MDLRLABEL_I_3, MDLRLABEL_I_4, MDLRLABEL_I_5, MDLRCHECK_I_1, MDLRCHECK_I_2, MDLRCHECK_I_3, MDLRCHECK_I_4, MDLRCHECK_I_5, MCHECKLABEL_I_1, MCHECKLABEL_I_2, MCHECKLABEL_I_3, MCHECKLABEL_I_4, MCHECKLABEL_I_5, MCHECKLABEL_I_6, MCHECKLABEL_I_7, MCHECKLABEL_I_8, MCHECKLABEL_I_9, MCHECKLABEL_I_10, MCHECKCHECK_I_1, MCHECKCHECK_I_2, MCHECKCHECK_I_3, MCHECKCHECK_I_4, MCHECKCHECK_I_5, MCHECKCHECK_I_6, MCHECKCHECK_I_7, MCHECKCHECK_I_8, MCHECKCHECK_I_9, MCHECKCHECK_I_10, MDATELABEL_I_1, MDATELABEL_I_2, MDATELABEL_I_3, MDATELABEL_I_4, MDATELABEL_I_5, MDATECHECK_I_1, MDATECHECK_I_2, MDATECHECK_I_3, MDATECHECK_I_4, MDATECHECK_I_5, MTIMELABEL_I_1, MTIMELABEL_I_2, MTIMELABEL_I_3, MTIMELABEL_I_4, MTIMELABEL_I_5, MTIMECHECK_I_1, MTIMECHECK_I_2, MTIMECHECK_I_3, MTIMECHECK_I_4, MTIMECHECK_I_5, MTEXT1LABEL_I, MTEXT1CHECK_I, MTEXT2LABEL_I, MTEXT2CHECK_I, MMULTIRECORD_I, DEX_ROW_ID FROM .HR2AUD02 WHERE MYSTERYFORMKEY_I = @MYSTERYFORMKEY_I_RS ORDER BY MYSTERYFORMKEY_I DESC END ELSE BEGIN SELECT TOP 25  MYSTERYFORMKEY_I, MYSTERYWINDOWNAME_I, MSTRINGLABEL_I_1, MSTRINGLABEL_I_2, MSTRINGLABEL_I_3, MSTRINGLABEL_I_4, MSTRINGLABEL_I_5, MSTRINGCHECK_I_1, MSTRINGCHECK_I_2, MSTRINGCHECK_I_3, MSTRINGCHECK_I_4, MSTRINGCHECK_I_5, MLINTLABEL_I_1, MLINTLABEL_I_2, MLINTLABEL_I_3, MLINTLABEL_I_4, MLINTLABEL_I_5, MLINTCHECK_I_1, MLINTCHECK_I_2, MLINTCHECK_I_3, MLINTCHECK_I_4, MLINTCHECK_I_5, MDLRLABEL_I_1, MDLRLABEL_I_2, MDLRLABEL_I_3, MDLRLABEL_I_4, MDLRLABEL_I_5, MDLRCHECK_I_1, MDLRCHECK_I_2, MDLRCHECK_I_3, MDLRCHECK_I_4, MDLRCHECK_I_5, MCHECKLABEL_I_1, MCHECKLABEL_I_2, MCHECKLABEL_I_3, MCHECKLABEL_I_4, MCHECKLABEL_I_5, MCHECKLABEL_I_6, MCHECKLABEL_I_7, MCHECKLABEL_I_8, MCHECKLABEL_I_9, MCHECKLABEL_I_10, MCHECKCHECK_I_1, MCHECKCHECK_I_2, MCHECKCHECK_I_3, MCHECKCHECK_I_4, MCHECKCHECK_I_5, MCHECKCHECK_I_6, MCHECKCHECK_I_7, MCHECKCHECK_I_8, MCHECKCHECK_I_9, MCHECKCHECK_I_10, MDATELABEL_I_1, MDATELABEL_I_2, MDATELABEL_I_3, MDATELABEL_I_4, MDATELABEL_I_5, MDATECHECK_I_1, MDATECHECK_I_2, MDATECHECK_I_3, MDATECHECK_I_4, MDATECHECK_I_5, MTIMELABEL_I_1, MTIMELABEL_I_2, MTIMELABEL_I_3, MTIMELABEL_I_4, MTIMELABEL_I_5, MTIMECHECK_I_1, MTIMECHECK_I_2, MTIMECHECK_I_3, MTIMECHECK_I_4, MTIMECHECK_I_5, MTEXT1LABEL_I, MTEXT1CHECK_I, MTEXT2LABEL_I, MTEXT2CHECK_I, MMULTIRECORD_I, DEX_ROW_ID FROM .HR2AUD02 WHERE MYSTERYFORMKEY_I BETWEEN @MYSTERYFORMKEY_I_RS AND @MYSTERYFORMKEY_I_RE ORDER BY MYSTERYFORMKEY_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2AUD02L_1] TO [DYNGRP]
GO
