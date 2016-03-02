SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00201N_1] (@BS int, @VENDORID char(15), @VENDORID_RS char(15), @VENDORID_RE char(15)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  VENDORID, HIESTBAL, CURRBLNC, NOINVYTD, NOINVLIF, NOINVLYR, NOPINYTD, NOPILIFE, AMBLDTYD, AMBLDLIF, AMBLDLYR, AMTPDYTD, AMTPDLIF, AMTPDLYR, TEN99AYTD, TEN99ALIF, TEN99ALYR, DISAVYTD, DISAVLIF, DISAVLYR, DISTKYTD, DISTKNLF, DISTKLYR, DISLSYTD, DISLSTLF, DISLSLYR, FINCHLIF, FINCHLYR, FINCHYTD, WROFSYTD, WROFSLIF, WROFSLYR, RTRNSYTD, RTRNSLIF, RTRNSLYR, TRDTKLIF, TRDTLYR, TRDTYTD, NFNCHLIF, NFNCHLYR, NFNCHYTD, RTNGOWED, LSTCHNUM, LSTCHKDT, LSTCHAMT, LSTINNUM, LSTINVAM, LSTPURDT, FSTPURDT, CURUNPBN, UNPDFNCH, DYCHTCLR, AVGDTPYR, AVDTPLIF, ACCRDINV, ONORDAMT, WITHYTD, WITHLYR, Withholding_LIFE, PrepaymentAmount, DEX_ROW_ID FROM .PM00201 WHERE ( VENDORID > @VENDORID ) ORDER BY VENDORID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  VENDORID, HIESTBAL, CURRBLNC, NOINVYTD, NOINVLIF, NOINVLYR, NOPINYTD, NOPILIFE, AMBLDTYD, AMBLDLIF, AMBLDLYR, AMTPDYTD, AMTPDLIF, AMTPDLYR, TEN99AYTD, TEN99ALIF, TEN99ALYR, DISAVYTD, DISAVLIF, DISAVLYR, DISTKYTD, DISTKNLF, DISTKLYR, DISLSYTD, DISLSTLF, DISLSLYR, FINCHLIF, FINCHLYR, FINCHYTD, WROFSYTD, WROFSLIF, WROFSLYR, RTRNSYTD, RTRNSLIF, RTRNSLYR, TRDTKLIF, TRDTLYR, TRDTYTD, NFNCHLIF, NFNCHLYR, NFNCHYTD, RTNGOWED, LSTCHNUM, LSTCHKDT, LSTCHAMT, LSTINNUM, LSTINVAM, LSTPURDT, FSTPURDT, CURUNPBN, UNPDFNCH, DYCHTCLR, AVGDTPYR, AVDTPLIF, ACCRDINV, ONORDAMT, WITHYTD, WITHLYR, Withholding_LIFE, PrepaymentAmount, DEX_ROW_ID FROM .PM00201 WHERE VENDORID = @VENDORID_RS AND ( VENDORID > @VENDORID ) ORDER BY VENDORID ASC END ELSE BEGIN SELECT TOP 25  VENDORID, HIESTBAL, CURRBLNC, NOINVYTD, NOINVLIF, NOINVLYR, NOPINYTD, NOPILIFE, AMBLDTYD, AMBLDLIF, AMBLDLYR, AMTPDYTD, AMTPDLIF, AMTPDLYR, TEN99AYTD, TEN99ALIF, TEN99ALYR, DISAVYTD, DISAVLIF, DISAVLYR, DISTKYTD, DISTKNLF, DISTKLYR, DISLSYTD, DISLSTLF, DISLSLYR, FINCHLIF, FINCHLYR, FINCHYTD, WROFSYTD, WROFSLIF, WROFSLYR, RTRNSYTD, RTRNSLIF, RTRNSLYR, TRDTKLIF, TRDTLYR, TRDTYTD, NFNCHLIF, NFNCHLYR, NFNCHYTD, RTNGOWED, LSTCHNUM, LSTCHKDT, LSTCHAMT, LSTINNUM, LSTINVAM, LSTPURDT, FSTPURDT, CURUNPBN, UNPDFNCH, DYCHTCLR, AVGDTPYR, AVDTPLIF, ACCRDINV, ONORDAMT, WITHYTD, WITHLYR, Withholding_LIFE, PrepaymentAmount, DEX_ROW_ID FROM .PM00201 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( VENDORID > @VENDORID ) ORDER BY VENDORID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00201N_1] TO [DYNGRP]
GO