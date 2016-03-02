SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00955N_1] (@BS int, @CUSTNMBR char(15), @STRTDATE datetime, @DEX_ROW_ID int, @CUSTNMBR_RS char(15), @STRTDATE_RS datetime, @CUSTNMBR_RE char(15), @STRTDATE_RE datetime) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, STRTDATE, STRTTIME, ENDDATE, ENDTME, DSCRIPTN, DEX_ROW_ID FROM .SVC00955 WHERE ( CUSTNMBR = @CUSTNMBR AND STRTDATE = @STRTDATE AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND STRTDATE > @STRTDATE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, STRTDATE ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, STRTDATE, STRTTIME, ENDDATE, ENDTME, DSCRIPTN, DEX_ROW_ID FROM .SVC00955 WHERE CUSTNMBR = @CUSTNMBR_RS AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ( CUSTNMBR = @CUSTNMBR AND STRTDATE = @STRTDATE AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND STRTDATE > @STRTDATE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, STRTDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, STRTDATE, STRTTIME, ENDDATE, ENDTME, DSCRIPTN, DEX_ROW_ID FROM .SVC00955 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ( CUSTNMBR = @CUSTNMBR AND STRTDATE = @STRTDATE AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND STRTDATE > @STRTDATE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, STRTDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00955N_1] TO [DYNGRP]
GO