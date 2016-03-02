SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM10601N_1] (@BS int, @RMDTYPAL smallint, @DOCNUMBR char(21), @TRXSORCE char(13), @TAXDTLID char(15), @RMDTYPAL_RS smallint, @DOCNUMBR_RS char(21), @TRXSORCE_RS char(13), @TAXDTLID_RS char(15), @RMDTYPAL_RE smallint, @DOCNUMBR_RE char(21), @TRXSORCE_RE char(13), @TAXDTLID_RE char(15)) AS  set nocount on IF @RMDTYPAL_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, RMDTYPAL, DOCNUMBR, CUSTNMBR, TAXDTLID, TRXSORCE, ACTINDX, BKOUTTAX, TAXAMNT, ORTAXAMT, STAXAMNT, ORSLSTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TAXDTSLS, ORTOTSLS, TDTTXSLS, ORTXSLS, POSTED, SEQNUMBR, CURRNIDX, DEX_ROW_ID FROM .RM10601 WHERE ( RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND TRXSORCE = @TRXSORCE AND TAXDTLID > @TAXDTLID OR RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND TRXSORCE > @TRXSORCE OR RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR RMDTYPAL > @RMDTYPAL ) ORDER BY RMDTYPAL ASC, DOCNUMBR ASC, TRXSORCE ASC, TAXDTLID ASC END ELSE IF @RMDTYPAL_RS = @RMDTYPAL_RE BEGIN SELECT TOP 25  BACHNUMB, RMDTYPAL, DOCNUMBR, CUSTNMBR, TAXDTLID, TRXSORCE, ACTINDX, BKOUTTAX, TAXAMNT, ORTAXAMT, STAXAMNT, ORSLSTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TAXDTSLS, ORTOTSLS, TDTTXSLS, ORTXSLS, POSTED, SEQNUMBR, CURRNIDX, DEX_ROW_ID FROM .RM10601 WHERE RMDTYPAL = @RMDTYPAL_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE AND ( RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND TRXSORCE = @TRXSORCE AND TAXDTLID > @TAXDTLID OR RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND TRXSORCE > @TRXSORCE OR RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR RMDTYPAL > @RMDTYPAL ) ORDER BY RMDTYPAL ASC, DOCNUMBR ASC, TRXSORCE ASC, TAXDTLID ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, RMDTYPAL, DOCNUMBR, CUSTNMBR, TAXDTLID, TRXSORCE, ACTINDX, BKOUTTAX, TAXAMNT, ORTAXAMT, STAXAMNT, ORSLSTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TAXDTSLS, ORTOTSLS, TDTTXSLS, ORTXSLS, POSTED, SEQNUMBR, CURRNIDX, DEX_ROW_ID FROM .RM10601 WHERE RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE AND ( RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND TRXSORCE = @TRXSORCE AND TAXDTLID > @TAXDTLID OR RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND TRXSORCE > @TRXSORCE OR RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR RMDTYPAL > @RMDTYPAL ) ORDER BY RMDTYPAL ASC, DOCNUMBR ASC, TRXSORCE ASC, TAXDTLID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM10601N_1] TO [DYNGRP]
GO
