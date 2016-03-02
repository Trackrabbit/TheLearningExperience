SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP100100SS_2] (@PP_Document_Number char(21), @PP_Module smallint, @PP_Record_Type smallint, @PP_Sequencer int, @PPOFFSEQ int) AS  set nocount on SELECT TOP 1  PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, STRTNGDT, ENDINGDT, OFFACCT, ACTINDX, PP_Deferred_BC_Index, PP_Deferrals_Transfer_In, PP_Recognition_Index, TRXAMNT, USERID, REFRENCE, IntegerValue, PP_Calculation_Method, PP_Miscellaneous_Periods, VOIDSTTS, CUSTVNDR, DOCDATE, NOTEINDX, JRNENTRY, DEX_ROW_ID FROM .PP100100 WHERE PP_Document_Number = @PP_Document_Number AND PP_Module = @PP_Module AND PP_Record_Type = @PP_Record_Type AND PP_Sequencer = @PP_Sequencer AND PPOFFSEQ = @PPOFFSEQ ORDER BY PP_Document_Number ASC, PP_Module ASC, PP_Record_Type ASC, PP_Sequencer ASC, PPOFFSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP100100SS_2] TO [DYNGRP]
GO
