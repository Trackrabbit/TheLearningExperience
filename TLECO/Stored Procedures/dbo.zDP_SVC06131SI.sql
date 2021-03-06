SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06131SI] (@WORECTYPE smallint, @WORKORDNUM char(11), @LINITMTYP char(3), @LNITMSEQ int, @SEQNUMBR int, @SVC_Distribution_Type smallint, @DistRef char(31), @ACTINDX int, @DEBITAMT numeric(19,5), @ORDBTAMT numeric(19,5), @CRDTAMNT numeric(19,5), @ORCRDAMT numeric(19,5), @CURRNIDX smallint, @TRXSORCE char(13), @POSTED tinyint, @POSTEDDT datetime, @CMPNTSEQ int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC06131 (WORECTYPE, WORKORDNUM, LINITMTYP, LNITMSEQ, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ) VALUES ( @WORECTYPE, @WORKORDNUM, @LINITMTYP, @LNITMSEQ, @SEQNUMBR, @SVC_Distribution_Type, @DistRef, @ACTINDX, @DEBITAMT, @ORDBTAMT, @CRDTAMNT, @ORCRDAMT, @CURRNIDX, @TRXSORCE, @POSTED, @POSTEDDT, @CMPNTSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06131SI] TO [DYNGRP]
GO
