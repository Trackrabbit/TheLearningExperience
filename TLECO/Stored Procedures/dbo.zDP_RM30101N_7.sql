SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM30101N_7] (@BS int, @RMDTYPAL smallint, @VOIDSTTS smallint, @DOCDATE datetime, @DEX_ROW_ID int, @RMDTYPAL_RS smallint, @VOIDSTTS_RS smallint, @DOCDATE_RS datetime, @RMDTYPAL_RE smallint, @VOIDSTTS_RE smallint, @DOCDATE_RE datetime) AS  set nocount on IF @RMDTYPAL_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, TAXSCHID, SLSCHDID, FRTSCHID, MSCSCHID, CURNCYID, SHIPMTHD, PYMTRMID, TRDISAMT, NOTEINDX, VOIDSTTS, VOIDDATE, BALFWDNM, CSHRCTYP, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BackoutTradeDisc, BKTFRTAM, BKTMSCAM, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM30101 WHERE ( RMDTYPAL = @RMDTYPAL AND VOIDSTTS = @VOIDSTTS AND DOCDATE = @DOCDATE AND DEX_ROW_ID > @DEX_ROW_ID OR RMDTYPAL = @RMDTYPAL AND VOIDSTTS = @VOIDSTTS AND DOCDATE > @DOCDATE OR RMDTYPAL = @RMDTYPAL AND VOIDSTTS > @VOIDSTTS OR RMDTYPAL > @RMDTYPAL ) ORDER BY RMDTYPAL ASC, VOIDSTTS ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE IF @RMDTYPAL_RS = @RMDTYPAL_RE BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, TAXSCHID, SLSCHDID, FRTSCHID, MSCSCHID, CURNCYID, SHIPMTHD, PYMTRMID, TRDISAMT, NOTEINDX, VOIDSTTS, VOIDDATE, BALFWDNM, CSHRCTYP, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BackoutTradeDisc, BKTFRTAM, BKTMSCAM, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM30101 WHERE RMDTYPAL = @RMDTYPAL_RS AND VOIDSTTS BETWEEN @VOIDSTTS_RS AND @VOIDSTTS_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( RMDTYPAL = @RMDTYPAL AND VOIDSTTS = @VOIDSTTS AND DOCDATE = @DOCDATE AND DEX_ROW_ID > @DEX_ROW_ID OR RMDTYPAL = @RMDTYPAL AND VOIDSTTS = @VOIDSTTS AND DOCDATE > @DOCDATE OR RMDTYPAL = @RMDTYPAL AND VOIDSTTS > @VOIDSTTS OR RMDTYPAL > @RMDTYPAL ) ORDER BY RMDTYPAL ASC, VOIDSTTS ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, TAXSCHID, SLSCHDID, FRTSCHID, MSCSCHID, CURNCYID, SHIPMTHD, PYMTRMID, TRDISAMT, NOTEINDX, VOIDSTTS, VOIDDATE, BALFWDNM, CSHRCTYP, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BackoutTradeDisc, BKTFRTAM, BKTMSCAM, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM30101 WHERE RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND VOIDSTTS BETWEEN @VOIDSTTS_RS AND @VOIDSTTS_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( RMDTYPAL = @RMDTYPAL AND VOIDSTTS = @VOIDSTTS AND DOCDATE = @DOCDATE AND DEX_ROW_ID > @DEX_ROW_ID OR RMDTYPAL = @RMDTYPAL AND VOIDSTTS = @VOIDSTTS AND DOCDATE > @DOCDATE OR RMDTYPAL = @RMDTYPAL AND VOIDSTTS > @VOIDSTTS OR RMDTYPAL > @RMDTYPAL ) ORDER BY RMDTYPAL ASC, VOIDSTTS ASC, DOCDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30101N_7] TO [DYNGRP]
GO
