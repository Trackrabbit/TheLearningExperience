SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT10001N_1] (@BS int, @CCode char(7), @CCode_RS char(7), @CCode_RE char(7)) AS  set nocount on IF @CCode_RS IS NULL BEGIN SELECT TOP 25  CCode, CCodeDesc, ECFLAG, ISOCode, NOTEINDX, DEX_ROW_ID FROM .VAT10001 WHERE ( CCode > @CCode ) ORDER BY CCode ASC END ELSE IF @CCode_RS = @CCode_RE BEGIN SELECT TOP 25  CCode, CCodeDesc, ECFLAG, ISOCode, NOTEINDX, DEX_ROW_ID FROM .VAT10001 WHERE CCode = @CCode_RS AND ( CCode > @CCode ) ORDER BY CCode ASC END ELSE BEGIN SELECT TOP 25  CCode, CCodeDesc, ECFLAG, ISOCode, NOTEINDX, DEX_ROW_ID FROM .VAT10001 WHERE CCode BETWEEN @CCode_RS AND @CCode_RE AND ( CCode > @CCode ) ORDER BY CCode ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT10001N_1] TO [DYNGRP]
GO
