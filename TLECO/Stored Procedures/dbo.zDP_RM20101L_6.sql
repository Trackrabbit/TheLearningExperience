SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM20101L_6] (@CPRCSTNM_RS char(15), @RMDTYPAL_RS smallint, @DOCNUMBR_RS char(21), @CPRCSTNM_RE char(15), @RMDTYPAL_RE smallint, @DOCNUMBR_RE char(21)) AS  set nocount on IF @CPRCSTNM_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, CSHRCTYP, CBKIDCRD, CBKIDCSH, CBKIDCHK, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISAVTKN, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, AGNGBUKT, VOIDSTTS, VOIDDATE, TAXSCHID, CURNCYID, PYMTRMID, SHIPMTHD, TRDISAMT, SLSCHDID, FRTSCHID, MSCSCHID, NOTEINDX, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BKTFRTAM, BKTMSCAM, BackoutTradeDisc, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM20101 ORDER BY CPRCSTNM DESC, RMDTYPAL DESC, DOCNUMBR DESC END ELSE IF @CPRCSTNM_RS = @CPRCSTNM_RE BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, CSHRCTYP, CBKIDCRD, CBKIDCSH, CBKIDCHK, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISAVTKN, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, AGNGBUKT, VOIDSTTS, VOIDDATE, TAXSCHID, CURNCYID, PYMTRMID, SHIPMTHD, TRDISAMT, SLSCHDID, FRTSCHID, MSCSCHID, NOTEINDX, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BKTFRTAM, BKTMSCAM, BackoutTradeDisc, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM20101 WHERE CPRCSTNM = @CPRCSTNM_RS AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY CPRCSTNM DESC, RMDTYPAL DESC, DOCNUMBR DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, CSHRCTYP, CBKIDCRD, CBKIDCSH, CBKIDCHK, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISAVTKN, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, AGNGBUKT, VOIDSTTS, VOIDDATE, TAXSCHID, CURNCYID, PYMTRMID, SHIPMTHD, TRDISAMT, SLSCHDID, FRTSCHID, MSCSCHID, NOTEINDX, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BKTFRTAM, BKTMSCAM, BackoutTradeDisc, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM20101 WHERE CPRCSTNM BETWEEN @CPRCSTNM_RS AND @CPRCSTNM_RE AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY CPRCSTNM DESC, RMDTYPAL DESC, DOCNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM20101L_6] TO [DYNGRP]
GO
