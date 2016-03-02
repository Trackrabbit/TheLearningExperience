SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM20102N_2] (@BS int, @DUEDATE datetime, @CUSTNMBR char(15), @DOCNUMBR char(21), @DUEDATE_RS datetime, @CUSTNMBR_RS char(15), @DOCNUMBR_RS char(21), @DUEDATE_RE datetime, @CUSTNMBR_RE char(15), @DOCNUMBR_RE char(21)) AS  set nocount on IF @DUEDATE_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, DOCNUMBR, RMDTYPAL, DUEDATE, DOCDATE, ORTRXAMT, CURTRXAM, TRXDSCRN, DEX_ROW_ID FROM .CFM20102 WHERE ( DUEDATE = @DUEDATE AND CUSTNMBR = @CUSTNMBR AND DOCNUMBR > @DOCNUMBR OR DUEDATE = @DUEDATE AND CUSTNMBR > @CUSTNMBR OR DUEDATE > @DUEDATE ) ORDER BY DUEDATE ASC, CUSTNMBR ASC, DOCNUMBR ASC END ELSE IF @DUEDATE_RS = @DUEDATE_RE BEGIN SELECT TOP 25  CUSTNMBR, DOCNUMBR, RMDTYPAL, DUEDATE, DOCDATE, ORTRXAMT, CURTRXAM, TRXDSCRN, DEX_ROW_ID FROM .CFM20102 WHERE DUEDATE = @DUEDATE_RS AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( DUEDATE = @DUEDATE AND CUSTNMBR = @CUSTNMBR AND DOCNUMBR > @DOCNUMBR OR DUEDATE = @DUEDATE AND CUSTNMBR > @CUSTNMBR OR DUEDATE > @DUEDATE ) ORDER BY DUEDATE ASC, CUSTNMBR ASC, DOCNUMBR ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, DOCNUMBR, RMDTYPAL, DUEDATE, DOCDATE, ORTRXAMT, CURTRXAM, TRXDSCRN, DEX_ROW_ID FROM .CFM20102 WHERE DUEDATE BETWEEN @DUEDATE_RS AND @DUEDATE_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( DUEDATE = @DUEDATE AND CUSTNMBR = @CUSTNMBR AND DOCNUMBR > @DOCNUMBR OR DUEDATE = @DUEDATE AND CUSTNMBR > @CUSTNMBR OR DUEDATE > @DUEDATE ) ORDER BY DUEDATE ASC, CUSTNMBR ASC, DOCNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM20102N_2] TO [DYNGRP]
GO
