SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10200N_2] (@BS int, @PRCHKPTD tinyint, @DEX_ROW_ID int, @PRCHKPTD_RS tinyint, @PRCHKPTD_RE tinyint) AS  set nocount on IF @PRCHKPTD_RS IS NULL BEGIN SELECT TOP 25  USERID, AUCTRLCD, BLDCHDID, BLDCHKDT, BLDCHTIM, PYRNTYPE, COMPPYRN, EMPCLRNG, STTEMPCL, ENEMPCLS, EMPIDRNG, STTEMPID, ENDEMPL, PYRNSTDT, PYRNENDT, PYRNIWLY, PYRNIBWK, PRNISMLY, PYRNIMLY, PYRNIQLY, PYRNISAN, PYRNIANN, PYRNIDMS, PYRNISRY, PYRNIPSN, PYRNIEIC, PYRNIPTP, PYRNIDED, PYRNIBFT, DAYSWRDK, WKSWRKD, BLCHWREX, BDCHEREX, PRCHKPTD, PYRLCHPS, CHEKDATE, POSTEDDT, NUMOFTRX, NUMOFEMP, CNTRLTRX, CTRLEMPCT, APPROVL, APPRVLDT, APRVLUSERID, DEX_ROW_ID FROM .UPR10200 WHERE ( PRCHKPTD = @PRCHKPTD AND DEX_ROW_ID > @DEX_ROW_ID OR PRCHKPTD > @PRCHKPTD ) ORDER BY PRCHKPTD ASC, DEX_ROW_ID ASC END ELSE IF @PRCHKPTD_RS = @PRCHKPTD_RE BEGIN SELECT TOP 25  USERID, AUCTRLCD, BLDCHDID, BLDCHKDT, BLDCHTIM, PYRNTYPE, COMPPYRN, EMPCLRNG, STTEMPCL, ENEMPCLS, EMPIDRNG, STTEMPID, ENDEMPL, PYRNSTDT, PYRNENDT, PYRNIWLY, PYRNIBWK, PRNISMLY, PYRNIMLY, PYRNIQLY, PYRNISAN, PYRNIANN, PYRNIDMS, PYRNISRY, PYRNIPSN, PYRNIEIC, PYRNIPTP, PYRNIDED, PYRNIBFT, DAYSWRDK, WKSWRKD, BLCHWREX, BDCHEREX, PRCHKPTD, PYRLCHPS, CHEKDATE, POSTEDDT, NUMOFTRX, NUMOFEMP, CNTRLTRX, CTRLEMPCT, APPROVL, APPRVLDT, APRVLUSERID, DEX_ROW_ID FROM .UPR10200 WHERE PRCHKPTD = @PRCHKPTD_RS AND ( PRCHKPTD = @PRCHKPTD AND DEX_ROW_ID > @DEX_ROW_ID OR PRCHKPTD > @PRCHKPTD ) ORDER BY PRCHKPTD ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, AUCTRLCD, BLDCHDID, BLDCHKDT, BLDCHTIM, PYRNTYPE, COMPPYRN, EMPCLRNG, STTEMPCL, ENEMPCLS, EMPIDRNG, STTEMPID, ENDEMPL, PYRNSTDT, PYRNENDT, PYRNIWLY, PYRNIBWK, PRNISMLY, PYRNIMLY, PYRNIQLY, PYRNISAN, PYRNIANN, PYRNIDMS, PYRNISRY, PYRNIPSN, PYRNIEIC, PYRNIPTP, PYRNIDED, PYRNIBFT, DAYSWRDK, WKSWRKD, BLCHWREX, BDCHEREX, PRCHKPTD, PYRLCHPS, CHEKDATE, POSTEDDT, NUMOFTRX, NUMOFEMP, CNTRLTRX, CTRLEMPCT, APPROVL, APPRVLDT, APRVLUSERID, DEX_ROW_ID FROM .UPR10200 WHERE PRCHKPTD BETWEEN @PRCHKPTD_RS AND @PRCHKPTD_RE AND ( PRCHKPTD = @PRCHKPTD AND DEX_ROW_ID > @DEX_ROW_ID OR PRCHKPTD > @PRCHKPTD ) ORDER BY PRCHKPTD ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10200N_2] TO [DYNGRP]
GO