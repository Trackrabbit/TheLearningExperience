SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL10100SS_3] (@JRNENTRY int) AS  set nocount on SELECT TOP 1  BSNSFMID, JRNENTRY, CURNCYID, OFFINDX, TRXDATE, TRXBALNC, PSTGSTUS, LASTUSER, LSTDTEDT, USWHPSTD, PSTDAMNT, REFRENCE, SOURCDOC, SQNCLINE, TRXSORCE, GLHDRMSG, GLHDRMS2, NOTEINDX, GLHDRVAL, PERIODID, OPENYEAR, CLOSEDYR, ERRSTATE, HISTRX, OFFACTYP, OFFBLCLC, OFFXVAR, OFFPSTYP, DOCDATE, VOIDED, DEX_ROW_TS, DEX_ROW_ID FROM .GL10100 WHERE JRNENTRY = @JRNENTRY ORDER BY JRNENTRY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10100SS_3] TO [DYNGRP]
GO
