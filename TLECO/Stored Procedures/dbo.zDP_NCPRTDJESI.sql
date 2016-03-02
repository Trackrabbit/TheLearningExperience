SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCPRTDJESI] (@ACCTTYPE smallint, @ORDOCNUM char(21), @SEQNUMBR int, @CMPNYNAM char(65), @INTERID char(5), @JRNENTRY int, @TRXDATE datetime, @ORTRXSRC char(13), @SOURCDOC char(11), @AUDITTRAIL char(13), @BACHNUMB char(15), @REFRENCE char(31), @CURNCYID char(15), @Original_JE int, @ACTINDX int, @ACTDESCR char(51), @ACTNUMBR_1 char(5), @ACTNUMBR_2 char(5), @ACTNUMBR_3 char(3), @ACTNUMBR_4 char(3), @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCPRTDJE (ACCTTYPE, ORDOCNUM, SEQNUMBR, CMPNYNAM, INTERID, JRNENTRY, TRXDATE, ORTRXSRC, SOURCDOC, AUDITTRAIL, BACHNUMB, REFRENCE, CURNCYID, Original_JE, ACTINDX, ACTDESCR, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEBITAMT, CRDTAMNT) VALUES ( @ACCTTYPE, @ORDOCNUM, @SEQNUMBR, @CMPNYNAM, @INTERID, @JRNENTRY, @TRXDATE, @ORTRXSRC, @SOURCDOC, @AUDITTRAIL, @BACHNUMB, @REFRENCE, @CURNCYID, @Original_JE, @ACTINDX, @ACTDESCR, @ACTNUMBR_1, @ACTNUMBR_2, @ACTNUMBR_3, @ACTNUMBR_4, @DEBITAMT, @CRDTAMNT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPRTDJESI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPRTDJESI] TO [public]
GO