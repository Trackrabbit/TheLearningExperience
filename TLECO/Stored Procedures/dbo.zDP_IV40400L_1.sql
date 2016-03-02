SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40400L_1] (@ITMCLSCD_RS char(11), @ITMCLSCD_RE char(11)) AS  set nocount on IF @ITMCLSCD_RS IS NULL BEGIN SELECT TOP 25  ITMCLSCD, ITMCLSDC, DEFLTCLS, NOTEINDX, ITEMTYPE, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ALWBKORD, ITMGEDSC, TAXOPTNS, ITMTSHID, Purchase_Tax_Options, Purchase_Item_Tax_Schedu, UOMSCHDL, VCTNMTHD, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, DECPLQTY, IVIVINDX, IVIVOFIX, IVCOGSIX, IVSLSIDX, IVSLDSIX, IVSLRNIX, IVINUSIX, IVINSVIX, IVDMGIDX, IVVARIDX, DPSHPIDX, PURPVIDX, UPPVIDX, IVRETIDX, ASMVRIDX, PRCLEVEL, PriceGroup, PRICMTHD, TCC, Revalue_Inventory, Tolerance_Percentage, CNTRYORGN, STTSTCLVLPRCNTG, INCLUDEINDP, LOTEXPWARN, LOTEXPWARNDAYS, UseQtyOverageTolerance, UseQtyShortageTolerance, QtyOverTolerancePercent, QtyShortTolerancePercent, IVSCRVIX, DEX_ROW_ID FROM .IV40400 ORDER BY ITMCLSCD DESC END ELSE IF @ITMCLSCD_RS = @ITMCLSCD_RE BEGIN SELECT TOP 25  ITMCLSCD, ITMCLSDC, DEFLTCLS, NOTEINDX, ITEMTYPE, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ALWBKORD, ITMGEDSC, TAXOPTNS, ITMTSHID, Purchase_Tax_Options, Purchase_Item_Tax_Schedu, UOMSCHDL, VCTNMTHD, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, DECPLQTY, IVIVINDX, IVIVOFIX, IVCOGSIX, IVSLSIDX, IVSLDSIX, IVSLRNIX, IVINUSIX, IVINSVIX, IVDMGIDX, IVVARIDX, DPSHPIDX, PURPVIDX, UPPVIDX, IVRETIDX, ASMVRIDX, PRCLEVEL, PriceGroup, PRICMTHD, TCC, Revalue_Inventory, Tolerance_Percentage, CNTRYORGN, STTSTCLVLPRCNTG, INCLUDEINDP, LOTEXPWARN, LOTEXPWARNDAYS, UseQtyOverageTolerance, UseQtyShortageTolerance, QtyOverTolerancePercent, QtyShortTolerancePercent, IVSCRVIX, DEX_ROW_ID FROM .IV40400 WHERE ITMCLSCD = @ITMCLSCD_RS ORDER BY ITMCLSCD DESC END ELSE BEGIN SELECT TOP 25  ITMCLSCD, ITMCLSDC, DEFLTCLS, NOTEINDX, ITEMTYPE, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ALWBKORD, ITMGEDSC, TAXOPTNS, ITMTSHID, Purchase_Tax_Options, Purchase_Item_Tax_Schedu, UOMSCHDL, VCTNMTHD, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, DECPLQTY, IVIVINDX, IVIVOFIX, IVCOGSIX, IVSLSIDX, IVSLDSIX, IVSLRNIX, IVINUSIX, IVINSVIX, IVDMGIDX, IVVARIDX, DPSHPIDX, PURPVIDX, UPPVIDX, IVRETIDX, ASMVRIDX, PRCLEVEL, PriceGroup, PRICMTHD, TCC, Revalue_Inventory, Tolerance_Percentage, CNTRYORGN, STTSTCLVLPRCNTG, INCLUDEINDP, LOTEXPWARN, LOTEXPWARNDAYS, UseQtyOverageTolerance, UseQtyShortageTolerance, QtyOverTolerancePercent, QtyShortTolerancePercent, IVSCRVIX, DEX_ROW_ID FROM .IV40400 WHERE ITMCLSCD BETWEEN @ITMCLSCD_RS AND @ITMCLSCD_RE ORDER BY ITMCLSCD DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40400L_1] TO [DYNGRP]
GO
