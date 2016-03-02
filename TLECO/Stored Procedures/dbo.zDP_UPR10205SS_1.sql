SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10205SS_1] (@USERID char(15), @PYRNTYPE smallint, @EMPLOYID char(15), @BENEFIT char(7), @PRCSSQNC smallint) AS  set nocount on SELECT TOP 1  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, BENEFIT, TAXABLE, VARBENFT, VARDBAMT, VARDBPCT, BNFTFREQ, TOTLBNFT, AMTBOTIP, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, BNFTMTHD, PRCSSQNC, DEX_ROW_ID FROM .UPR10205 WHERE USERID = @USERID AND PYRNTYPE = @PYRNTYPE AND EMPLOYID = @EMPLOYID AND BENEFIT = @BENEFIT AND PRCSSQNC = @PRCSSQNC ORDER BY USERID ASC, PYRNTYPE ASC, EMPLOYID ASC, BENEFIT ASC, PRCSSQNC ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10205SS_1] TO [DYNGRP]
GO