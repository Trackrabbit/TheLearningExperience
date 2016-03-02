SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20502SI] (@AUDITTRAIL char(13), @CMRECNUM numeric(19,5), @RECONUM numeric(19,5), @CMTrxNum char(21), @CMTrxType smallint, @CMLinkID char(15), @TRXDATE datetime, @TRXAMNT numeric(19,5), @clearedate datetime, @ClrdAmt numeric(19,5), @CURNCYID char(15), @paidtorcvdfrom char(65), @DSCRIPTN char(31), @DEPTYPE smallint, @SOURCDOC char(11), @SRCDOCTYP smallint, @SRCDOCNUM char(21), @USERID char(15), @CHEKBKID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CM20502 (AUDITTRAIL, CMRECNUM, RECONUM, CMTrxNum, CMTrxType, CMLinkID, TRXDATE, TRXAMNT, clearedate, ClrdAmt, CURNCYID, paidtorcvdfrom, DSCRIPTN, DEPTYPE, SOURCDOC, SRCDOCTYP, SRCDOCNUM, USERID, CHEKBKID) VALUES ( @AUDITTRAIL, @CMRECNUM, @RECONUM, @CMTrxNum, @CMTrxType, @CMLinkID, @TRXDATE, @TRXAMNT, @clearedate, @ClrdAmt, @CURNCYID, @paidtorcvdfrom, @DSCRIPTN, @DEPTYPE, @SOURCDOC, @SRCDOCTYP, @SRCDOCNUM, @USERID, @CHEKBKID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20502SI] TO [DYNGRP]
GO
