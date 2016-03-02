SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM20101SS_6] (@CPRCSTNM char(15), @RMDTYPAL smallint, @DOCNUMBR char(21)) AS  set nocount on SELECT TOP 1  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, CSHRCTYP, CBKIDCRD, CBKIDCSH, CBKIDCHK, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISAVTKN, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, AGNGBUKT, VOIDSTTS, VOIDDATE, TAXSCHID, CURNCYID, PYMTRMID, SHIPMTHD, TRDISAMT, SLSCHDID, FRTSCHID, MSCSCHID, NOTEINDX, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BKTFRTAM, BKTMSCAM, BackoutTradeDisc, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM20101 WHERE CPRCSTNM = @CPRCSTNM AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR ORDER BY CPRCSTNM ASC, RMDTYPAL ASC, DOCNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM20101SS_6] TO [DYNGRP]
GO
