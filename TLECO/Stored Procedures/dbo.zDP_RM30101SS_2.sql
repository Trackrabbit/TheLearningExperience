SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM30101SS_2] (@CUSTNMBR char(15), @RMDTYPAL smallint, @DOCDATE datetime) AS  set nocount on SELECT TOP 1  CUSTNMBR, CPRCSTNM, DOCNUMBR, CHEKNMBR, BACHNUMB, BCHSOURC, TRXSORCE, RMDTYPAL, DUEDATE, DOCDATE, POSTDATE, PSTUSRID, GLPOSTDT, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, SLSAMNT, COSTAMNT, FRTAMNT, MISCAMNT, TAXAMNT, COMDLRAM, CASHAMNT, DISTKNAM, DISAVAMT, DISCRTND, DISCDATE, DSCDLRAM, DSCPCTAM, WROFAMNT, TRXDSCRN, CSPORNBR, SLPRSNID, SLSTERCD, DINVPDOF, PPSAMDED, GSTDSAMT, DELETE1, TAXSCHID, SLSCHDID, FRTSCHID, MSCSCHID, CURNCYID, SHIPMTHD, PYMTRMID, TRDISAMT, NOTEINDX, VOIDSTTS, VOIDDATE, BALFWDNM, CSHRCTYP, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, Electronic, ECTRX, BKTSLSAM, BackoutTradeDisc, BKTFRTAM, BKTMSCAM, Factoring, DIRECTDEBIT, ADRSCODE, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM30101 WHERE CUSTNMBR = @CUSTNMBR AND RMDTYPAL = @RMDTYPAL AND DOCDATE = @DOCDATE ORDER BY CUSTNMBR ASC, RMDTYPAL ASC, DOCDATE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30101SS_2] TO [DYNGRP]
GO
