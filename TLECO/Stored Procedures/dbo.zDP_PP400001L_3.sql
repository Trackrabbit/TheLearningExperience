SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP400001L_3] (@BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @PP_Saved_Status_RS tinyint, @PP_Module_RS smallint, @PP_Record_Type_RS smallint, @PP_Document_Number_RS char(21), @PP_Sequencer_RS int, @PPOFFSEQ_RS int, @BCHSOURC_RE char(15), @BACHNUMB_RE char(15), @PP_Saved_Status_RE tinyint, @PP_Module_RE smallint, @PP_Record_Type_RE smallint, @PP_Document_Number_RE char(21), @PP_Sequencer_RE int, @PPOFFSEQ_RE int) AS  set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, SERIES, PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, TRXAMNT, PP_Saved_Status, DEX_ROW_ID FROM .PP400001 ORDER BY BCHSOURC DESC, BACHNUMB DESC, PP_Saved_Status DESC, PP_Module DESC, PP_Record_Type DESC, PP_Document_Number DESC, PP_Sequencer DESC, PPOFFSEQ DESC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, SERIES, PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, TRXAMNT, PP_Saved_Status, DEX_ROW_ID FROM .PP400001 WHERE BCHSOURC = @BCHSOURC_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND PP_Saved_Status BETWEEN @PP_Saved_Status_RS AND @PP_Saved_Status_RE AND PP_Module BETWEEN @PP_Module_RS AND @PP_Module_RE AND PP_Record_Type BETWEEN @PP_Record_Type_RS AND @PP_Record_Type_RE AND PP_Document_Number BETWEEN @PP_Document_Number_RS AND @PP_Document_Number_RE AND PP_Sequencer BETWEEN @PP_Sequencer_RS AND @PP_Sequencer_RE AND PPOFFSEQ BETWEEN @PPOFFSEQ_RS AND @PPOFFSEQ_RE ORDER BY BCHSOURC DESC, BACHNUMB DESC, PP_Saved_Status DESC, PP_Module DESC, PP_Record_Type DESC, PP_Document_Number DESC, PP_Sequencer DESC, PPOFFSEQ DESC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, SERIES, PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, TRXAMNT, PP_Saved_Status, DEX_ROW_ID FROM .PP400001 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND PP_Saved_Status BETWEEN @PP_Saved_Status_RS AND @PP_Saved_Status_RE AND PP_Module BETWEEN @PP_Module_RS AND @PP_Module_RE AND PP_Record_Type BETWEEN @PP_Record_Type_RS AND @PP_Record_Type_RE AND PP_Document_Number BETWEEN @PP_Document_Number_RS AND @PP_Document_Number_RE AND PP_Sequencer BETWEEN @PP_Sequencer_RS AND @PP_Sequencer_RE AND PPOFFSEQ BETWEEN @PPOFFSEQ_RS AND @PPOFFSEQ_RE ORDER BY BCHSOURC DESC, BACHNUMB DESC, PP_Saved_Status DESC, PP_Module DESC, PP_Record_Type DESC, PP_Document_Number DESC, PP_Sequencer DESC, PPOFFSEQ DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP400001L_3] TO [DYNGRP]
GO
