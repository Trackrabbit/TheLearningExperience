SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000012SI] (@PP_Module smallint, @PP_Record_Type smallint, @PP_Document_Number char(21), @PPOFFSEQ int, @PP_Sequencer int, @DISTTYPE smallint, @PP_Profile_Name char(21), @OFFINDX int, @ACTINDX int, @PP_Deferred_BC_Index int, @PP_Deferrals_Transfer_In int, @PP_Recognition_Index int, @PP_Calculation_Method smallint, @STRTNGDT datetime, @ENDINGDT datetime, @NUMOFPER smallint, @NOTEINDX numeric(19,5), @PP_Overwrite_Original_Di tinyint, @PP_Miscellaneous_Periods smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP000012 (PP_Module, PP_Record_Type, PP_Document_Number, PPOFFSEQ, PP_Sequencer, DISTTYPE, PP_Profile_Name, OFFINDX, ACTINDX, PP_Deferred_BC_Index, PP_Deferrals_Transfer_In, PP_Recognition_Index, PP_Calculation_Method, STRTNGDT, ENDINGDT, NUMOFPER, NOTEINDX, PP_Overwrite_Original_Di, PP_Miscellaneous_Periods) VALUES ( @PP_Module, @PP_Record_Type, @PP_Document_Number, @PPOFFSEQ, @PP_Sequencer, @DISTTYPE, @PP_Profile_Name, @OFFINDX, @ACTINDX, @PP_Deferred_BC_Index, @PP_Deferrals_Transfer_In, @PP_Recognition_Index, @PP_Calculation_Method, @STRTNGDT, @ENDINGDT, @NUMOFPER, @NOTEINDX, @PP_Overwrite_Original_Di, @PP_Miscellaneous_Periods) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000012SI] TO [DYNGRP]
GO
