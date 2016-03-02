SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06131N_3] (@BS int, @WORECTYPE smallint, @WORKORDNUM char(11), @LINITMTYP char(3), @LNITMSEQ int, @CMPNTSEQ int, @POSTED tinyint, @SVC_Distribution_Type smallint, @DEX_ROW_ID int, @WORECTYPE_RS smallint, @WORKORDNUM_RS char(11), @LINITMTYP_RS char(3), @LNITMSEQ_RS int, @CMPNTSEQ_RS int, @POSTED_RS tinyint, @SVC_Distribution_Type_RS smallint, @WORECTYPE_RE smallint, @WORKORDNUM_RE char(11), @LINITMTYP_RE char(3), @LNITMSEQ_RE int, @CMPNTSEQ_RE int, @POSTED_RE tinyint, @SVC_Distribution_Type_RE smallint) AS  set nocount on IF @WORECTYPE_RS IS NULL BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, LINITMTYP, LNITMSEQ, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC06131 WHERE ( WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND DEX_ROW_ID > @DEX_ROW_ID OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND POSTED = @POSTED AND SVC_Distribution_Type > @SVC_Distribution_Type OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND POSTED > @POSTED OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ > @CMPNTSEQ OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ > @LNITMSEQ OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP > @LINITMTYP OR WORECTYPE = @WORECTYPE AND WORKORDNUM > @WORKORDNUM OR WORECTYPE > @WORECTYPE ) ORDER BY WORECTYPE ASC, WORKORDNUM ASC, LINITMTYP ASC, LNITMSEQ ASC, CMPNTSEQ ASC, POSTED ASC, SVC_Distribution_Type ASC, DEX_ROW_ID ASC END ELSE IF @WORECTYPE_RS = @WORECTYPE_RE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, LINITMTYP, LNITMSEQ, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC06131 WHERE WORECTYPE = @WORECTYPE_RS AND WORKORDNUM BETWEEN @WORKORDNUM_RS AND @WORKORDNUM_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE AND ( WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND DEX_ROW_ID > @DEX_ROW_ID OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND POSTED = @POSTED AND SVC_Distribution_Type > @SVC_Distribution_Type OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND POSTED > @POSTED OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ > @CMPNTSEQ OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ > @LNITMSEQ OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP > @LINITMTYP OR WORECTYPE = @WORECTYPE AND WORKORDNUM > @WORKORDNUM OR WORECTYPE > @WORECTYPE ) ORDER BY WORECTYPE ASC, WORKORDNUM ASC, LINITMTYP ASC, LNITMSEQ ASC, CMPNTSEQ ASC, POSTED ASC, SVC_Distribution_Type ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, LINITMTYP, LNITMSEQ, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC06131 WHERE WORECTYPE BETWEEN @WORECTYPE_RS AND @WORECTYPE_RE AND WORKORDNUM BETWEEN @WORKORDNUM_RS AND @WORKORDNUM_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE AND ( WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND DEX_ROW_ID > @DEX_ROW_ID OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND POSTED = @POSTED AND SVC_Distribution_Type > @SVC_Distribution_Type OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND POSTED > @POSTED OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ > @CMPNTSEQ OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND LNITMSEQ > @LNITMSEQ OR WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP > @LINITMTYP OR WORECTYPE = @WORECTYPE AND WORKORDNUM > @WORKORDNUM OR WORECTYPE > @WORECTYPE ) ORDER BY WORECTYPE ASC, WORKORDNUM ASC, LINITMTYP ASC, LNITMSEQ ASC, CMPNTSEQ ASC, POSTED ASC, SVC_Distribution_Type ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06131N_3] TO [DYNGRP]
GO
