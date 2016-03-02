SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000101SI] (@PP_Module smallint, @PP_Record_Type smallint, @PP_Document_Number char(21), @PP_Sequencer int, @PPOFFSEQ int, @VCHRNMBR char(21), @CNTRLTYP smallint, @DSTSQNUM int, @DSCRIPTN char(31), @GLPOSTDT datetime, @TRXAMNT numeric(19,5), @JRNENTRY int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP000101 (PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, VCHRNMBR, CNTRLTYP, DSTSQNUM, DSCRIPTN, GLPOSTDT, TRXAMNT, JRNENTRY) VALUES ( @PP_Module, @PP_Record_Type, @PP_Document_Number, @PP_Sequencer, @PPOFFSEQ, @VCHRNMBR, @CNTRLTYP, @DSTSQNUM, @DSCRIPTN, @GLPOSTDT, @TRXAMNT, @JRNENTRY) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000101SI] TO [DYNGRP]
GO
