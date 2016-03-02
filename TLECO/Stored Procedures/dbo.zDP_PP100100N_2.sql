SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP100100N_2] (@BS int, @PP_Document_Number char(21), @PP_Module smallint, @PP_Record_Type smallint, @PP_Sequencer int, @PPOFFSEQ int, @PP_Document_Number_RS char(21), @PP_Module_RS smallint, @PP_Record_Type_RS smallint, @PP_Sequencer_RS int, @PPOFFSEQ_RS int, @PP_Document_Number_RE char(21), @PP_Module_RE smallint, @PP_Record_Type_RE smallint, @PP_Sequencer_RE int, @PPOFFSEQ_RE int) AS  set nocount on IF @PP_Document_Number_RS IS NULL BEGIN SELECT TOP 25  PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, STRTNGDT, ENDINGDT, OFFACCT, ACTINDX, PP_Deferred_BC_Index, PP_Deferrals_Transfer_In, PP_Recognition_Index, TRXAMNT, USERID, REFRENCE, IntegerValue, PP_Calculation_Method, PP_Miscellaneous_Periods, VOIDSTTS, CUSTVNDR, DOCDATE, NOTEINDX, JRNENTRY, DEX_ROW_ID FROM .PP100100 WHERE ( PP_Document_Number = @PP_Document_Number AND PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ > @PPOFFSEQ OR PP_Document_Number = @PP_Document_Number AND PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Sequencer > @PP_Sequencer OR PP_Document_Number = @PP_Document_Number AND PP_Module = @PP_Module AND PP_Record_Type > @PP_Record_Type OR PP_Document_Number = @PP_Document_Number AND PP_Module > @PP_Module OR PP_Document_Number > @PP_Document_Number ) ORDER BY PP_Document_Number ASC, PP_Module ASC, PP_Record_Type ASC, PP_Sequencer ASC, PPOFFSEQ ASC END ELSE IF @PP_Document_Number_RS = @PP_Document_Number_RE BEGIN SELECT TOP 25  PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, STRTNGDT, ENDINGDT, OFFACCT, ACTINDX, PP_Deferred_BC_Index, PP_Deferrals_Transfer_In, PP_Recognition_Index, TRXAMNT, USERID, REFRENCE, IntegerValue, PP_Calculation_Method, PP_Miscellaneous_Periods, VOIDSTTS, CUSTVNDR, DOCDATE, NOTEINDX, JRNENTRY, DEX_ROW_ID FROM .PP100100 WHERE PP_Document_Number = @PP_Document_Number_RS AND PP_Module BETWEEN @PP_Module_RS AND @PP_Module_RE AND PP_Record_Type BETWEEN @PP_Record_Type_RS AND @PP_Record_Type_RE AND PP_Sequencer BETWEEN @PP_Sequencer_RS AND @PP_Sequencer_RE AND PPOFFSEQ BETWEEN @PPOFFSEQ_RS AND @PPOFFSEQ_RE AND ( PP_Document_Number = @PP_Document_Number AND PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ > @PPOFFSEQ OR PP_Document_Number = @PP_Document_Number AND PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Sequencer > @PP_Sequencer OR PP_Document_Number = @PP_Document_Number AND PP_Module = @PP_Module AND PP_Record_Type > @PP_Record_Type OR PP_Document_Number = @PP_Document_Number AND PP_Module > @PP_Module OR PP_Document_Number > @PP_Document_Number ) ORDER BY PP_Document_Number ASC, PP_Module ASC, PP_Record_Type ASC, PP_Sequencer ASC, PPOFFSEQ ASC END ELSE BEGIN SELECT TOP 25  PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, STRTNGDT, ENDINGDT, OFFACCT, ACTINDX, PP_Deferred_BC_Index, PP_Deferrals_Transfer_In, PP_Recognition_Index, TRXAMNT, USERID, REFRENCE, IntegerValue, PP_Calculation_Method, PP_Miscellaneous_Periods, VOIDSTTS, CUSTVNDR, DOCDATE, NOTEINDX, JRNENTRY, DEX_ROW_ID FROM .PP100100 WHERE PP_Document_Number BETWEEN @PP_Document_Number_RS AND @PP_Document_Number_RE AND PP_Module BETWEEN @PP_Module_RS AND @PP_Module_RE AND PP_Record_Type BETWEEN @PP_Record_Type_RS AND @PP_Record_Type_RE AND PP_Sequencer BETWEEN @PP_Sequencer_RS AND @PP_Sequencer_RE AND PPOFFSEQ BETWEEN @PPOFFSEQ_RS AND @PPOFFSEQ_RE AND ( PP_Document_Number = @PP_Document_Number AND PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ > @PPOFFSEQ OR PP_Document_Number = @PP_Document_Number AND PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Sequencer > @PP_Sequencer OR PP_Document_Number = @PP_Document_Number AND PP_Module = @PP_Module AND PP_Record_Type > @PP_Record_Type OR PP_Document_Number = @PP_Document_Number AND PP_Module > @PP_Module OR PP_Document_Number > @PP_Document_Number ) ORDER BY PP_Document_Number ASC, PP_Module ASC, PP_Record_Type ASC, PP_Sequencer ASC, PPOFFSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP100100N_2] TO [DYNGRP]
GO