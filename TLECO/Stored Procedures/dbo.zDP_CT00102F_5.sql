SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CT00102F_5] (@ITMGEDSC_RS char(11), @ITEMNMBR_RS char(31), @ITMGEDSC_RE char(11), @ITEMNMBR_RE char(31)) AS  set nocount on IF @ITMGEDSC_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, NOTEINDX, ITMSHNAM, ITEMTYPE, ITMGEDSC, STNDCOST, CURRCOST, LISTPRCE, ITEMSHWT, DECPLQTY, DECPLCUR, ITMTSHID, TAXOPTNS, COMMCODE, ICIVMFIXI, ICIVMVIXI, ICIVLVIXI, ICIVLABVAROHIX_I, ICIVLABVAROHVARIX_I, ICIVMEVIXI, ICIVMACHEFFVAROHIX_I, ICIVMACHEFFVAROHVARIX_I, ICIVMUIXI, ICIVMATUSAGEVAROHIX_I, ICIVMATUSAGEVAROHVARIX_I, ICIVOVIXI, ICIVPVIXI, ICIVSCIXI, ICIVROIXI, ICIVWMIXI, ICIVUPPV_I, ICIVWMATOHIXI, ICIVWIPMATOHVARIX_I, ICIVWLIXI, ICIVWLOHIXI, ICIVWIPLABOHVARIX_I, ICIVWCIXI, ICIVWMACHOHIXI, ICIVWIPMACHOHVARIX_I, ICIVWOIXI, ICIVCMIXI, ICIVCMATOHIXI, ICIVCOGSMATOHVARIX_I, ICIVCLIXI, ICIVCLABOHIXI, ICIVCOGSLABOHVARIX_I, ICIVCCIXI, ICIVCMACHOHIXI, ICIVCOGSMACHOHVARIX_I, ICIVCOIXI, ICIVILIXI, ICIVILABOHIXI, ICIVINVLABOHVARIX_I, ICIVIMXI, ICIVIMACHOHIXI, ICIVINVMACHOHVARIX_I, ICIVIMATOHIXI, ICIVINVMATOHVARIX_I, ITMCLSCD, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ITMKTFLG, ALWBKORD, FSHGDFLG, CMPTFLAG, VCTNMTHD, UOMSCHDL, ALTITEM1, ALTITEM2, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, MSTRCDTY, MODIFDT, MDFUSRID, CREATDDT, WRNTYDYS, PRCLEVEL, DEX_ROW_ID FROM .CT00102 ORDER BY ITMGEDSC ASC, ITEMNMBR ASC END ELSE IF @ITMGEDSC_RS = @ITMGEDSC_RE BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, NOTEINDX, ITMSHNAM, ITEMTYPE, ITMGEDSC, STNDCOST, CURRCOST, LISTPRCE, ITEMSHWT, DECPLQTY, DECPLCUR, ITMTSHID, TAXOPTNS, COMMCODE, ICIVMFIXI, ICIVMVIXI, ICIVLVIXI, ICIVLABVAROHIX_I, ICIVLABVAROHVARIX_I, ICIVMEVIXI, ICIVMACHEFFVAROHIX_I, ICIVMACHEFFVAROHVARIX_I, ICIVMUIXI, ICIVMATUSAGEVAROHIX_I, ICIVMATUSAGEVAROHVARIX_I, ICIVOVIXI, ICIVPVIXI, ICIVSCIXI, ICIVROIXI, ICIVWMIXI, ICIVUPPV_I, ICIVWMATOHIXI, ICIVWIPMATOHVARIX_I, ICIVWLIXI, ICIVWLOHIXI, ICIVWIPLABOHVARIX_I, ICIVWCIXI, ICIVWMACHOHIXI, ICIVWIPMACHOHVARIX_I, ICIVWOIXI, ICIVCMIXI, ICIVCMATOHIXI, ICIVCOGSMATOHVARIX_I, ICIVCLIXI, ICIVCLABOHIXI, ICIVCOGSLABOHVARIX_I, ICIVCCIXI, ICIVCMACHOHIXI, ICIVCOGSMACHOHVARIX_I, ICIVCOIXI, ICIVILIXI, ICIVILABOHIXI, ICIVINVLABOHVARIX_I, ICIVIMXI, ICIVIMACHOHIXI, ICIVINVMACHOHVARIX_I, ICIVIMATOHIXI, ICIVINVMATOHVARIX_I, ITMCLSCD, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ITMKTFLG, ALWBKORD, FSHGDFLG, CMPTFLAG, VCTNMTHD, UOMSCHDL, ALTITEM1, ALTITEM2, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, MSTRCDTY, MODIFDT, MDFUSRID, CREATDDT, WRNTYDYS, PRCLEVEL, DEX_ROW_ID FROM .CT00102 WHERE ITMGEDSC = @ITMGEDSC_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY ITMGEDSC ASC, ITEMNMBR ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, NOTEINDX, ITMSHNAM, ITEMTYPE, ITMGEDSC, STNDCOST, CURRCOST, LISTPRCE, ITEMSHWT, DECPLQTY, DECPLCUR, ITMTSHID, TAXOPTNS, COMMCODE, ICIVMFIXI, ICIVMVIXI, ICIVLVIXI, ICIVLABVAROHIX_I, ICIVLABVAROHVARIX_I, ICIVMEVIXI, ICIVMACHEFFVAROHIX_I, ICIVMACHEFFVAROHVARIX_I, ICIVMUIXI, ICIVMATUSAGEVAROHIX_I, ICIVMATUSAGEVAROHVARIX_I, ICIVOVIXI, ICIVPVIXI, ICIVSCIXI, ICIVROIXI, ICIVWMIXI, ICIVUPPV_I, ICIVWMATOHIXI, ICIVWIPMATOHVARIX_I, ICIVWLIXI, ICIVWLOHIXI, ICIVWIPLABOHVARIX_I, ICIVWCIXI, ICIVWMACHOHIXI, ICIVWIPMACHOHVARIX_I, ICIVWOIXI, ICIVCMIXI, ICIVCMATOHIXI, ICIVCOGSMATOHVARIX_I, ICIVCLIXI, ICIVCLABOHIXI, ICIVCOGSLABOHVARIX_I, ICIVCCIXI, ICIVCMACHOHIXI, ICIVCOGSMACHOHVARIX_I, ICIVCOIXI, ICIVILIXI, ICIVILABOHIXI, ICIVINVLABOHVARIX_I, ICIVIMXI, ICIVIMACHOHIXI, ICIVINVMACHOHVARIX_I, ICIVIMATOHIXI, ICIVINVMATOHVARIX_I, ITMCLSCD, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ITMKTFLG, ALWBKORD, FSHGDFLG, CMPTFLAG, VCTNMTHD, UOMSCHDL, ALTITEM1, ALTITEM2, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, MSTRCDTY, MODIFDT, MDFUSRID, CREATDDT, WRNTYDYS, PRCLEVEL, DEX_ROW_ID FROM .CT00102 WHERE ITMGEDSC BETWEEN @ITMGEDSC_RS AND @ITMGEDSC_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY ITMGEDSC ASC, ITEMNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CT00102F_5] TO [DYNGRP]
GO
