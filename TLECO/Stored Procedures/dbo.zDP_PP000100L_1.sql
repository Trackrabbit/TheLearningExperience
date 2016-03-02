SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000100L_1] (@PP_Module_RS smallint, @PP_Record_Type_RS smallint, @PP_Document_Number_RS char(21), @PP_Sequencer_RS int, @PPOFFSEQ_RS int, @PP_Module_RE smallint, @PP_Record_Type_RE smallint, @PP_Document_Number_RE char(21), @PP_Sequencer_RE int, @PPOFFSEQ_RE int) AS  set nocount on IF @PP_Module_RS IS NULL BEGIN SELECT TOP 25  PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, STRTNGDT, ENDINGDT, OFFACCT, ACTINDX, PP_Deferred_BC_Index, PP_Deferrals_Transfer_In, PP_Recognition_Index, TRXAMNT, REFRENCE, USERID, POSTING, IntegerValue, PP_Calculation_Method, PP_Miscellaneous_Periods, NOTEINDX, JRNENTRY, DEX_ROW_ID FROM .PP000100 ORDER BY PP_Module DESC, PP_Record_Type DESC, PP_Document_Number DESC, PP_Sequencer DESC, PPOFFSEQ DESC END ELSE IF @PP_Module_RS = @PP_Module_RE BEGIN SELECT TOP 25  PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, STRTNGDT, ENDINGDT, OFFACCT, ACTINDX, PP_Deferred_BC_Index, PP_Deferrals_Transfer_In, PP_Recognition_Index, TRXAMNT, REFRENCE, USERID, POSTING, IntegerValue, PP_Calculation_Method, PP_Miscellaneous_Periods, NOTEINDX, JRNENTRY, DEX_ROW_ID FROM .PP000100 WHERE PP_Module = @PP_Module_RS AND PP_Record_Type BETWEEN @PP_Record_Type_RS AND @PP_Record_Type_RE AND PP_Document_Number BETWEEN @PP_Document_Number_RS AND @PP_Document_Number_RE AND PP_Sequencer BETWEEN @PP_Sequencer_RS AND @PP_Sequencer_RE AND PPOFFSEQ BETWEEN @PPOFFSEQ_RS AND @PPOFFSEQ_RE ORDER BY PP_Module DESC, PP_Record_Type DESC, PP_Document_Number DESC, PP_Sequencer DESC, PPOFFSEQ DESC END ELSE BEGIN SELECT TOP 25  PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, STRTNGDT, ENDINGDT, OFFACCT, ACTINDX, PP_Deferred_BC_Index, PP_Deferrals_Transfer_In, PP_Recognition_Index, TRXAMNT, REFRENCE, USERID, POSTING, IntegerValue, PP_Calculation_Method, PP_Miscellaneous_Periods, NOTEINDX, JRNENTRY, DEX_ROW_ID FROM .PP000100 WHERE PP_Module BETWEEN @PP_Module_RS AND @PP_Module_RE AND PP_Record_Type BETWEEN @PP_Record_Type_RS AND @PP_Record_Type_RE AND PP_Document_Number BETWEEN @PP_Document_Number_RS AND @PP_Document_Number_RE AND PP_Sequencer BETWEEN @PP_Sequencer_RS AND @PP_Sequencer_RE AND PPOFFSEQ BETWEEN @PPOFFSEQ_RS AND @PPOFFSEQ_RE ORDER BY PP_Module DESC, PP_Record_Type DESC, PP_Document_Number DESC, PP_Sequencer DESC, PPOFFSEQ DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000100L_1] TO [DYNGRP]
GO