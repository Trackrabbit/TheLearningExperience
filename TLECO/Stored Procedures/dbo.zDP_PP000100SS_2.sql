SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000100SS_2] (@USERID char(15), @PP_Module smallint) AS  set nocount on SELECT TOP 1  PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, STRTNGDT, ENDINGDT, OFFACCT, ACTINDX, PP_Deferred_BC_Index, PP_Deferrals_Transfer_In, PP_Recognition_Index, TRXAMNT, REFRENCE, USERID, POSTING, IntegerValue, PP_Calculation_Method, PP_Miscellaneous_Periods, NOTEINDX, JRNENTRY, DEX_ROW_ID FROM .PP000100 WHERE USERID = @USERID AND PP_Module = @PP_Module ORDER BY USERID ASC, PP_Module ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000100SS_2] TO [DYNGRP]
GO
