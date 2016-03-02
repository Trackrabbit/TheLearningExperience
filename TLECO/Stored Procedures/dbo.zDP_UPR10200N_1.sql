SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10200N_1] (@BS int, @USERID char(15), @PYRNTYPE smallint, @USERID_RS char(15), @PYRNTYPE_RS smallint, @USERID_RE char(15), @PYRNTYPE_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, AUCTRLCD, BLDCHDID, BLDCHKDT, BLDCHTIM, PYRNTYPE, COMPPYRN, EMPCLRNG, STTEMPCL, ENEMPCLS, EMPIDRNG, STTEMPID, ENDEMPL, PYRNSTDT, PYRNENDT, PYRNIWLY, PYRNIBWK, PRNISMLY, PYRNIMLY, PYRNIQLY, PYRNISAN, PYRNIANN, PYRNIDMS, PYRNISRY, PYRNIPSN, PYRNIEIC, PYRNIPTP, PYRNIDED, PYRNIBFT, DAYSWRDK, WKSWRKD, BLCHWREX, BDCHEREX, PRCHKPTD, PYRLCHPS, CHEKDATE, POSTEDDT, NUMOFTRX, NUMOFEMP, CNTRLTRX, CTRLEMPCT, APPROVL, APPRVLDT, APRVLUSERID, DEX_ROW_ID FROM .UPR10200 WHERE ( USERID = @USERID AND PYRNTYPE > @PYRNTYPE OR USERID > @USERID ) ORDER BY USERID ASC, PYRNTYPE ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, AUCTRLCD, BLDCHDID, BLDCHKDT, BLDCHTIM, PYRNTYPE, COMPPYRN, EMPCLRNG, STTEMPCL, ENEMPCLS, EMPIDRNG, STTEMPID, ENDEMPL, PYRNSTDT, PYRNENDT, PYRNIWLY, PYRNIBWK, PRNISMLY, PYRNIMLY, PYRNIQLY, PYRNISAN, PYRNIANN, PYRNIDMS, PYRNISRY, PYRNIPSN, PYRNIEIC, PYRNIPTP, PYRNIDED, PYRNIBFT, DAYSWRDK, WKSWRKD, BLCHWREX, BDCHEREX, PRCHKPTD, PYRLCHPS, CHEKDATE, POSTEDDT, NUMOFTRX, NUMOFEMP, CNTRLTRX, CTRLEMPCT, APPROVL, APPRVLDT, APRVLUSERID, DEX_ROW_ID FROM .UPR10200 WHERE USERID = @USERID_RS AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND ( USERID = @USERID AND PYRNTYPE > @PYRNTYPE OR USERID > @USERID ) ORDER BY USERID ASC, PYRNTYPE ASC END ELSE BEGIN SELECT TOP 25  USERID, AUCTRLCD, BLDCHDID, BLDCHKDT, BLDCHTIM, PYRNTYPE, COMPPYRN, EMPCLRNG, STTEMPCL, ENEMPCLS, EMPIDRNG, STTEMPID, ENDEMPL, PYRNSTDT, PYRNENDT, PYRNIWLY, PYRNIBWK, PRNISMLY, PYRNIMLY, PYRNIQLY, PYRNISAN, PYRNIANN, PYRNIDMS, PYRNISRY, PYRNIPSN, PYRNIEIC, PYRNIPTP, PYRNIDED, PYRNIBFT, DAYSWRDK, WKSWRKD, BLCHWREX, BDCHEREX, PRCHKPTD, PYRLCHPS, CHEKDATE, POSTEDDT, NUMOFTRX, NUMOFEMP, CNTRLTRX, CTRLEMPCT, APPROVL, APPRVLDT, APRVLUSERID, DEX_ROW_ID FROM .UPR10200 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND ( USERID = @USERID AND PYRNTYPE > @PYRNTYPE OR USERID > @USERID ) ORDER BY USERID ASC, PYRNTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10200N_1] TO [DYNGRP]
GO