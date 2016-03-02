SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CT00102SS_5] (@ITMGEDSC char(11), @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  ITEMNMBR, ITEMDESC, NOTEINDX, ITMSHNAM, ITEMTYPE, ITMGEDSC, STNDCOST, CURRCOST, LISTPRCE, ITEMSHWT, DECPLQTY, DECPLCUR, ITMTSHID, TAXOPTNS, COMMCODE, ICIVMFIXI, ICIVMVIXI, ICIVLVIXI, ICIVLABVAROHIX_I, ICIVLABVAROHVARIX_I, ICIVMEVIXI, ICIVMACHEFFVAROHIX_I, ICIVMACHEFFVAROHVARIX_I, ICIVMUIXI, ICIVMATUSAGEVAROHIX_I, ICIVMATUSAGEVAROHVARIX_I, ICIVOVIXI, ICIVPVIXI, ICIVSCIXI, ICIVROIXI, ICIVWMIXI, ICIVUPPV_I, ICIVWMATOHIXI, ICIVWIPMATOHVARIX_I, ICIVWLIXI, ICIVWLOHIXI, ICIVWIPLABOHVARIX_I, ICIVWCIXI, ICIVWMACHOHIXI, ICIVWIPMACHOHVARIX_I, ICIVWOIXI, ICIVCMIXI, ICIVCMATOHIXI, ICIVCOGSMATOHVARIX_I, ICIVCLIXI, ICIVCLABOHIXI, ICIVCOGSLABOHVARIX_I, ICIVCCIXI, ICIVCMACHOHIXI, ICIVCOGSMACHOHVARIX_I, ICIVCOIXI, ICIVILIXI, ICIVILABOHIXI, ICIVINVLABOHVARIX_I, ICIVIMXI, ICIVIMACHOHIXI, ICIVINVMACHOHVARIX_I, ICIVIMATOHIXI, ICIVINVMATOHVARIX_I, ITMCLSCD, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ITMKTFLG, ALWBKORD, FSHGDFLG, CMPTFLAG, VCTNMTHD, UOMSCHDL, ALTITEM1, ALTITEM2, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, MSTRCDTY, MODIFDT, MDFUSRID, CREATDDT, WRNTYDYS, PRCLEVEL, DEX_ROW_ID FROM .CT00102 WHERE ITMGEDSC = @ITMGEDSC AND ITEMNMBR = @ITEMNMBR ORDER BY ITMGEDSC ASC, ITEMNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CT00102SS_5] TO [DYNGRP]
GO
