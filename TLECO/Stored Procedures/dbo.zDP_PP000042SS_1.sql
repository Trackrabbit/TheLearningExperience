SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000042SS_1] (@PP_Module smallint, @PP_Record_Type smallint, @PPOFFSEQ int, @PP_Sequencer int, @PP_Document_Number char(21)) AS  set nocount on SELECT TOP 1  PP_Module, PP_Record_Type, PPOFFSEQ, PP_Sequencer, PP_Document_Number, PP_Profile_Name, DEX_ROW_ID FROM .PP000042 WHERE PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PPOFFSEQ = @PPOFFSEQ AND PP_Sequencer = @PP_Sequencer AND PP_Document_Number = @PP_Document_Number ORDER BY PP_Module ASC, PP_Record_Type ASC, PPOFFSEQ ASC, PP_Sequencer ASC, PP_Document_Number ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000042SS_1] TO [DYNGRP]
GO
