SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000101SS_1] (@PP_Module smallint, @PP_Record_Type smallint, @PP_Document_Number char(21), @PP_Sequencer int, @PPOFFSEQ int, @GLPOSTDT datetime) AS  set nocount on SELECT TOP 1  PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, DSCRIPTN, GLPOSTDT, TRXAMNT, JRNENTRY, DEX_ROW_ID FROM .PP000101 WHERE PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ = @PPOFFSEQ AND GLPOSTDT = @GLPOSTDT ORDER BY PP_Module ASC, PP_Record_Type ASC, PP_Document_Number ASC, PP_Sequencer ASC, PPOFFSEQ ASC, GLPOSTDT ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000101SS_1] TO [DYNGRP]
GO
