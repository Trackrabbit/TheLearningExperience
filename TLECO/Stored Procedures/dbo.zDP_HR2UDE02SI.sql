SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2UDE02SI] (@MYSTERYFORMKEY_I smallint, @MYSTERYWINDOWNAME_I char(51), @MSTRINGLABEL_I_1 char(15), @MSTRINGLABEL_I_2 char(15), @MSTRINGLABEL_I_3 char(15), @MSTRINGLABEL_I_4 char(15), @MSTRINGLABEL_I_5 char(15), @MSTRINGCHECK_I_1 tinyint, @MSTRINGCHECK_I_2 tinyint, @MSTRINGCHECK_I_3 tinyint, @MSTRINGCHECK_I_4 tinyint, @MSTRINGCHECK_I_5 tinyint, @MLINTLABEL_I_1 char(15), @MLINTLABEL_I_2 char(15), @MLINTLABEL_I_3 char(15), @MLINTLABEL_I_4 char(15), @MLINTLABEL_I_5 char(15), @MLINTCHECK_I_1 tinyint, @MLINTCHECK_I_2 tinyint, @MLINTCHECK_I_3 tinyint, @MLINTCHECK_I_4 tinyint, @MLINTCHECK_I_5 tinyint, @MDLRLABEL_I_1 char(15), @MDLRLABEL_I_2 char(15), @MDLRLABEL_I_3 char(15), @MDLRLABEL_I_4 char(15), @MDLRLABEL_I_5 char(15), @MDLRCHECK_I_1 tinyint, @MDLRCHECK_I_2 tinyint, @MDLRCHECK_I_3 tinyint, @MDLRCHECK_I_4 tinyint, @MDLRCHECK_I_5 tinyint, @MCHECKLABEL_I_1 char(15), @MCHECKLABEL_I_2 char(15), @MCHECKLABEL_I_3 char(15), @MCHECKLABEL_I_4 char(15), @MCHECKLABEL_I_5 char(15), @MCHECKLABEL_I_6 char(15), @MCHECKLABEL_I_7 char(15), @MCHECKLABEL_I_8 char(15), @MCHECKLABEL_I_9 char(15), @MCHECKLABEL_I_10 char(15), @MCHECKCHECK_I_1 tinyint, @MCHECKCHECK_I_2 tinyint, @MCHECKCHECK_I_3 tinyint, @MCHECKCHECK_I_4 tinyint, @MCHECKCHECK_I_5 tinyint, @MCHECKCHECK_I_6 tinyint, @MCHECKCHECK_I_7 tinyint, @MCHECKCHECK_I_8 tinyint, @MCHECKCHECK_I_9 tinyint, @MCHECKCHECK_I_10 tinyint, @MDATELABEL_I_1 char(15), @MDATELABEL_I_2 char(15), @MDATELABEL_I_3 char(15), @MDATELABEL_I_4 char(15), @MDATELABEL_I_5 char(15), @MDATECHECK_I_1 tinyint, @MDATECHECK_I_2 tinyint, @MDATECHECK_I_3 tinyint, @MDATECHECK_I_4 tinyint, @MDATECHECK_I_5 tinyint, @MTIMELABEL_I_1 char(15), @MTIMELABEL_I_2 char(15), @MTIMELABEL_I_3 char(15), @MTIMELABEL_I_4 char(15), @MTIMELABEL_I_5 char(15), @MTIMECHECK_I_1 tinyint, @MTIMECHECK_I_2 tinyint, @MTIMECHECK_I_3 tinyint, @MTIMECHECK_I_4 tinyint, @MTIMECHECK_I_5 tinyint, @MTEXT1LABEL_I char(31), @MTEXT1CHECK_I tinyint, @MTEXT2LABEL_I char(31), @MTEXT2CHECK_I tinyint, @MMULTIRECORD_I tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR2UDE02 (MYSTERYFORMKEY_I, MYSTERYWINDOWNAME_I, MSTRINGLABEL_I_1, MSTRINGLABEL_I_2, MSTRINGLABEL_I_3, MSTRINGLABEL_I_4, MSTRINGLABEL_I_5, MSTRINGCHECK_I_1, MSTRINGCHECK_I_2, MSTRINGCHECK_I_3, MSTRINGCHECK_I_4, MSTRINGCHECK_I_5, MLINTLABEL_I_1, MLINTLABEL_I_2, MLINTLABEL_I_3, MLINTLABEL_I_4, MLINTLABEL_I_5, MLINTCHECK_I_1, MLINTCHECK_I_2, MLINTCHECK_I_3, MLINTCHECK_I_4, MLINTCHECK_I_5, MDLRLABEL_I_1, MDLRLABEL_I_2, MDLRLABEL_I_3, MDLRLABEL_I_4, MDLRLABEL_I_5, MDLRCHECK_I_1, MDLRCHECK_I_2, MDLRCHECK_I_3, MDLRCHECK_I_4, MDLRCHECK_I_5, MCHECKLABEL_I_1, MCHECKLABEL_I_2, MCHECKLABEL_I_3, MCHECKLABEL_I_4, MCHECKLABEL_I_5, MCHECKLABEL_I_6, MCHECKLABEL_I_7, MCHECKLABEL_I_8, MCHECKLABEL_I_9, MCHECKLABEL_I_10, MCHECKCHECK_I_1, MCHECKCHECK_I_2, MCHECKCHECK_I_3, MCHECKCHECK_I_4, MCHECKCHECK_I_5, MCHECKCHECK_I_6, MCHECKCHECK_I_7, MCHECKCHECK_I_8, MCHECKCHECK_I_9, MCHECKCHECK_I_10, MDATELABEL_I_1, MDATELABEL_I_2, MDATELABEL_I_3, MDATELABEL_I_4, MDATELABEL_I_5, MDATECHECK_I_1, MDATECHECK_I_2, MDATECHECK_I_3, MDATECHECK_I_4, MDATECHECK_I_5, MTIMELABEL_I_1, MTIMELABEL_I_2, MTIMELABEL_I_3, MTIMELABEL_I_4, MTIMELABEL_I_5, MTIMECHECK_I_1, MTIMECHECK_I_2, MTIMECHECK_I_3, MTIMECHECK_I_4, MTIMECHECK_I_5, MTEXT1LABEL_I, MTEXT1CHECK_I, MTEXT2LABEL_I, MTEXT2CHECK_I, MMULTIRECORD_I) VALUES ( @MYSTERYFORMKEY_I, @MYSTERYWINDOWNAME_I, @MSTRINGLABEL_I_1, @MSTRINGLABEL_I_2, @MSTRINGLABEL_I_3, @MSTRINGLABEL_I_4, @MSTRINGLABEL_I_5, @MSTRINGCHECK_I_1, @MSTRINGCHECK_I_2, @MSTRINGCHECK_I_3, @MSTRINGCHECK_I_4, @MSTRINGCHECK_I_5, @MLINTLABEL_I_1, @MLINTLABEL_I_2, @MLINTLABEL_I_3, @MLINTLABEL_I_4, @MLINTLABEL_I_5, @MLINTCHECK_I_1, @MLINTCHECK_I_2, @MLINTCHECK_I_3, @MLINTCHECK_I_4, @MLINTCHECK_I_5, @MDLRLABEL_I_1, @MDLRLABEL_I_2, @MDLRLABEL_I_3, @MDLRLABEL_I_4, @MDLRLABEL_I_5, @MDLRCHECK_I_1, @MDLRCHECK_I_2, @MDLRCHECK_I_3, @MDLRCHECK_I_4, @MDLRCHECK_I_5, @MCHECKLABEL_I_1, @MCHECKLABEL_I_2, @MCHECKLABEL_I_3, @MCHECKLABEL_I_4, @MCHECKLABEL_I_5, @MCHECKLABEL_I_6, @MCHECKLABEL_I_7, @MCHECKLABEL_I_8, @MCHECKLABEL_I_9, @MCHECKLABEL_I_10, @MCHECKCHECK_I_1, @MCHECKCHECK_I_2, @MCHECKCHECK_I_3, @MCHECKCHECK_I_4, @MCHECKCHECK_I_5, @MCHECKCHECK_I_6, @MCHECKCHECK_I_7, @MCHECKCHECK_I_8, @MCHECKCHECK_I_9, @MCHECKCHECK_I_10, @MDATELABEL_I_1, @MDATELABEL_I_2, @MDATELABEL_I_3, @MDATELABEL_I_4, @MDATELABEL_I_5, @MDATECHECK_I_1, @MDATECHECK_I_2, @MDATECHECK_I_3, @MDATECHECK_I_4, @MDATECHECK_I_5, @MTIMELABEL_I_1, @MTIMELABEL_I_2, @MTIMELABEL_I_3, @MTIMELABEL_I_4, @MTIMELABEL_I_5, @MTIMECHECK_I_1, @MTIMECHECK_I_2, @MTIMECHECK_I_3, @MTIMECHECK_I_4, @MTIMECHECK_I_5, @MTEXT1LABEL_I, @MTEXT1CHECK_I, @MTEXT2LABEL_I, @MTEXT2CHECK_I, @MMULTIRECORD_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2UDE02SI] TO [DYNGRP]
GO
