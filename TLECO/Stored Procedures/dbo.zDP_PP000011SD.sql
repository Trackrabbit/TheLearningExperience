SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000011SD] (@PP_Module smallint, @PP_Record_Type smallint, @PP_Document_Number char(21), @PP_Sequencer int, @PPOFFSEQ int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PP000011 WHERE PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ = @PPOFFSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PP000011 WHERE PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ = @PPOFFSEQ SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000011SD] TO [DYNGRP]
GO
