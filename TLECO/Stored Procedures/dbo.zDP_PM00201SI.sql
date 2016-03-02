SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00201SI] (@VENDORID char(15), @HIESTBAL numeric(19,5), @CURRBLNC numeric(19,5), @NOINVYTD int, @NOINVLIF int, @NOINVLYR int, @NOPINYTD int, @NOPILIFE int, @AMBLDTYD numeric(19,5), @AMBLDLIF numeric(19,5), @AMBLDLYR numeric(19,5), @AMTPDYTD numeric(19,5), @AMTPDLIF numeric(19,5), @AMTPDLYR numeric(19,5), @TEN99AYTD numeric(19,5), @TEN99ALIF numeric(19,5), @TEN99ALYR numeric(19,5), @DISAVYTD numeric(19,5), @DISAVLIF numeric(19,5), @DISAVLYR numeric(19,5), @DISTKYTD numeric(19,5), @DISTKNLF numeric(19,5), @DISTKLYR numeric(19,5), @DISLSYTD numeric(19,5), @DISLSTLF numeric(19,5), @DISLSLYR numeric(19,5), @FINCHLIF numeric(19,5), @FINCHLYR numeric(19,5), @FINCHYTD numeric(19,5), @WROFSYTD numeric(19,5), @WROFSLIF numeric(19,5), @WROFSLYR numeric(19,5), @RTRNSYTD numeric(19,5), @RTRNSLIF numeric(19,5), @RTRNSLYR numeric(19,5), @TRDTKLIF numeric(19,5), @TRDTLYR numeric(19,5), @TRDTYTD numeric(19,5), @NFNCHLIF int, @NFNCHLYR int, @NFNCHYTD int, @RTNGOWED numeric(19,5), @LSTCHNUM char(21), @LSTCHKDT datetime, @LSTCHAMT numeric(19,5), @LSTINNUM char(21), @LSTINVAM numeric(19,5), @LSTPURDT datetime, @FSTPURDT datetime, @CURUNPBN numeric(19,5), @UNPDFNCH numeric(19,5), @DYCHTCLR smallint, @AVGDTPYR smallint, @AVDTPLIF smallint, @ACCRDINV numeric(19,5), @ONORDAMT numeric(19,5), @WITHYTD numeric(19,5), @WITHLYR numeric(19,5), @Withholding_LIFE numeric(19,5), @PrepaymentAmount numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PM00201 (VENDORID, HIESTBAL, CURRBLNC, NOINVYTD, NOINVLIF, NOINVLYR, NOPINYTD, NOPILIFE, AMBLDTYD, AMBLDLIF, AMBLDLYR, AMTPDYTD, AMTPDLIF, AMTPDLYR, TEN99AYTD, TEN99ALIF, TEN99ALYR, DISAVYTD, DISAVLIF, DISAVLYR, DISTKYTD, DISTKNLF, DISTKLYR, DISLSYTD, DISLSTLF, DISLSLYR, FINCHLIF, FINCHLYR, FINCHYTD, WROFSYTD, WROFSLIF, WROFSLYR, RTRNSYTD, RTRNSLIF, RTRNSLYR, TRDTKLIF, TRDTLYR, TRDTYTD, NFNCHLIF, NFNCHLYR, NFNCHYTD, RTNGOWED, LSTCHNUM, LSTCHKDT, LSTCHAMT, LSTINNUM, LSTINVAM, LSTPURDT, FSTPURDT, CURUNPBN, UNPDFNCH, DYCHTCLR, AVGDTPYR, AVDTPLIF, ACCRDINV, ONORDAMT, WITHYTD, WITHLYR, Withholding_LIFE, PrepaymentAmount) VALUES ( @VENDORID, @HIESTBAL, @CURRBLNC, @NOINVYTD, @NOINVLIF, @NOINVLYR, @NOPINYTD, @NOPILIFE, @AMBLDTYD, @AMBLDLIF, @AMBLDLYR, @AMTPDYTD, @AMTPDLIF, @AMTPDLYR, @TEN99AYTD, @TEN99ALIF, @TEN99ALYR, @DISAVYTD, @DISAVLIF, @DISAVLYR, @DISTKYTD, @DISTKNLF, @DISTKLYR, @DISLSYTD, @DISLSTLF, @DISLSLYR, @FINCHLIF, @FINCHLYR, @FINCHYTD, @WROFSYTD, @WROFSLIF, @WROFSLYR, @RTRNSYTD, @RTRNSLIF, @RTRNSLYR, @TRDTKLIF, @TRDTLYR, @TRDTYTD, @NFNCHLIF, @NFNCHLYR, @NFNCHYTD, @RTNGOWED, @LSTCHNUM, @LSTCHKDT, @LSTCHAMT, @LSTINNUM, @LSTINVAM, @LSTPURDT, @FSTPURDT, @CURUNPBN, @UNPDFNCH, @DYCHTCLR, @AVGDTPYR, @AVDTPLIF, @ACCRDINV, @ONORDAMT, @WITHYTD, @WITHLYR, @Withholding_LIFE, @PrepaymentAmount) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00201SI] TO [DYNGRP]
GO