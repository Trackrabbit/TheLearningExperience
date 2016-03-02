SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40400UN_3] (@BS int, @DEFLTCLS tinyint, @DEFLTCLS_RS tinyint, @DEFLTCLS_RE tinyint) AS  set nocount on IF @DEFLTCLS_RS IS NULL BEGIN SELECT TOP 25  ITMCLSCD, ITMCLSDC, DEFLTCLS, NOTEINDX, ITEMTYPE, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ALWBKORD, ITMGEDSC, TAXOPTNS, ITMTSHID, Purchase_Tax_Options, Purchase_Item_Tax_Schedu, UOMSCHDL, VCTNMTHD, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, DECPLQTY, IVIVINDX, IVIVOFIX, IVCOGSIX, IVSLSIDX, IVSLDSIX, IVSLRNIX, IVINUSIX, IVINSVIX, IVDMGIDX, IVVARIDX, DPSHPIDX, PURPVIDX, UPPVIDX, IVRETIDX, ASMVRIDX, PRCLEVEL, PriceGroup, PRICMTHD, TCC, Revalue_Inventory, Tolerance_Percentage, CNTRYORGN, STTSTCLVLPRCNTG, INCLUDEINDP, LOTEXPWARN, LOTEXPWARNDAYS, UseQtyOverageTolerance, UseQtyShortageTolerance, QtyOverTolerancePercent, QtyShortTolerancePercent, IVSCRVIX, DEX_ROW_ID FROM .IV40400 WHERE ( DEFLTCLS > @DEFLTCLS ) ORDER BY DEFLTCLS ASC, DEX_ROW_ID ASC END ELSE IF @DEFLTCLS_RS = @DEFLTCLS_RE BEGIN SELECT TOP 25  ITMCLSCD, ITMCLSDC, DEFLTCLS, NOTEINDX, ITEMTYPE, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ALWBKORD, ITMGEDSC, TAXOPTNS, ITMTSHID, Purchase_Tax_Options, Purchase_Item_Tax_Schedu, UOMSCHDL, VCTNMTHD, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, DECPLQTY, IVIVINDX, IVIVOFIX, IVCOGSIX, IVSLSIDX, IVSLDSIX, IVSLRNIX, IVINUSIX, IVINSVIX, IVDMGIDX, IVVARIDX, DPSHPIDX, PURPVIDX, UPPVIDX, IVRETIDX, ASMVRIDX, PRCLEVEL, PriceGroup, PRICMTHD, TCC, Revalue_Inventory, Tolerance_Percentage, CNTRYORGN, STTSTCLVLPRCNTG, INCLUDEINDP, LOTEXPWARN, LOTEXPWARNDAYS, UseQtyOverageTolerance, UseQtyShortageTolerance, QtyOverTolerancePercent, QtyShortTolerancePercent, IVSCRVIX, DEX_ROW_ID FROM .IV40400 WHERE DEFLTCLS = @DEFLTCLS_RS AND ( DEFLTCLS > @DEFLTCLS ) ORDER BY DEFLTCLS ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ITMCLSCD, ITMCLSDC, DEFLTCLS, NOTEINDX, ITEMTYPE, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ALWBKORD, ITMGEDSC, TAXOPTNS, ITMTSHID, Purchase_Tax_Options, Purchase_Item_Tax_Schedu, UOMSCHDL, VCTNMTHD, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, DECPLQTY, IVIVINDX, IVIVOFIX, IVCOGSIX, IVSLSIDX, IVSLDSIX, IVSLRNIX, IVINUSIX, IVINSVIX, IVDMGIDX, IVVARIDX, DPSHPIDX, PURPVIDX, UPPVIDX, IVRETIDX, ASMVRIDX, PRCLEVEL, PriceGroup, PRICMTHD, TCC, Revalue_Inventory, Tolerance_Percentage, CNTRYORGN, STTSTCLVLPRCNTG, INCLUDEINDP, LOTEXPWARN, LOTEXPWARNDAYS, UseQtyOverageTolerance, UseQtyShortageTolerance, QtyOverTolerancePercent, QtyShortTolerancePercent, IVSCRVIX, DEX_ROW_ID FROM .IV40400 WHERE DEFLTCLS BETWEEN @DEFLTCLS_RS AND @DEFLTCLS_RE AND ( DEFLTCLS > @DEFLTCLS ) ORDER BY DEFLTCLS ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40400UN_3] TO [DYNGRP]
GO
