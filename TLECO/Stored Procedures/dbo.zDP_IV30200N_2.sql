SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30200N_2] (@BS int, @DOCNUMBR char(21), @IVDOCTYP smallint, @DOCNUMBR_RS char(21), @IVDOCTYP_RS smallint, @DOCNUMBR_RE char(21), @IVDOCTYP_RE smallint) AS  set nocount on IF @DOCNUMBR_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, IVDOCTYP, DOCNUMBR, DOCDATE, BCHSOURC, BACHNUMB, NOTEINDX, GLPOSTDT, SRCRFRNCNMBR, SOURCEINDICATOR, DEX_ROW_TS, DEX_ROW_ID FROM .IV30200 WHERE ( DOCNUMBR = @DOCNUMBR AND IVDOCTYP > @IVDOCTYP OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, IVDOCTYP ASC END ELSE IF @DOCNUMBR_RS = @DOCNUMBR_RE BEGIN SELECT TOP 25  TRXSORCE, IVDOCTYP, DOCNUMBR, DOCDATE, BCHSOURC, BACHNUMB, NOTEINDX, GLPOSTDT, SRCRFRNCNMBR, SOURCEINDICATOR, DEX_ROW_TS, DEX_ROW_ID FROM .IV30200 WHERE DOCNUMBR = @DOCNUMBR_RS AND IVDOCTYP BETWEEN @IVDOCTYP_RS AND @IVDOCTYP_RE AND ( DOCNUMBR = @DOCNUMBR AND IVDOCTYP > @IVDOCTYP OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, IVDOCTYP ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, IVDOCTYP, DOCNUMBR, DOCDATE, BCHSOURC, BACHNUMB, NOTEINDX, GLPOSTDT, SRCRFRNCNMBR, SOURCEINDICATOR, DEX_ROW_TS, DEX_ROW_ID FROM .IV30200 WHERE DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND IVDOCTYP BETWEEN @IVDOCTYP_RS AND @IVDOCTYP_RE AND ( DOCNUMBR = @DOCNUMBR AND IVDOCTYP > @IVDOCTYP OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, IVDOCTYP ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30200N_2] TO [DYNGRP]
GO
