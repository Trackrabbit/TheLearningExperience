SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40200N_1] (@BS int, @SETUPKEY smallint, @SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS  set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, APPLYGROSS, APPLYFICAME, APPLYFICASE, APPLYBENEXPENSE, APPLYTAXBENEXP, APPLYWCOMPEXP, DEX_ROW_ID FROM .PC40200 WHERE ( SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, APPLYGROSS, APPLYFICAME, APPLYFICASE, APPLYBENEXPENSE, APPLYTAXBENEXP, APPLYWCOMPEXP, DEX_ROW_ID FROM .PC40200 WHERE SETUPKEY = @SETUPKEY_RS AND ( SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC END ELSE BEGIN SELECT TOP 25  SETUPKEY, APPLYGROSS, APPLYFICAME, APPLYFICASE, APPLYBENEXPENSE, APPLYTAXBENEXP, APPLYWCOMPEXP, DEX_ROW_ID FROM .PC40200 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE AND ( SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40200N_1] TO [DYNGRP]
GO
