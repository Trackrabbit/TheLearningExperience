SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000042SI] (@PP_Module smallint, @PP_Record_Type smallint, @PPOFFSEQ int, @PP_Sequencer int, @PP_Document_Number char(21), @PP_Profile_Name char(21), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP000042 (PP_Module, PP_Record_Type, PPOFFSEQ, PP_Sequencer, PP_Document_Number, PP_Profile_Name) VALUES ( @PP_Module, @PP_Record_Type, @PPOFFSEQ, @PP_Sequencer, @PP_Document_Number, @PP_Profile_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000042SI] TO [DYNGRP]
GO
