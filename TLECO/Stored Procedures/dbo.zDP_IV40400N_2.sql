SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40400N_2] (@BS int, @ITMCLSDC char(31), @ITMCLSCD char(11), @ITMCLSDC_RS char(31), @ITMCLSCD_RS char(11), @ITMCLSDC_RE char(31), @ITMCLSCD_RE char(11)) AS  set nocount on IF @ITMCLSDC_RS IS NULL BEGIN SELECT TOP 25  ITMCLSCD, ITMCLSDC, DEFLTCLS, NOTEINDX, ITEMTYPE, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ALWBKORD, ITMGEDSC, TAXOPTNS, ITMTSHID, Purchase_Tax_Options, Purchase_Item_Tax_Schedu, UOMSCHDL, VCTNMTHD, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, DECPLQTY, IVIVINDX, IVIVOFIX, IVCOGSIX, IVSLSIDX, IVSLDSIX, IVSLRNIX, IVINUSIX, IVINSVIX, IVDMGIDX, IVVARIDX, DPSHPIDX, PURPVIDX, UPPVIDX, IVRETIDX, ASMVRIDX, PRCLEVEL, PriceGroup, PRICMTHD, TCC, Revalue_Inventory, Tolerance_Percentage, CNTRYORGN, STTSTCLVLPRCNTG, INCLUDEINDP, LOTEXPWARN, LOTEXPWARNDAYS, UseQtyOverageTolerance, UseQtyShortageTolerance, QtyOverTolerancePercent, QtyShortTolerancePercent, IVSCRVIX, DEX_ROW_ID FROM .IV40400 WHERE ( ITMCLSDC = @ITMCLSDC AND ITMCLSCD > @ITMCLSCD OR ITMCLSDC > @ITMCLSDC ) ORDER BY ITMCLSDC ASC, ITMCLSCD ASC END ELSE IF @ITMCLSDC_RS = @ITMCLSDC_RE BEGIN SELECT TOP 25  ITMCLSCD, ITMCLSDC, DEFLTCLS, NOTEINDX, ITEMTYPE, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ALWBKORD, ITMGEDSC, TAXOPTNS, ITMTSHID, Purchase_Tax_Options, Purchase_Item_Tax_Schedu, UOMSCHDL, VCTNMTHD, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, DECPLQTY, IVIVINDX, IVIVOFIX, IVCOGSIX, IVSLSIDX, IVSLDSIX, IVSLRNIX, IVINUSIX, IVINSVIX, IVDMGIDX, IVVARIDX, DPSHPIDX, PURPVIDX, UPPVIDX, IVRETIDX, ASMVRIDX, PRCLEVEL, PriceGroup, PRICMTHD, TCC, Revalue_Inventory, Tolerance_Percentage, CNTRYORGN, STTSTCLVLPRCNTG, INCLUDEINDP, LOTEXPWARN, LOTEXPWARNDAYS, UseQtyOverageTolerance, UseQtyShortageTolerance, QtyOverTolerancePercent, QtyShortTolerancePercent, IVSCRVIX, DEX_ROW_ID FROM .IV40400 WHERE ITMCLSDC = @ITMCLSDC_RS AND ITMCLSCD BETWEEN @ITMCLSCD_RS AND @ITMCLSCD_RE AND ( ITMCLSDC = @ITMCLSDC AND ITMCLSCD > @ITMCLSCD OR ITMCLSDC > @ITMCLSDC ) ORDER BY ITMCLSDC ASC, ITMCLSCD ASC END ELSE BEGIN SELECT TOP 25  ITMCLSCD, ITMCLSDC, DEFLTCLS, NOTEINDX, ITEMTYPE, ITMTRKOP, LOTTYPE, KPERHIST, KPTRXHST, KPCALHST, KPDSTHST, ALWBKORD, ITMGEDSC, TAXOPTNS, ITMTSHID, Purchase_Tax_Options, Purchase_Item_Tax_Schedu, UOMSCHDL, VCTNMTHD, USCATVLS_1, USCATVLS_2, USCATVLS_3, USCATVLS_4, USCATVLS_5, USCATVLS_6, DECPLQTY, IVIVINDX, IVIVOFIX, IVCOGSIX, IVSLSIDX, IVSLDSIX, IVSLRNIX, IVINUSIX, IVINSVIX, IVDMGIDX, IVVARIDX, DPSHPIDX, PURPVIDX, UPPVIDX, IVRETIDX, ASMVRIDX, PRCLEVEL, PriceGroup, PRICMTHD, TCC, Revalue_Inventory, Tolerance_Percentage, CNTRYORGN, STTSTCLVLPRCNTG, INCLUDEINDP, LOTEXPWARN, LOTEXPWARNDAYS, UseQtyOverageTolerance, UseQtyShortageTolerance, QtyOverTolerancePercent, QtyShortTolerancePercent, IVSCRVIX, DEX_ROW_ID FROM .IV40400 WHERE ITMCLSDC BETWEEN @ITMCLSDC_RS AND @ITMCLSDC_RE AND ITMCLSCD BETWEEN @ITMCLSCD_RS AND @ITMCLSCD_RE AND ( ITMCLSDC = @ITMCLSDC AND ITMCLSCD > @ITMCLSCD OR ITMCLSDC > @ITMCLSDC ) ORDER BY ITMCLSDC ASC, ITMCLSCD ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40400N_2] TO [DYNGRP]
GO
