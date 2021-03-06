SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT10001N_2] (@BS int, @CCodeDesc char(31), @CCode char(7), @CCodeDesc_RS char(31), @CCode_RS char(7), @CCodeDesc_RE char(31), @CCode_RE char(7)) AS  set nocount on IF @CCodeDesc_RS IS NULL BEGIN SELECT TOP 25  CCode, CCodeDesc, ECFLAG, ISOCode, NOTEINDX, DEX_ROW_ID FROM .VAT10001 WHERE ( CCodeDesc = @CCodeDesc AND CCode > @CCode OR CCodeDesc > @CCodeDesc ) ORDER BY CCodeDesc ASC, CCode ASC END ELSE IF @CCodeDesc_RS = @CCodeDesc_RE BEGIN SELECT TOP 25  CCode, CCodeDesc, ECFLAG, ISOCode, NOTEINDX, DEX_ROW_ID FROM .VAT10001 WHERE CCodeDesc = @CCodeDesc_RS AND CCode BETWEEN @CCode_RS AND @CCode_RE AND ( CCodeDesc = @CCodeDesc AND CCode > @CCode OR CCodeDesc > @CCodeDesc ) ORDER BY CCodeDesc ASC, CCode ASC END ELSE BEGIN SELECT TOP 25  CCode, CCodeDesc, ECFLAG, ISOCode, NOTEINDX, DEX_ROW_ID FROM .VAT10001 WHERE CCodeDesc BETWEEN @CCodeDesc_RS AND @CCodeDesc_RE AND CCode BETWEEN @CCode_RS AND @CCode_RE AND ( CCodeDesc = @CCodeDesc AND CCode > @CCode OR CCodeDesc > @CCodeDesc ) ORDER BY CCodeDesc ASC, CCode ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT10001N_2] TO [DYNGRP]
GO
