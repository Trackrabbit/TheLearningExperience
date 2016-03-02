SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM30101L_5] (@DOCDATE_RS datetime, @DOCDATE_RE datetime) AS  set nocount on IF @DOCDATE_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, TAXSCHID, SLSCHDID, FRTSCHID, MSCSCHID, CURNCYID, SHIPMTHD, PYMTRMID, TRDISAMT, NOTEINDX, VOIDSTTS, VOIDDATE, BALFWDNM, CSHRCTYP, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BackoutTradeDisc, BKTFRTAM, BKTMSCAM, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM30101 ORDER BY DOCDATE DESC, DEX_ROW_ID DESC END ELSE IF @DOCDATE_RS = @DOCDATE_RE BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, TAXSCHID, SLSCHDID, FRTSCHID, MSCSCHID, CURNCYID, SHIPMTHD, PYMTRMID, TRDISAMT, NOTEINDX, VOIDSTTS, VOIDDATE, BALFWDNM, CSHRCTYP, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BackoutTradeDisc, BKTFRTAM, BKTMSCAM, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM30101 WHERE DOCDATE = @DOCDATE_RS ORDER BY DOCDATE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, TAXSCHID, SLSCHDID, FRTSCHID, MSCSCHID, CURNCYID, SHIPMTHD, PYMTRMID, TRDISAMT, NOTEINDX, VOIDSTTS, VOIDDATE, BALFWDNM, CSHRCTYP, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BackoutTradeDisc, BKTFRTAM, BKTMSCAM, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM30101 WHERE DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE ORDER BY DOCDATE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30101L_5] TO [DYNGRP]
GO
