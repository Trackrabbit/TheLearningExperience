SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10208SS_4] (@USERID char(15), @PRINTED tinyint, @CHEKNMBR char(21)) AS  set nocount on SELECT TOP 1  PRINTED, VOIDED, USERID, EMPLOYID, EMPLNAME, LASTNAME, FRSTNAME, MIDLNAME, CHEKDATE, CHEKNMBR, PYADNMBR, DEPRTMNT, EMPLCLAS, SOCSCNUM, PAYRTARR_1, PAYRTARR_2, PAYRTARR_3, PAYRTARR_4, PAYRTARR_5, PAYRTARR_6, PAYRTARR_7, PAYRTARR_8, PAYRTARR_9, PAYRTARR_10, PAYRTARR_11, PAYRTARR_12, PAYRTARR_13, PAYRTARR_14, PAYRTARR_15, PAYRTARR_16, PAYRTARR_17, PAYRTARR_18, PAYRTARR_19, PAYRTARR_20, PAYRTARR_21, PAYRTARR_22, PAYRTARR_23, PAYRTARR_24, PAYRTARR_25, PAYHRSAR_1, PAYHRSAR_2, PAYHRSAR_3, PAYHRSAR_4, PAYHRSAR_5, PAYHRSAR_6, PAYHRSAR_7, PAYHRSAR_8, PAYHRSAR_9, PAYHRSAR_10, PAYHRSAR_11, PAYHRSAR_12, PAYHRSAR_13, PAYHRSAR_14, PAYHRSAR_15, PAYHRSAR_16, PAYHRSAR_17, PAYHRSAR_18, PAYHRSAR_19, PAYHRSAR_20, PAYHRSAR_21, PAYHRSAR_22, PAYHRSAR_23, PAYHRSAR_24, PAYHRSAR_25, PAYERNAR_1, PAYERNAR_2, PAYERNAR_3, PAYERNAR_4, PAYERNAR_5, PAYERNAR_6, PAYERNAR_7, PAYERNAR_8, PAYERNAR_9, PAYERNAR_10, PAYERNAR_11, PAYERNAR_12, PAYERNAR_13, PAYERNAR_14, PAYERNAR_15, PAYERNAR_16, PAYERNAR_17, PAYERNAR_18, PAYERNAR_19, PAYERNAR_20, PAYERNAR_21, PAYERNAR_22, PAYERNAR_23, PAYERNAR_24, PAYERNAR_25, TFICATWH, FCASWPR, FICAMWPR, FDWDGPRN, STWHDARR_1, STWHDARR_2, STWHDARR_3, STWHDARR_4, STWHDARR_5, STWHDARR_6, STWHDARR_7, STWHDARR_8, STWHDARR_9, STWHDARR_10, STWHDARR_11, STWHDARR_12, STWHDARR_13, STWHDARR_14, STWHDARR_15, STWHDARR_16, STWHDARR_17, STWHDARR_18, STWHDARR_19, STWHDARR_20, STWHDARR_21, STWHDARR_22, STWHDARR_23, STWHDARR_24, STWHDARR_25, LTXWHGAR_1, LTXWHGAR_2, LTXWHGAR_3, LTXWHGAR_4, LTXWHGAR_5, LTXWHGAR_6, LTXWHGAR_7, LTXWHGAR_8, LTXWHGAR_9, LTXWHGAR_10, LTXWHGAR_11, LTXWHGAR_12, LTXWHGAR_13, LTXWHGAR_14, LTXWHGAR_15, LTXWHGAR_16, LTXWHGAR_17, LTXWHGAR_18, LTXWHGAR_19, LTXWHGAR_20, LTXWHGAR_21, LTXWHGAR_22, LTXWHGAR_23, LTXWHGAR_24, LTXWHGAR_25, DEDAMARR_1, DEDAMARR_2, DEDAMARR_3, DEDAMARR_4, DEDAMARR_5, DEDAMARR_6, DEDAMARR_7, DEDAMARR_8, DEDAMARR_9, DEDAMARR_10, DEDAMARR_11, DEDAMARR_12, DEDAMARR_13, DEDAMARR_14, DEDAMARR_15, DEDAMARR_16, DEDAMARR_17, DEDAMARR_18, DEDAMARR_19, DEDAMARR_20, DEDAMARR_21, DEDAMARR_22, DEDAMARR_23, DEDAMARR_24, DEDAMARR_25, BNFAMARR_1, BNFAMARR_2, BNFAMARR_3, BNFAMARR_4, BNFAMARR_5, BNFAMARR_6, BNFAMARR_7, BNFAMARR_8, BNFAMARR_9, BNFAMARR_10, BNFAMARR_11, BNFAMARR_12, BNFAMARR_13, BNFAMARR_14, BNFAMARR_15, BNFAMARR_16, BNFAMARR_17, BNFAMARR_18, BNFAMARR_19, BNFAMARR_20, BNFAMARR_21, BNFAMARR_22, BNFAMARR_23, BNFAMARR_24, BNFAMARR_25, TIMEAVAILARRAY_1, TIMEAVAILARRAY_2, TIMEAVAILARRAY_3, TIMEAVAILARRAY_4, TIMEAVAILARRAY_5, TIMEAVAILARRAY_6, TIMEAVAILARRAY_7, TIMEAVAILARRAY_8, TIMEAVAILARRAY_9, TIMEAVAILARRAY_10, TIMEAVAILARRAY_11, TIMEAVAILARRAY_12, TIMEAVAILARRAY_13, TIMEAVAILARRAY_14, TIMEAVAILARRAY_15, TIMEAVAILARRAY_16, TIMEAVAILARRAY_17, TIMEAVAILARRAY_18, TIMEAVAILARRAY_19, TIMEAVAILARRAY_20, TIMEAVAILARRAY_21, TIMEAVAILARRAY_22, TIMEAVAILARRAY_23, TIMEAVAILARRAY_24, TIMEAVAILARRAY_25, TTLHOURS, TTLERNGS, TOTLTAXS, TTLDDTNS, TTLBNFTS, NTWPYRN, GRWGPRN, REGHOURS, REGERNGS, OVRTMHRS, OVTMEARN, DBLTMHRS, DBLTMERN, EICERNGS, COMMERNG, BSNEXERN, PNSNERNG, HOLDYHRS, HLDYEARN, VACTNHRS, VCTNERNG, SKTIMHRS, SKTMERNG, PCWKUNIT, PCWKERNG, SPCLERNG, CHGTPERN, REPTPERN, MNWGBLER, VACAVLBL, SIKTIMAV, STTPYPRD, ENPAYPRD, Uncollected_FICAMed_TaxP, Uncollected_FICASS_TaxP, RSNCHKVD, DEX_ROW_ID, AMTINWDS FROM .UPR10208 WHERE USERID = @USERID AND PRINTED = @PRINTED AND CHEKNMBR = @CHEKNMBR ORDER BY USERID ASC, PRINTED ASC, CHEKNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10208SS_4] TO [DYNGRP]
GO