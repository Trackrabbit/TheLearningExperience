SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP100100SI] (@PP_Module smallint, @PP_Record_Type smallint, @PP_Document_Number char(21), @PP_Sequencer int, @PPOFFSEQ int, @VCHRNMBR char(21), @CNTRLTYP smallint, @DSTSQNUM int, @STRTNGDT datetime, @ENDINGDT datetime, @OFFACCT int, @ACTINDX int, @PP_Deferred_BC_Index int, @PP_Deferrals_Transfer_In int, @PP_Recognition_Index int, @TRXAMNT numeric(19,5), @USERID char(15), @REFRENCE char(31), @IntegerValue smallint, @PP_Calculation_Method smallint, @PP_Miscellaneous_Periods smallint, @VOIDSTTS smallint, @CUSTVNDR char(15), @DOCDATE datetime, @NOTEINDX numeric(19,5), @JRNENTRY int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP100100 (PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, STRTNGDT, ENDINGDT, OFFACCT, ACTINDX, PP_Deferred_BC_Index, PP_Deferrals_Transfer_In, PP_Recognition_Index, TRXAMNT, USERID, REFRENCE, IntegerValue, PP_Calculation_Method, PP_Miscellaneous_Periods, VOIDSTTS, CUSTVNDR, DOCDATE, NOTEINDX, JRNENTRY) VALUES ( @PP_Module, @PP_Record_Type, @PP_Document_Number, @PP_Sequencer, @PPOFFSEQ, @VCHRNMBR, @CNTRLTYP, @DSTSQNUM, @STRTNGDT, @ENDINGDT, @OFFACCT, @ACTINDX, @PP_Deferred_BC_Index, @PP_Deferrals_Transfer_In, @PP_Recognition_Index, @TRXAMNT, @USERID, @REFRENCE, @IntegerValue, @PP_Calculation_Method, @PP_Miscellaneous_Periods, @VOIDSTTS, @CUSTVNDR, @DOCDATE, @NOTEINDX, @JRNENTRY) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP100100SI] TO [DYNGRP]
GO
