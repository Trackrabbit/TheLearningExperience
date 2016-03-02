SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10200SI] (@USERID char(15), @AUCTRLCD char(13), @BLDCHDID char(15), @BLDCHKDT datetime, @BLDCHTIM datetime, @PYRNTYPE smallint, @COMPPYRN smallint, @EMPCLRNG smallint, @STTEMPCL char(15), @ENEMPCLS char(15), @EMPIDRNG smallint, @STTEMPID char(15), @ENDEMPL char(15), @PYRNSTDT datetime, @PYRNENDT datetime, @PYRNIWLY tinyint, @PYRNIBWK tinyint, @PRNISMLY tinyint, @PYRNIMLY tinyint, @PYRNIQLY tinyint, @PYRNISAN tinyint, @PYRNIANN tinyint, @PYRNIDMS tinyint, @PYRNISRY tinyint, @PYRNIPSN tinyint, @PYRNIEIC tinyint, @PYRNIPTP smallint, @PYRNIDED smallint, @PYRNIBFT smallint, @DAYSWRDK int, @WKSWRKD int, @BLCHWREX tinyint, @BDCHEREX tinyint, @PRCHKPTD tinyint, @PYRLCHPS tinyint, @CHEKDATE datetime, @POSTEDDT datetime, @NUMOFTRX int, @NUMOFEMP smallint, @CNTRLTRX int, @CTRLEMPCT smallint, @APPROVL tinyint, @APPRVLDT datetime, @APRVLUSERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR10200 (USERID, AUCTRLCD, BLDCHDID, BLDCHKDT, BLDCHTIM, PYRNTYPE, COMPPYRN, EMPCLRNG, STTEMPCL, ENEMPCLS, EMPIDRNG, STTEMPID, ENDEMPL, PYRNSTDT, PYRNENDT, PYRNIWLY, PYRNIBWK, PRNISMLY, PYRNIMLY, PYRNIQLY, PYRNISAN, PYRNIANN, PYRNIDMS, PYRNISRY, PYRNIPSN, PYRNIEIC, PYRNIPTP, PYRNIDED, PYRNIBFT, DAYSWRDK, WKSWRKD, BLCHWREX, BDCHEREX, PRCHKPTD, PYRLCHPS, CHEKDATE, POSTEDDT, NUMOFTRX, NUMOFEMP, CNTRLTRX, CTRLEMPCT, APPROVL, APPRVLDT, APRVLUSERID) VALUES ( @USERID, @AUCTRLCD, @BLDCHDID, @BLDCHKDT, @BLDCHTIM, @PYRNTYPE, @COMPPYRN, @EMPCLRNG, @STTEMPCL, @ENEMPCLS, @EMPIDRNG, @STTEMPID, @ENDEMPL, @PYRNSTDT, @PYRNENDT, @PYRNIWLY, @PYRNIBWK, @PRNISMLY, @PYRNIMLY, @PYRNIQLY, @PYRNISAN, @PYRNIANN, @PYRNIDMS, @PYRNISRY, @PYRNIPSN, @PYRNIEIC, @PYRNIPTP, @PYRNIDED, @PYRNIBFT, @DAYSWRDK, @WKSWRKD, @BLCHWREX, @BDCHEREX, @PRCHKPTD, @PYRLCHPS, @CHEKDATE, @POSTEDDT, @NUMOFTRX, @NUMOFEMP, @CNTRLTRX, @CTRLEMPCT, @APPROVL, @APPRVLDT, @APRVLUSERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10200SI] TO [DYNGRP]
GO