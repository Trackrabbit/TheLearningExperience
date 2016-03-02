SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000101N_1] (@BS int, @PP_Module smallint, @PP_Record_Type smallint, @PP_Document_Number char(21), @PP_Sequencer int, @PPOFFSEQ int, @GLPOSTDT datetime, @PP_Module_RS smallint, @PP_Record_Type_RS smallint, @PP_Document_Number_RS char(21), @PP_Sequencer_RS int, @PPOFFSEQ_RS int, @GLPOSTDT_RS datetime, @PP_Module_RE smallint, @PP_Record_Type_RE smallint, @PP_Document_Number_RE char(21), @PP_Sequencer_RE int, @PPOFFSEQ_RE int, @GLPOSTDT_RE datetime) AS  set nocount on IF @PP_Module_RS IS NULL BEGIN SELECT TOP 25  PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, DSCRIPTN, GLPOSTDT, TRXAMNT, JRNENTRY, DEX_ROW_ID FROM .PP000101 WHERE ( PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ = @PPOFFSEQ AND GLPOSTDT > @GLPOSTDT OR PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ > @PPOFFSEQ OR PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer > @PP_Sequencer OR PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number > @PP_Document_Number OR PP_Module = @PP_Module AND PP_Record_Type > @PP_Record_Type OR PP_Module > @PP_Module ) ORDER BY PP_Module ASC, PP_Record_Type ASC, PP_Document_Number ASC, PP_Sequencer ASC, PPOFFSEQ ASC, GLPOSTDT ASC END ELSE IF @PP_Module_RS = @PP_Module_RE BEGIN SELECT TOP 25  PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, DSCRIPTN, GLPOSTDT, TRXAMNT, JRNENTRY, DEX_ROW_ID FROM .PP000101 WHERE PP_Module = @PP_Module_RS AND PP_Record_Type BETWEEN @PP_Record_Type_RS AND @PP_Record_Type_RE AND PP_Document_Number BETWEEN @PP_Document_Number_RS AND @PP_Document_Number_RE AND PP_Sequencer BETWEEN @PP_Sequencer_RS AND @PP_Sequencer_RE AND PPOFFSEQ BETWEEN @PPOFFSEQ_RS AND @PPOFFSEQ_RE AND GLPOSTDT BETWEEN @GLPOSTDT_RS AND @GLPOSTDT_RE AND ( PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ = @PPOFFSEQ AND GLPOSTDT > @GLPOSTDT OR PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ > @PPOFFSEQ OR PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer > @PP_Sequencer OR PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number > @PP_Document_Number OR PP_Module = @PP_Module AND PP_Record_Type > @PP_Record_Type OR PP_Module > @PP_Module ) ORDER BY PP_Module ASC, PP_Record_Type ASC, PP_Document_Number ASC, PP_Sequencer ASC, PPOFFSEQ ASC, GLPOSTDT ASC END ELSE BEGIN SELECT TOP 25  PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, DSCRIPTN, GLPOSTDT, TRXAMNT, JRNENTRY, DEX_ROW_ID FROM .PP000101 WHERE PP_Module BETWEEN @PP_Module_RS AND @PP_Module_RE AND PP_Record_Type BETWEEN @PP_Record_Type_RS AND @PP_Record_Type_RE AND PP_Document_Number BETWEEN @PP_Document_Number_RS AND @PP_Document_Number_RE AND PP_Sequencer BETWEEN @PP_Sequencer_RS AND @PP_Sequencer_RE AND PPOFFSEQ BETWEEN @PPOFFSEQ_RS AND @PPOFFSEQ_RE AND GLPOSTDT BETWEEN @GLPOSTDT_RS AND @GLPOSTDT_RE AND ( PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ = @PPOFFSEQ AND GLPOSTDT > @GLPOSTDT OR PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ > @PPOFFSEQ OR PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number = @PP_Document_Number AND PP_Sequencer > @PP_Sequencer OR PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Document_Number > @PP_Document_Number OR PP_Module = @PP_Module AND PP_Record_Type > @PP_Record_Type OR PP_Module > @PP_Module ) ORDER BY PP_Module ASC, PP_Record_Type ASC, PP_Document_Number ASC, PP_Sequencer ASC, PPOFFSEQ ASC, GLPOSTDT ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000101N_1] TO [DYNGRP]
GO
