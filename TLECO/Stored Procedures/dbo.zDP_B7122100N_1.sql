SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7122100N_1] (@BS int, @CUSTNMBR char(15), @RMDTYPAL smallint, @DOCNUMBR char(21), @CUSTNMBR_RS char(15), @RMDTYPAL_RS smallint, @DOCNUMBR_RS char(21), @CUSTNMBR_RE char(15), @RMDTYPAL_RE smallint, @DOCNUMBR_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, RMDTYPAL, DOCNUMBR, BSSI_RecogScheduleCancel, DEX_ROW_ID FROM .B7122100 WHERE ( CUSTNMBR = @CUSTNMBR AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR CUSTNMBR = @CUSTNMBR AND RMDTYPAL > @RMDTYPAL OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, RMDTYPAL ASC, DOCNUMBR ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, RMDTYPAL, DOCNUMBR, BSSI_RecogScheduleCancel, DEX_ROW_ID FROM .B7122100 WHERE CUSTNMBR = @CUSTNMBR_RS AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( CUSTNMBR = @CUSTNMBR AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR CUSTNMBR = @CUSTNMBR AND RMDTYPAL > @RMDTYPAL OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, RMDTYPAL ASC, DOCNUMBR ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, RMDTYPAL, DOCNUMBR, BSSI_RecogScheduleCancel, DEX_ROW_ID FROM .B7122100 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( CUSTNMBR = @CUSTNMBR AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR CUSTNMBR = @CUSTNMBR AND RMDTYPAL > @RMDTYPAL OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, RMDTYPAL ASC, DOCNUMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7122100N_1] TO [DYNGRP]
GO
