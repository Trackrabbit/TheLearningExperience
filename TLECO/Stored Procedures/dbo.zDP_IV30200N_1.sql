SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30200N_1] (@BS int, @TRXSORCE char(13), @IVDOCTYP smallint, @DOCNUMBR char(21), @TRXSORCE_RS char(13), @IVDOCTYP_RS smallint, @DOCNUMBR_RS char(21), @TRXSORCE_RE char(13), @IVDOCTYP_RE smallint, @DOCNUMBR_RE char(21)) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, IVDOCTYP, DOCNUMBR, DOCDATE, BCHSOURC, BACHNUMB, NOTEINDX, GLPOSTDT, SRCRFRNCNMBR, SOURCEINDICATOR, DEX_ROW_TS, DEX_ROW_ID FROM .IV30200 WHERE ( TRXSORCE = @TRXSORCE AND IVDOCTYP = @IVDOCTYP AND DOCNUMBR > @DOCNUMBR OR TRXSORCE = @TRXSORCE AND IVDOCTYP > @IVDOCTYP OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, IVDOCTYP ASC, DOCNUMBR ASC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  TRXSORCE, IVDOCTYP, DOCNUMBR, DOCDATE, BCHSOURC, BACHNUMB, NOTEINDX, GLPOSTDT, SRCRFRNCNMBR, SOURCEINDICATOR, DEX_ROW_TS, DEX_ROW_ID FROM .IV30200 WHERE TRXSORCE = @TRXSORCE_RS AND IVDOCTYP BETWEEN @IVDOCTYP_RS AND @IVDOCTYP_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( TRXSORCE = @TRXSORCE AND IVDOCTYP = @IVDOCTYP AND DOCNUMBR > @DOCNUMBR OR TRXSORCE = @TRXSORCE AND IVDOCTYP > @IVDOCTYP OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, IVDOCTYP ASC, DOCNUMBR ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, IVDOCTYP, DOCNUMBR, DOCDATE, BCHSOURC, BACHNUMB, NOTEINDX, GLPOSTDT, SRCRFRNCNMBR, SOURCEINDICATOR, DEX_ROW_TS, DEX_ROW_ID FROM .IV30200 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND IVDOCTYP BETWEEN @IVDOCTYP_RS AND @IVDOCTYP_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( TRXSORCE = @TRXSORCE AND IVDOCTYP = @IVDOCTYP AND DOCNUMBR > @DOCNUMBR OR TRXSORCE = @TRXSORCE AND IVDOCTYP > @IVDOCTYP OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, IVDOCTYP ASC, DOCNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30200N_1] TO [DYNGRP]
GO
