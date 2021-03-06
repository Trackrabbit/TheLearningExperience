SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35030SI] (@Return_Record_Type smallint, @RETDOCID char(15), @LNSEQNBR numeric(19,5), @LINITMTYP char(3), @SEQNUMBR int, @SVC_Process_SEQ_Number numeric(19,5), @SVC_Distribution_Type smallint, @DistRef char(31), @ACTINDX int, @DEBITAMT numeric(19,5), @ORDBTAMT numeric(19,5), @CRDTAMNT numeric(19,5), @ORCRDAMT numeric(19,5), @CURRNIDX smallint, @TRXSORCE char(13), @POSTED tinyint, @POSTEDDT datetime, @CMPNTSEQ int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC35030 (Return_Record_Type, RETDOCID, LNSEQNBR, LINITMTYP, SEQNUMBR, SVC_Process_SEQ_Number, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ) VALUES ( @Return_Record_Type, @RETDOCID, @LNSEQNBR, @LINITMTYP, @SEQNUMBR, @SVC_Process_SEQ_Number, @SVC_Distribution_Type, @DistRef, @ACTINDX, @DEBITAMT, @ORDBTAMT, @CRDTAMNT, @ORCRDAMT, @CURRNIDX, @TRXSORCE, @POSTED, @POSTEDDT, @CMPNTSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35030SI] TO [DYNGRP]
GO
