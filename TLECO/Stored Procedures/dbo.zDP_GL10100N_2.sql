SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL10100N_2] (@BS int, @OFFINDX int, @DEX_ROW_ID int, @OFFINDX_RS int, @OFFINDX_RE int) AS  set nocount on IF @OFFINDX_RS IS NULL BEGIN SELECT TOP 25  BSNSFMID, JRNENTRY, CURNCYID, OFFINDX, TRXDATE, TRXBALNC, PSTGSTUS, LASTUSER, LSTDTEDT, USWHPSTD, PSTDAMNT, REFRENCE, SOURCDOC, SQNCLINE, TRXSORCE, GLHDRMSG, GLHDRMS2, NOTEINDX, GLHDRVAL, PERIODID, OPENYEAR, CLOSEDYR, ERRSTATE, HISTRX, OFFACTYP, OFFBLCLC, OFFXVAR, OFFPSTYP, DOCDATE, VOIDED, DEX_ROW_TS, DEX_ROW_ID FROM .GL10100 WHERE ( OFFINDX = @OFFINDX AND DEX_ROW_ID > @DEX_ROW_ID OR OFFINDX > @OFFINDX ) ORDER BY OFFINDX ASC, DEX_ROW_ID ASC END ELSE IF @OFFINDX_RS = @OFFINDX_RE BEGIN SELECT TOP 25  BSNSFMID, JRNENTRY, CURNCYID, OFFINDX, TRXDATE, TRXBALNC, PSTGSTUS, LASTUSER, LSTDTEDT, USWHPSTD, PSTDAMNT, REFRENCE, SOURCDOC, SQNCLINE, TRXSORCE, GLHDRMSG, GLHDRMS2, NOTEINDX, GLHDRVAL, PERIODID, OPENYEAR, CLOSEDYR, ERRSTATE, HISTRX, OFFACTYP, OFFBLCLC, OFFXVAR, OFFPSTYP, DOCDATE, VOIDED, DEX_ROW_TS, DEX_ROW_ID FROM .GL10100 WHERE OFFINDX = @OFFINDX_RS AND ( OFFINDX = @OFFINDX AND DEX_ROW_ID > @DEX_ROW_ID OR OFFINDX > @OFFINDX ) ORDER BY OFFINDX ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSNSFMID, JRNENTRY, CURNCYID, OFFINDX, TRXDATE, TRXBALNC, PSTGSTUS, LASTUSER, LSTDTEDT, USWHPSTD, PSTDAMNT, REFRENCE, SOURCDOC, SQNCLINE, TRXSORCE, GLHDRMSG, GLHDRMS2, NOTEINDX, GLHDRVAL, PERIODID, OPENYEAR, CLOSEDYR, ERRSTATE, HISTRX, OFFACTYP, OFFBLCLC, OFFXVAR, OFFPSTYP, DOCDATE, VOIDED, DEX_ROW_TS, DEX_ROW_ID FROM .GL10100 WHERE OFFINDX BETWEEN @OFFINDX_RS AND @OFFINDX_RE AND ( OFFINDX = @OFFINDX AND DEX_ROW_ID > @DEX_ROW_ID OR OFFINDX > @OFFINDX ) ORDER BY OFFINDX ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10100N_2] TO [DYNGRP]
GO
