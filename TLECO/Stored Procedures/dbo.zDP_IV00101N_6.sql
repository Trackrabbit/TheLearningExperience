SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00101N_6] (@BS int, @UOMSCHDL char(11), @DEX_ROW_ID int, @UOMSCHDL_RS char(11), @UOMSCHDL_RE char(11)) AS  set nocount on IF @UOMSCHDL_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, NOTEINDX, ITMSHNAM, ITEMTYPE, ITMGEDSC, STNDCOST, CURRCOST, ITEMSHWT, DECPLQTY, DECPLCUR, ITMTSHID, TAXOPTNS, IVIVINDX, IVIVOFIX, IVCOGSIX, IVSLSIDX, IVSLDSIX, IVSLRNIX, IVINUSIX, IVINSVIX, IVDMGIDX, IVVARIDX, DPSHPIDX, PURPVIDX, UPPVIDX, IVRETIDX, ASMVRIDX, ITMCLSCD, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ALWBKORD, VCTNMTHD, UOMSCHDL, ALTITEM1, ALTITEM2, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, MSTRCDTY, MODIFDT, CREATDDT, WRNTYDYS, PRCLEVEL, LOCNCODE, PINFLIDX, PURMCIDX, IVINFIDX, INVMCIDX, CGSINFLX, CGSMCIDX, ITEMCODE, TCC, PriceGroup, PRICMTHD, PRCHSUOM, SELNGUOM, KTACCTSR, LASTGENSN, ABCCODE, Revalue_Inventory, Tolerance_Percentage, Purchase_Item_Tax_Schedu, Purchase_Tax_Options, ITMPLNNNGTYP, STTSTCLVLPRCNTG, CNTRYORGN, INACTIVE, MINSHELF1, MINSHELF2, INCLUDEINDP, LOTEXPWARN, LOTEXPWARNDAYS, LASTGENLOT, Lot_Split_Quantity, UseQtyOverageTolerance, UseQtyShortageTolerance, QtyOverTolerancePercent, QtyShortTolerancePercent, IVSCRVIX, DEX_ROW_TS, DEX_ROW_ID FROM .IV00101 WHERE ( UOMSCHDL = @UOMSCHDL AND DEX_ROW_ID > @DEX_ROW_ID OR UOMSCHDL > @UOMSCHDL ) ORDER BY UOMSCHDL ASC, DEX_ROW_ID ASC END ELSE IF @UOMSCHDL_RS = @UOMSCHDL_RE BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, NOTEINDX, ITMSHNAM, ITEMTYPE, ITMGEDSC, STNDCOST, CURRCOST, ITEMSHWT, DECPLQTY, DECPLCUR, ITMTSHID, TAXOPTNS, IVIVINDX, IVIVOFIX, IVCOGSIX, IVSLSIDX, IVSLDSIX, IVSLRNIX, IVINUSIX, IVINSVIX, IVDMGIDX, IVVARIDX, DPSHPIDX, PURPVIDX, UPPVIDX, IVRETIDX, ASMVRIDX, ITMCLSCD, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ALWBKORD, VCTNMTHD, UOMSCHDL, ALTITEM1, ALTITEM2, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, MSTRCDTY, MODIFDT, CREATDDT, WRNTYDYS, PRCLEVEL, LOCNCODE, PINFLIDX, PURMCIDX, IVINFIDX, INVMCIDX, CGSINFLX, CGSMCIDX, ITEMCODE, TCC, PriceGroup, PRICMTHD, PRCHSUOM, SELNGUOM, KTACCTSR, LASTGENSN, ABCCODE, Revalue_Inventory, Tolerance_Percentage, Purchase_Item_Tax_Schedu, Purchase_Tax_Options, ITMPLNNNGTYP, STTSTCLVLPRCNTG, CNTRYORGN, INACTIVE, MINSHELF1, MINSHELF2, INCLUDEINDP, LOTEXPWARN, LOTEXPWARNDAYS, LASTGENLOT, Lot_Split_Quantity, UseQtyOverageTolerance, UseQtyShortageTolerance, QtyOverTolerancePercent, QtyShortTolerancePercent, IVSCRVIX, DEX_ROW_TS, DEX_ROW_ID FROM .IV00101 WHERE UOMSCHDL = @UOMSCHDL_RS AND ( UOMSCHDL = @UOMSCHDL AND DEX_ROW_ID > @DEX_ROW_ID OR UOMSCHDL > @UOMSCHDL ) ORDER BY UOMSCHDL ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, ITEMDESC, NOTEINDX, ITMSHNAM, ITEMTYPE, ITMGEDSC, STNDCOST, CURRCOST, ITEMSHWT, DECPLQTY, DECPLCUR, ITMTSHID, TAXOPTNS, IVIVINDX, IVIVOFIX, IVCOGSIX, IVSLSIDX, IVSLDSIX, IVSLRNIX, IVINUSIX, IVINSVIX, IVDMGIDX, IVVARIDX, DPSHPIDX, PURPVIDX, UPPVIDX, IVRETIDX, ASMVRIDX, ITMCLSCD, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ALWBKORD, VCTNMTHD, UOMSCHDL, ALTITEM1, ALTITEM2, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, MSTRCDTY, MODIFDT, CREATDDT, WRNTYDYS, PRCLEVEL, LOCNCODE, PINFLIDX, PURMCIDX, IVINFIDX, INVMCIDX, CGSINFLX, CGSMCIDX, ITEMCODE, TCC, PriceGroup, PRICMTHD, PRCHSUOM, SELNGUOM, KTACCTSR, LASTGENSN, ABCCODE, Revalue_Inventory, Tolerance_Percentage, Purchase_Item_Tax_Schedu, Purchase_Tax_Options, ITMPLNNNGTYP, STTSTCLVLPRCNTG, CNTRYORGN, INACTIVE, MINSHELF1, MINSHELF2, INCLUDEINDP, LOTEXPWARN, LOTEXPWARNDAYS, LASTGENLOT, Lot_Split_Quantity, UseQtyOverageTolerance, UseQtyShortageTolerance, QtyOverTolerancePercent, QtyShortTolerancePercent, IVSCRVIX, DEX_ROW_TS, DEX_ROW_ID FROM .IV00101 WHERE UOMSCHDL BETWEEN @UOMSCHDL_RS AND @UOMSCHDL_RE AND ( UOMSCHDL = @UOMSCHDL AND DEX_ROW_ID > @DEX_ROW_ID OR UOMSCHDL > @UOMSCHDL ) ORDER BY UOMSCHDL ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00101N_6] TO [DYNGRP]
GO
