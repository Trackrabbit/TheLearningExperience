SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10102N_2] (@BS int, @SOPTYPE smallint, @SOPNUMBE char(21), @DISTTYPE smallint, @ACTINDX int, @DEX_ROW_ID int, @SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @DISTTYPE_RS smallint, @ACTINDX_RS int, @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21), @DISTTYPE_RE smallint, @ACTINDX_RE int) AS  set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, Contract_Exchange_Rate, DEX_ROW_ID FROM .SOP10102 WHERE ( SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND DISTTYPE = @DISTTYPE AND ACTINDX = @ACTINDX AND DEX_ROW_ID > @DEX_ROW_ID OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND DISTTYPE = @DISTTYPE AND ACTINDX > @ACTINDX OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND DISTTYPE > @DISTTYPE OR SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC, DISTTYPE ASC, ACTINDX ASC, DEX_ROW_ID ASC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, Contract_Exchange_Rate, DEX_ROW_ID FROM .SOP10102 WHERE SOPTYPE = @SOPTYPE_RS AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND DISTTYPE = @DISTTYPE AND ACTINDX = @ACTINDX AND DEX_ROW_ID > @DEX_ROW_ID OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND DISTTYPE = @DISTTYPE AND ACTINDX > @ACTINDX OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND DISTTYPE > @DISTTYPE OR SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC, DISTTYPE ASC, ACTINDX ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, Contract_Exchange_Rate, DEX_ROW_ID FROM .SOP10102 WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND DISTTYPE = @DISTTYPE AND ACTINDX = @ACTINDX AND DEX_ROW_ID > @DEX_ROW_ID OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND DISTTYPE = @DISTTYPE AND ACTINDX > @ACTINDX OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND DISTTYPE > @DISTTYPE OR SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC, DISTTYPE ASC, ACTINDX ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10102N_2] TO [DYNGRP]
GO
