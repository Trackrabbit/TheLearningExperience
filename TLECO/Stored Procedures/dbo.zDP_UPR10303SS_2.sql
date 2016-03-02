SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10303SS_2] (@DEX_ROW_ID int) AS  set nocount on SELECT TOP 1  USERID, BACHNUMB, EMPLOYID, COMPTRTP, UPRTRXCD, TRXAUFLG_1, TRXAUFLG_2, TRXAUFLG_3, TRXAUFLG_4, TRXAUFLG_5, TRXAUFLG_6, TRXAUFLG_7, TRXAUFLG_8, TRXAUFLG_9, TRXAUFLG_10, TRXBEGDT, TRXENDDT, TRXHRUNT, PAYRTAMT, HRLYPYRT, VARDBAMT, VARDBPCT, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, WRKRCOMP, DAYSWRDK, SUTASTAT, WKSWRKD, SHFTPREM, SALCHG, DEX_ROW_ID FROM .UPR10303 WHERE DEX_ROW_ID = @DEX_ROW_ID ORDER BY DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10303SS_2] TO [DYNGRP]
GO