SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP400001SS_2] (@PP_Module smallint, @PP_Record_Type smallint, @PP_Document_Number char(21), @PP_Sequencer int, @PPOFFSEQ int) AS  set nocount on SELECT TOP 1  BACHNUMB, BCHSOURC, SERIES, PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, TRXAMNT, PP_Saved_Status, DEX_ROW_ID FROM .PP400001 WHERE PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ = @PPOFFSEQ ORDER BY PP_Module ASC, PP_Record_Type ASC, PP_Document_Number ASC, PP_Sequencer ASC, PPOFFSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP400001SS_2] TO [DYNGRP]
GO
