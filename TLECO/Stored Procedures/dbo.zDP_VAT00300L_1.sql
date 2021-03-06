SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT00300L_1] (@CUSTNMBR_RS char(15), @ADRSCODE_RS char(15), @CUSTNMBR_RE char(15), @ADRSCODE_RE char(15)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  ECRECTYPE, CUSTNMBR, ADRSCODE, TCC, CCode, ECFLAG, TXRGNNUM, NOTEINDX, DEX_ROW_ID FROM .VAT00300 ORDER BY CUSTNMBR DESC, ADRSCODE DESC, DEX_ROW_ID DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  ECRECTYPE, CUSTNMBR, ADRSCODE, TCC, CCode, ECFLAG, TXRGNNUM, NOTEINDX, DEX_ROW_ID FROM .VAT00300 WHERE CUSTNMBR = @CUSTNMBR_RS AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE ORDER BY CUSTNMBR DESC, ADRSCODE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  ECRECTYPE, CUSTNMBR, ADRSCODE, TCC, CCode, ECFLAG, TXRGNNUM, NOTEINDX, DEX_ROW_ID FROM .VAT00300 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE ORDER BY CUSTNMBR DESC, ADRSCODE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT00300L_1] TO [DYNGRP]
GO
