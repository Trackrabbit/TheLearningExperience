SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM40100SI] (@UNIQKEY char(1), @ADUPINNM smallint, @OVVCHNUM tinyint, @TRKDISAV tinyint, @PRTHATRB tinyint, @AGEBY smallint, @APPLYBY smallint, @RMVNDHPW char(11), @RMVTRHPW char(11), @XCDMINPW char(11), @WROFPSWD char(11), @NTVCHNUM char(17), @PMNPYNBR char(21), @NXTVNDID char(15), @USRDFPR1 char(15), @USRDRPR2 char(15), @PMTRXDSC_1 char(21), @PMTRXDSC_2 char(21), @PMTRXDSC_3 char(21), @PMTRXDSC_4 char(21), @PMTRXDSC_5 char(21), @PMTRXDSC_6 char(21), @PMTRXDSC_7 char(21), @PMTRXDSC_8 char(21), @PMTRXABR_1 char(3), @PMTRXABR_2 char(3), @PMTRXABR_3 char(3), @PMTRXABR_4 char(3), @PMTRXABR_5 char(3), @PMTRXABR_6 char(3), @PMTRXABR_7 char(3), @PMTRXABR_8 char(3), @CHEKBKID char(15), @PCHSCHID char(15), @FRTSCHID char(15), @MSCSCHID char(15), @LSTYECAL datetime, @LSTYEFSC datetime, @Check_Format_Default smallint, @Check_Stub_Default smallint, @PRNTPRVSLYAPPLDDCS tinyint, @DelUPDoc tinyint, @PrntTaxDetDoc tinyint, @DateSensitivitySumView smallint, @PRNTDCUR tinyint, @AGEUNAPPLDCR tinyint, @PMNXTSCHDNBR char(21), @ExcludeExprdDiscntsPymnt tinyint, @PMDefaultCheckSort smallint, @WarnIfVenHasExistingPO tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .PM40100 (UNIQKEY, ADUPINNM, OVVCHNUM, TRKDISAV, PRTHATRB, AGEBY, APPLYBY, RMVNDHPW, RMVTRHPW, XCDMINPW, WROFPSWD, NTVCHNUM, PMNPYNBR, NXTVNDID, USRDFPR1, USRDRPR2, PMTRXDSC_1, PMTRXDSC_2, PMTRXDSC_3, PMTRXDSC_4, PMTRXDSC_5, PMTRXDSC_6, PMTRXDSC_7, PMTRXDSC_8, PMTRXABR_1, PMTRXABR_2, PMTRXABR_3, PMTRXABR_4, PMTRXABR_5, PMTRXABR_6, PMTRXABR_7, PMTRXABR_8, CHEKBKID, PCHSCHID, FRTSCHID, MSCSCHID, LSTYECAL, LSTYEFSC, Check_Format_Default, Check_Stub_Default, PRNTPRVSLYAPPLDDCS, DelUPDoc, PrntTaxDetDoc, DateSensitivitySumView, PRNTDCUR, AGEUNAPPLDCR, PMNXTSCHDNBR, ExcludeExprdDiscntsPymnt, PMDefaultCheckSort, WarnIfVenHasExistingPO) VALUES ( @UNIQKEY, @ADUPINNM, @OVVCHNUM, @TRKDISAV, @PRTHATRB, @AGEBY, @APPLYBY, @RMVNDHPW, @RMVTRHPW, @XCDMINPW, @WROFPSWD, @NTVCHNUM, @PMNPYNBR, @NXTVNDID, @USRDFPR1, @USRDRPR2, @PMTRXDSC_1, @PMTRXDSC_2, @PMTRXDSC_3, @PMTRXDSC_4, @PMTRXDSC_5, @PMTRXDSC_6, @PMTRXDSC_7, @PMTRXDSC_8, @PMTRXABR_1, @PMTRXABR_2, @PMTRXABR_3, @PMTRXABR_4, @PMTRXABR_5, @PMTRXABR_6, @PMTRXABR_7, @PMTRXABR_8, @CHEKBKID, @PCHSCHID, @FRTSCHID, @MSCSCHID, @LSTYECAL, @LSTYEFSC, @Check_Format_Default, @Check_Stub_Default, @PRNTPRVSLYAPPLDDCS, @DelUPDoc, @PrntTaxDetDoc, @DateSensitivitySumView, @PRNTDCUR, @AGEUNAPPLDCR, @PMNXTSCHDNBR, @ExcludeExprdDiscntsPymnt, @PMDefaultCheckSort, @WarnIfVenHasExistingPO) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_PM40100SI] TO [DYNGRP]
GO
