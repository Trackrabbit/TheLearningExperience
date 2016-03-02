SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ACRSTBLF_2] (@ACRSTABLES_RS smallint, @ACRSYEAR_RS smallint, @ACRSTABLES_RE smallint, @ACRSYEAR_RE smallint) AS  set nocount on IF @ACRSTABLES_RS IS NULL BEGIN SELECT TOP 25  ACRSTABLES, ACRSYEAR, ACRSPCT_1, ACRSPCT_2, ACRSPCT_3, ACRSPCT_4, ACRSPCT_5, ACRSPCT_6, ACRSPCT_7, ACRSPCT_8, ACRSPCT_9, ACRSPCT_10, ACRSPCT_11, ACRSPCT_12, DEX_ROW_ID FROM .ACRSTBL ORDER BY ACRSTABLES ASC, ACRSYEAR ASC END ELSE IF @ACRSTABLES_RS = @ACRSTABLES_RE BEGIN SELECT TOP 25  ACRSTABLES, ACRSYEAR, ACRSPCT_1, ACRSPCT_2, ACRSPCT_3, ACRSPCT_4, ACRSPCT_5, ACRSPCT_6, ACRSPCT_7, ACRSPCT_8, ACRSPCT_9, ACRSPCT_10, ACRSPCT_11, ACRSPCT_12, DEX_ROW_ID FROM .ACRSTBL WHERE ACRSTABLES = @ACRSTABLES_RS AND ACRSYEAR BETWEEN @ACRSYEAR_RS AND @ACRSYEAR_RE ORDER BY ACRSTABLES ASC, ACRSYEAR ASC END ELSE BEGIN SELECT TOP 25  ACRSTABLES, ACRSYEAR, ACRSPCT_1, ACRSPCT_2, ACRSPCT_3, ACRSPCT_4, ACRSPCT_5, ACRSPCT_6, ACRSPCT_7, ACRSPCT_8, ACRSPCT_9, ACRSPCT_10, ACRSPCT_11, ACRSPCT_12, DEX_ROW_ID FROM .ACRSTBL WHERE ACRSTABLES BETWEEN @ACRSTABLES_RS AND @ACRSTABLES_RE AND ACRSYEAR BETWEEN @ACRSYEAR_RS AND @ACRSYEAR_RE ORDER BY ACRSTABLES ASC, ACRSYEAR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ACRSTBLF_2] TO [DYNGRP]
GO
