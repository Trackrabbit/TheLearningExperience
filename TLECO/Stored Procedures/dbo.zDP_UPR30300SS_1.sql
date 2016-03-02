SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30300SS_1] (@AUCTRLCD char(13), @PYRLRTYP smallint, @PAYROLCD char(7), @EMPLOYID char(15)) AS  set nocount on SELECT TOP 1  CMRECNUM, AUCTRLCD, EMPLOYID, CHEKNMBR, PYADNMBR, TRXNUMBER, YEAR1, CHEKDATE, DEPRTMNT, PYRLRTYP, PAYROLCD, TRXSORCE, DOCTYPE, JOBTITLE, TRXBEGDT, TRXENDDT, UNTSTOPY, PAYRATE, UPRTRXAM, TIMETYPE_I, TIMEAVAILABLE, TipType, RECEIPTS, PAYADVNC, STATECD, LOCALTAX, WRKRCOMP, USWHPSTD, LSTDTEDT, LASTUSER, SHFTCODE, SHFTPREM, TXBLWAGS, DAYSWRDK, WKSWRKD, SUTASTAT, SBJTFUTA, BSDONRTE, EMPLCLAS, DEX_ROW_ID FROM .UPR30300 WHERE AUCTRLCD = @AUCTRLCD AND PYRLRTYP = @PYRLRTYP AND PAYROLCD = @PAYROLCD AND EMPLOYID = @EMPLOYID ORDER BY AUCTRLCD ASC, PYRLRTYP ASC, PAYROLCD ASC, EMPLOYID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30300SS_1] TO [DYNGRP]
GO