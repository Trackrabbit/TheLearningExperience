SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10200SS_1] (@USERID char(15), @PYRNTYPE smallint) AS  set nocount on SELECT TOP 1  USERID, AUCTRLCD, BLDCHDID, BLDCHKDT, BLDCHTIM, PYRNTYPE, COMPPYRN, EMPCLRNG, STTEMPCL, ENEMPCLS, EMPIDRNG, STTEMPID, ENDEMPL, PYRNSTDT, PYRNENDT, PYRNIWLY, PYRNIBWK, PRNISMLY, PYRNIMLY, PYRNIQLY, PYRNISAN, PYRNIANN, PYRNIDMS, PYRNISRY, PYRNIPSN, PYRNIEIC, PYRNIPTP, PYRNIDED, PYRNIBFT, DAYSWRDK, WKSWRKD, BLCHWREX, BDCHEREX, PRCHKPTD, PYRLCHPS, CHEKDATE, POSTEDDT, NUMOFTRX, NUMOFEMP, CNTRLTRX, CTRLEMPCT, APPROVL, APPRVLDT, APRVLUSERID, DEX_ROW_ID FROM .UPR10200 WHERE USERID = @USERID AND PYRNTYPE = @PYRNTYPE ORDER BY USERID ASC, PYRNTYPE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10200SS_1] TO [DYNGRP]
GO