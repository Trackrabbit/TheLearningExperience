SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT10302L_2] (@INTRSTTRTRNID_RS char(21), @Included_On_Return_RS tinyint, @INTRSTTRTRNID_RE char(21), @Included_On_Return_RE tinyint) AS  set nocount on IF @INTRSTTRTRNID_RS IS NULL BEGIN SELECT TOP 25  SERIES, DOCTYPE, DOCNUMBR, SQNCLINE, CUSTNMBR, CCode, TXRGNNUM, TCC, NUMASS, QUANTITY, LMASS, TMCODE, TRANSNATURE, SUPPUNITS, TRADREF, GOODSVALUE, TAXAMNT, NOTEINDX, DOCDATE, Tax_Date, Reference_Date, POSTED, VOIDSTTS, ORGDSVAL, ORTAXAMT, CURRNIDX, ITEMNMBR, ITEMDESC, PRT, RGN, CNTRYORGN, PRCDRRGM, INCTRMS, STTSTCLVL, ORGNTNGSTTSTCLVL, Included_On_Return, INTRSTTRTRNID, DECLID, LOCNCODE, ARRDISP, PERIOD, AUDITTRAIL, DEX_ROW_ID FROM .VAT10302 ORDER BY INTRSTTRTRNID DESC, Included_On_Return DESC, DEX_ROW_ID DESC END ELSE IF @INTRSTTRTRNID_RS = @INTRSTTRTRNID_RE BEGIN SELECT TOP 25  SERIES, DOCTYPE, DOCNUMBR, SQNCLINE, CUSTNMBR, CCode, TXRGNNUM, TCC, NUMASS, QUANTITY, LMASS, TMCODE, TRANSNATURE, SUPPUNITS, TRADREF, GOODSVALUE, TAXAMNT, NOTEINDX, DOCDATE, Tax_Date, Reference_Date, POSTED, VOIDSTTS, ORGDSVAL, ORTAXAMT, CURRNIDX, ITEMNMBR, ITEMDESC, PRT, RGN, CNTRYORGN, PRCDRRGM, INCTRMS, STTSTCLVL, ORGNTNGSTTSTCLVL, Included_On_Return, INTRSTTRTRNID, DECLID, LOCNCODE, ARRDISP, PERIOD, AUDITTRAIL, DEX_ROW_ID FROM .VAT10302 WHERE INTRSTTRTRNID = @INTRSTTRTRNID_RS AND Included_On_Return BETWEEN @Included_On_Return_RS AND @Included_On_Return_RE ORDER BY INTRSTTRTRNID DESC, Included_On_Return DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SERIES, DOCTYPE, DOCNUMBR, SQNCLINE, CUSTNMBR, CCode, TXRGNNUM, TCC, NUMASS, QUANTITY, LMASS, TMCODE, TRANSNATURE, SUPPUNITS, TRADREF, GOODSVALUE, TAXAMNT, NOTEINDX, DOCDATE, Tax_Date, Reference_Date, POSTED, VOIDSTTS, ORGDSVAL, ORTAXAMT, CURRNIDX, ITEMNMBR, ITEMDESC, PRT, RGN, CNTRYORGN, PRCDRRGM, INCTRMS, STTSTCLVL, ORGNTNGSTTSTCLVL, Included_On_Return, INTRSTTRTRNID, DECLID, LOCNCODE, ARRDISP, PERIOD, AUDITTRAIL, DEX_ROW_ID FROM .VAT10302 WHERE INTRSTTRTRNID BETWEEN @INTRSTTRTRNID_RS AND @INTRSTTRTRNID_RE AND Included_On_Return BETWEEN @Included_On_Return_RS AND @Included_On_Return_RE ORDER BY INTRSTTRTRNID DESC, Included_On_Return DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT10302L_2] TO [DYNGRP]
GO