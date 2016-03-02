SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000011SS_1] (@PP_Module smallint, @PP_Record_Type smallint, @PP_Document_Number char(21), @PP_Sequencer int, @PPOFFSEQ int) AS  set nocount on SELECT TOP 1  PP_Module, PP_Record_Type, PP_Document_Number, PPOFFSEQ, PP_Sequencer, DISTTYPE, PP_Profile_Name, OFFINDX, ACTINDX, PP_Deferred_BC_Index, PP_Deferrals_Transfer_In, PP_Recognition_Index, PP_Calculation_Method, STRTNGDT, ENDINGDT, NUMOFPER, NOTEINDX, PP_Miscellaneous_Periods, DEX_ROW_ID FROM .PP000011 WHERE PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ = @PPOFFSEQ ORDER BY PP_Module ASC, PP_Record_Type ASC, PP_Document_Number ASC, PP_Sequencer ASC, PPOFFSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000011SS_1] TO [DYNGRP]
GO
