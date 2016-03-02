SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10500N_1] (@BS int, @VCHRNMBR char(21), @TRXSORCE char(13), @TAXDTLID char(15), @ACTINDX int, @VCHRNMBR_RS char(21), @TRXSORCE_RS char(13), @TAXDTLID_RS char(15), @ACTINDX_RS int, @VCHRNMBR_RE char(21), @TRXSORCE_RE char(13), @TAXDTLID_RE char(15), @ACTINDX_RE int) AS  set nocount on IF @VCHRNMBR_RS IS NULL BEGIN SELECT TOP 25  VENDORID, VCHRNMBR, DOCTYPE, BACHNUMB, TAXDTLID, BKOUTTAX, TAXAMNT, ORTAXAMT, PCTAXAMT, ORPURTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, ACTINDX, TRXSORCE, TDTTXPUR, ORTXBPUR, TXDTTPUR, ORTOTPUR, CURRNIDX, POSTED, DEX_ROW_ID FROM .PM10500 WHERE ( VCHRNMBR = @VCHRNMBR AND TRXSORCE = @TRXSORCE AND TAXDTLID = @TAXDTLID AND ACTINDX > @ACTINDX OR VCHRNMBR = @VCHRNMBR AND TRXSORCE = @TRXSORCE AND TAXDTLID > @TAXDTLID OR VCHRNMBR = @VCHRNMBR AND TRXSORCE > @TRXSORCE OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, TRXSORCE ASC, TAXDTLID ASC, ACTINDX ASC END ELSE IF @VCHRNMBR_RS = @VCHRNMBR_RE BEGIN SELECT TOP 25  VENDORID, VCHRNMBR, DOCTYPE, BACHNUMB, TAXDTLID, BKOUTTAX, TAXAMNT, ORTAXAMT, PCTAXAMT, ORPURTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, ACTINDX, TRXSORCE, TDTTXPUR, ORTXBPUR, TXDTTPUR, ORTOTPUR, CURRNIDX, POSTED, DEX_ROW_ID FROM .PM10500 WHERE VCHRNMBR = @VCHRNMBR_RS AND TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( VCHRNMBR = @VCHRNMBR AND TRXSORCE = @TRXSORCE AND TAXDTLID = @TAXDTLID AND ACTINDX > @ACTINDX OR VCHRNMBR = @VCHRNMBR AND TRXSORCE = @TRXSORCE AND TAXDTLID > @TAXDTLID OR VCHRNMBR = @VCHRNMBR AND TRXSORCE > @TRXSORCE OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, TRXSORCE ASC, TAXDTLID ASC, ACTINDX ASC END ELSE BEGIN SELECT TOP 25  VENDORID, VCHRNMBR, DOCTYPE, BACHNUMB, TAXDTLID, BKOUTTAX, TAXAMNT, ORTAXAMT, PCTAXAMT, ORPURTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, ACTINDX, TRXSORCE, TDTTXPUR, ORTXBPUR, TXDTTPUR, ORTOTPUR, CURRNIDX, POSTED, DEX_ROW_ID FROM .PM10500 WHERE VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( VCHRNMBR = @VCHRNMBR AND TRXSORCE = @TRXSORCE AND TAXDTLID = @TAXDTLID AND ACTINDX > @ACTINDX OR VCHRNMBR = @VCHRNMBR AND TRXSORCE = @TRXSORCE AND TAXDTLID > @TAXDTLID OR VCHRNMBR = @VCHRNMBR AND TRXSORCE > @TRXSORCE OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, TRXSORCE ASC, TAXDTLID ASC, ACTINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10500N_1] TO [DYNGRP]
GO