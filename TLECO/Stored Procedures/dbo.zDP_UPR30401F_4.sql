SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30401F_4] (@DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS  set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  AUCTRLCD, PYADNMBR, PYRLRTYP, TRXNUMBER, SEQNUMBR, SRCECODE, DEPRTMNT, JOBTITLE, STATECD, EMPLOYID, DEBITAMT, CRDTAMNT, ACTINDX, POSTEDDT, PAYROLCD, UPRACTYP, DEX_ROW_ID FROM .UPR30401 ORDER BY DEX_ROW_ID ASC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  AUCTRLCD, PYADNMBR, PYRLRTYP, TRXNUMBER, SEQNUMBR, SRCECODE, DEPRTMNT, JOBTITLE, STATECD, EMPLOYID, DEBITAMT, CRDTAMNT, ACTINDX, POSTEDDT, PAYROLCD, UPRACTYP, DEX_ROW_ID FROM .UPR30401 WHERE DEX_ROW_ID = @DEX_ROW_ID_RS ORDER BY DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  AUCTRLCD, PYADNMBR, PYRLRTYP, TRXNUMBER, SEQNUMBR, SRCECODE, DEPRTMNT, JOBTITLE, STATECD, EMPLOYID, DEBITAMT, CRDTAMNT, ACTINDX, POSTEDDT, PAYROLCD, UPRACTYP, DEX_ROW_ID FROM .UPR30401 WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE ORDER BY DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30401F_4] TO [DYNGRP]
GO
