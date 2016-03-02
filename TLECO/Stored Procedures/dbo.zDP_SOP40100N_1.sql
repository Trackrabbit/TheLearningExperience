SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40100N_1] (@BS int, @SETUPKEY smallint, @SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS  set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  COMMNTID, SETUPKEY, DPYITMCS, DQTYSWAR, TRKVDTRX, CALCKITC, NEWRATES, TRMSTNUM, NXTMSTNO, QUOTE, PRDER, INVORETU, ACDSTRBN, LOCNCODE, CHEKBKID, DFQTYSOP, QUODOCID, ORDDOCID, BACDOCID, INVDOCID, RETDOCID, DECPLQTY, DECPLCUR, USEACFRM, USEADVTX, TAXSCHID, NONIVTXB, NONIVSCH, FRGTTXBL, FRTSCHID, MISCTXBL, MSCSCHID, MPACKSLP, MPICKTIC, PriceLevelWarning, SOPALLOW_1, SOPALLOW_2, SOPALLOW_3, SOPALLOW_4, SOPALLOW_5, SOPALLOW_6, SOPALLOW_7, SOPALLOW_8, SOPALLOW_9, SOPALLOW_10, SOPPSSWD_1, SOPPSSWD_2, SOPPSSWD_3, SOPPSSWD_4, SOPPSSWD_5, SOPPSSWD_6, SOPPSSWD_7, SOPPSSWD_8, SOPPSSWD_9, SOPPSSWD_10, IVCDSTCK, NUMOFTRX, USRDFPR1, USRDRPR2, USRDRPR3, USRDRPR4, USRDRPR5, USRDRPR6, USRDRPR7, USRDRPR8, USRDRPR9, USRDRP10, USRDRP11, USRDRP12, USRDFPR13, USRDFPR14, USRDFPR15, USRDFPR16, USRDFPR17, CREATDDT, MODIFDT, REQSHIP, REQDAYS, SITEPREF, PREFSITE, REQDATEPO, Required_Days, UMDEFAULT, COMBONPO, TXBASECS, USEORGUC, Prices_Not_Required_In_Pr, PasswordUpper, Convert_Functional_Price, INDVPICKTICKETSORT, PRINTAVAILABLEBINS, FODOCID, CombineDropshipSOLines, CombineDropshipSODocs, DEX_ROW_ID FROM .SOP40100 WHERE ( SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  COMMNTID, SETUPKEY, DPYITMCS, DQTYSWAR, TRKVDTRX, CALCKITC, NEWRATES, TRMSTNUM, NXTMSTNO, QUOTE, PRDER, INVORETU, ACDSTRBN, LOCNCODE, CHEKBKID, DFQTYSOP, QUODOCID, ORDDOCID, BACDOCID, INVDOCID, RETDOCID, DECPLQTY, DECPLCUR, USEACFRM, USEADVTX, TAXSCHID, NONIVTXB, NONIVSCH, FRGTTXBL, FRTSCHID, MISCTXBL, MSCSCHID, MPACKSLP, MPICKTIC, PriceLevelWarning, SOPALLOW_1, SOPALLOW_2, SOPALLOW_3, SOPALLOW_4, SOPALLOW_5, SOPALLOW_6, SOPALLOW_7, SOPALLOW_8, SOPALLOW_9, SOPALLOW_10, SOPPSSWD_1, SOPPSSWD_2, SOPPSSWD_3, SOPPSSWD_4, SOPPSSWD_5, SOPPSSWD_6, SOPPSSWD_7, SOPPSSWD_8, SOPPSSWD_9, SOPPSSWD_10, IVCDSTCK, NUMOFTRX, USRDFPR1, USRDRPR2, USRDRPR3, USRDRPR4, USRDRPR5, USRDRPR6, USRDRPR7, USRDRPR8, USRDRPR9, USRDRP10, USRDRP11, USRDRP12, USRDFPR13, USRDFPR14, USRDFPR15, USRDFPR16, USRDFPR17, CREATDDT, MODIFDT, REQSHIP, REQDAYS, SITEPREF, PREFSITE, REQDATEPO, Required_Days, UMDEFAULT, COMBONPO, TXBASECS, USEORGUC, Prices_Not_Required_In_Pr, PasswordUpper, Convert_Functional_Price, INDVPICKTICKETSORT, PRINTAVAILABLEBINS, FODOCID, CombineDropshipSOLines, CombineDropshipSODocs, DEX_ROW_ID FROM .SOP40100 WHERE SETUPKEY = @SETUPKEY_RS AND ( SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC END ELSE BEGIN SELECT TOP 25  COMMNTID, SETUPKEY, DPYITMCS, DQTYSWAR, TRKVDTRX, CALCKITC, NEWRATES, TRMSTNUM, NXTMSTNO, QUOTE, PRDER, INVORETU, ACDSTRBN, LOCNCODE, CHEKBKID, DFQTYSOP, QUODOCID, ORDDOCID, BACDOCID, INVDOCID, RETDOCID, DECPLQTY, DECPLCUR, USEACFRM, USEADVTX, TAXSCHID, NONIVTXB, NONIVSCH, FRGTTXBL, FRTSCHID, MISCTXBL, MSCSCHID, MPACKSLP, MPICKTIC, PriceLevelWarning, SOPALLOW_1, SOPALLOW_2, SOPALLOW_3, SOPALLOW_4, SOPALLOW_5, SOPALLOW_6, SOPALLOW_7, SOPALLOW_8, SOPALLOW_9, SOPALLOW_10, SOPPSSWD_1, SOPPSSWD_2, SOPPSSWD_3, SOPPSSWD_4, SOPPSSWD_5, SOPPSSWD_6, SOPPSSWD_7, SOPPSSWD_8, SOPPSSWD_9, SOPPSSWD_10, IVCDSTCK, NUMOFTRX, USRDFPR1, USRDRPR2, USRDRPR3, USRDRPR4, USRDRPR5, USRDRPR6, USRDRPR7, USRDRPR8, USRDRPR9, USRDRP10, USRDRP11, USRDRP12, USRDFPR13, USRDFPR14, USRDFPR15, USRDFPR16, USRDFPR17, CREATDDT, MODIFDT, REQSHIP, REQDAYS, SITEPREF, PREFSITE, REQDATEPO, Required_Days, UMDEFAULT, COMBONPO, TXBASECS, USEORGUC, Prices_Not_Required_In_Pr, PasswordUpper, Convert_Functional_Price, INDVPICKTICKETSORT, PRINTAVAILABLEBINS, FODOCID, CombineDropshipSOLines, CombineDropshipSODocs, DEX_ROW_ID FROM .SOP40100 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE AND ( SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40100N_1] TO [DYNGRP]
GO
