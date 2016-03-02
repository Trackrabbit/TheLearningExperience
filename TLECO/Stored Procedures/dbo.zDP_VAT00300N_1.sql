SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT00300N_1] (@BS int, @CUSTNMBR char(15), @ADRSCODE char(15), @DEX_ROW_ID int, @CUSTNMBR_RS char(15), @ADRSCODE_RS char(15), @CUSTNMBR_RE char(15), @ADRSCODE_RE char(15)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  ECRECTYPE, CUSTNMBR, ADRSCODE, TCC, CCode, ECFLAG, TXRGNNUM, NOTEINDX, DEX_ROW_ID FROM .VAT00300 WHERE ( CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND ADRSCODE > @ADRSCODE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, ADRSCODE ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  ECRECTYPE, CUSTNMBR, ADRSCODE, TCC, CCode, ECFLAG, TXRGNNUM, NOTEINDX, DEX_ROW_ID FROM .VAT00300 WHERE CUSTNMBR = @CUSTNMBR_RS AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND ( CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND ADRSCODE > @ADRSCODE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, ADRSCODE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ECRECTYPE, CUSTNMBR, ADRSCODE, TCC, CCode, ECFLAG, TXRGNNUM, NOTEINDX, DEX_ROW_ID FROM .VAT00300 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND ( CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND ADRSCODE > @ADRSCODE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, ADRSCODE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT00300N_1] TO [DYNGRP]
GO
