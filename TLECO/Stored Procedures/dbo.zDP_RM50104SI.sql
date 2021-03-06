SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM50104SI] (@CUSTNMBR char(15), @DSCRIPTN char(31), @CURNCYID char(15), @CURRNIDX smallint, @DOCDATE datetime, @DOCNUMBR char(21), @DOCPRFIX char(3), @RMDTYPAL smallint, @DOCDESCR char(31), @PORDNMBR char(21), @DOCAMNT numeric(19,5), @Credit_Amount_String_30 char(31), @DEBITAMT numeric(19,5), @BALNCDUE numeric(19,5), @AGNGBUKT smallint, @CRDTAMNT numeric(19,5), @CHCUMNUM char(15), @CHCUMNAM char(65), @CURTRXAM numeric(19,5), @AMNTPAID numeric(19,5), @RNNMBR int, @SEQNUMBR int, @USERID char(15), @Process_Index int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .RM50104 (CUSTNMBR, DSCRIPTN, CURNCYID, CURRNIDX, DOCDATE, DOCNUMBR, DOCPRFIX, RMDTYPAL, DOCDESCR, PORDNMBR, DOCAMNT, Credit_Amount_String_30, DEBITAMT, BALNCDUE, AGNGBUKT, CRDTAMNT, CHCUMNUM, CHCUMNAM, CURTRXAM, AMNTPAID, RNNMBR, SEQNUMBR, USERID, Process_Index) VALUES ( @CUSTNMBR, @DSCRIPTN, @CURNCYID, @CURRNIDX, @DOCDATE, @DOCNUMBR, @DOCPRFIX, @RMDTYPAL, @DOCDESCR, @PORDNMBR, @DOCAMNT, @Credit_Amount_String_30, @DEBITAMT, @BALNCDUE, @AGNGBUKT, @CRDTAMNT, @CHCUMNUM, @CHCUMNAM, @CURTRXAM, @AMNTPAID, @RNNMBR, @SEQNUMBR, @USERID, @Process_Index) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM50104SI] TO [DYNGRP]
GO
