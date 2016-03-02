SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2SA02F_1] (@EMPID_I_RS char(15), @ISEQUENCENUMBER_I_RS smallint, @EMPID_I_RE char(15), @ISEQUENCENUMBER_I_RE smallint) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, ISEQUENCENUMBER_I, EFFECTIVEDATE_I, DSCRIPTN, WAGE_I, DEX_ROW_ID FROM .AHR2SA02 ORDER BY EMPID_I ASC, ISEQUENCENUMBER_I ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, ISEQUENCENUMBER_I, EFFECTIVEDATE_I, DSCRIPTN, WAGE_I, DEX_ROW_ID FROM .AHR2SA02 WHERE EMPID_I = @EMPID_I_RS AND ISEQUENCENUMBER_I BETWEEN @ISEQUENCENUMBER_I_RS AND @ISEQUENCENUMBER_I_RE ORDER BY EMPID_I ASC, ISEQUENCENUMBER_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, ISEQUENCENUMBER_I, EFFECTIVEDATE_I, DSCRIPTN, WAGE_I, DEX_ROW_ID FROM .AHR2SA02 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ISEQUENCENUMBER_I BETWEEN @ISEQUENCENUMBER_I_RS AND @ISEQUENCENUMBER_I_RE ORDER BY EMPID_I ASC, ISEQUENCENUMBER_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2SA02F_1] TO [DYNGRP]
GO