SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100150N_1] (@BS int, @MODULE1 smallint, @CUSTNMBR char(15), @MODULE1_RS smallint, @CUSTNMBR_RS char(15), @MODULE1_RE smallint, @CUSTNMBR_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @MODULE1_RS IS NULL BEGIN SELECT TOP 25  MODULE1, CUSTNMBR, DEX_ROW_ID FROM .B7100150 WHERE ( MODULE1 = @MODULE1 AND CUSTNMBR > @CUSTNMBR OR MODULE1 > @MODULE1 ) ORDER BY MODULE1 ASC, CUSTNMBR ASC END ELSE IF @MODULE1_RS = @MODULE1_RE BEGIN SELECT TOP 25  MODULE1, CUSTNMBR, DEX_ROW_ID FROM .B7100150 WHERE MODULE1 = @MODULE1_RS AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ( MODULE1 = @MODULE1 AND CUSTNMBR > @CUSTNMBR OR MODULE1 > @MODULE1 ) ORDER BY MODULE1 ASC, CUSTNMBR ASC END ELSE BEGIN SELECT TOP 25  MODULE1, CUSTNMBR, DEX_ROW_ID FROM .B7100150 WHERE MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ( MODULE1 = @MODULE1 AND CUSTNMBR > @CUSTNMBR OR MODULE1 > @MODULE1 ) ORDER BY MODULE1 ASC, CUSTNMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100150N_1] TO [DYNGRP]
GO