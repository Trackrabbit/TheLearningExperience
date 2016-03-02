SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM30101N_6] (@BS int, @CUSTNMBR char(15), @BALFWDNM char(21), @DEX_ROW_ID int, @CUSTNMBR_RS char(15), @BALFWDNM_RS char(21), @CUSTNMBR_RE char(15), @BALFWDNM_RE char(21)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, TAXSCHID, SLSCHDID, FRTSCHID, MSCSCHID, CURNCYID, SHIPMTHD, PYMTRMID, TRDISAMT, NOTEINDX, VOIDSTTS, VOIDDATE, BALFWDNM, CSHRCTYP, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BackoutTradeDisc, BKTFRTAM, BKTMSCAM, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM30101 WHERE ( CUSTNMBR = @CUSTNMBR AND BALFWDNM = @BALFWDNM AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND BALFWDNM > @BALFWDNM OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, BALFWDNM ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, TAXSCHID, SLSCHDID, FRTSCHID, MSCSCHID, CURNCYID, SHIPMTHD, PYMTRMID, TRDISAMT, NOTEINDX, VOIDSTTS, VOIDDATE, BALFWDNM, CSHRCTYP, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BackoutTradeDisc, BKTFRTAM, BKTMSCAM, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM30101 WHERE CUSTNMBR = @CUSTNMBR_RS AND BALFWDNM BETWEEN @BALFWDNM_RS AND @BALFWDNM_RE AND ( CUSTNMBR = @CUSTNMBR AND BALFWDNM = @BALFWDNM AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND BALFWDNM > @BALFWDNM OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, BALFWDNM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, TAXSCHID, SLSCHDID, FRTSCHID, MSCSCHID, CURNCYID, SHIPMTHD, PYMTRMID, TRDISAMT, NOTEINDX, VOIDSTTS, VOIDDATE, BALFWDNM, CSHRCTYP, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BackoutTradeDisc, BKTFRTAM, BKTMSCAM, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM30101 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND BALFWDNM BETWEEN @BALFWDNM_RS AND @BALFWDNM_RE AND ( CUSTNMBR = @CUSTNMBR AND BALFWDNM = @BALFWDNM AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND BALFWDNM > @BALFWDNM OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, BALFWDNM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30101N_6] TO [DYNGRP]
GO
