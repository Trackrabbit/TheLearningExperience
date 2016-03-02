SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000042SD] (@PP_Module smallint, @PP_Record_Type smallint, @PPOFFSEQ int, @PP_Sequencer int, @PP_Document_Number char(21), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PP000042 WHERE PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PPOFFSEQ = @PPOFFSEQ AND PP_Sequencer = @PP_Sequencer AND PP_Document_Number = @PP_Document_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PP000042 WHERE PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PPOFFSEQ = @PPOFFSEQ AND PP_Sequencer = @PP_Sequencer AND PP_Document_Number = @PP_Document_Number SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000042SD] TO [DYNGRP]
GO
