SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2OFF01L_1] (@APPLICANTNUMBER_I_RS numeric(19,5), @IINDEX_I_RS smallint, @BENEFIT_RS char(7), @APPLICANTNUMBER_I_RE numeric(19,5), @IINDEX_I_RE smallint, @BENEFIT_RE char(7)) AS  set nocount on IF @APPLICANTNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, IINDEX_I, BENEFIT, DEX_ROW_ID FROM .HR2OFF01 ORDER BY APPLICANTNUMBER_I DESC, IINDEX_I DESC, BENEFIT DESC END ELSE IF @APPLICANTNUMBER_I_RS = @APPLICANTNUMBER_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, IINDEX_I, BENEFIT, DEX_ROW_ID FROM .HR2OFF01 WHERE APPLICANTNUMBER_I = @APPLICANTNUMBER_I_RS AND IINDEX_I BETWEEN @IINDEX_I_RS AND @IINDEX_I_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE ORDER BY APPLICANTNUMBER_I DESC, IINDEX_I DESC, BENEFIT DESC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, IINDEX_I, BENEFIT, DEX_ROW_ID FROM .HR2OFF01 WHERE APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE AND IINDEX_I BETWEEN @IINDEX_I_RS AND @IINDEX_I_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE ORDER BY APPLICANTNUMBER_I DESC, IINDEX_I DESC, BENEFIT DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2OFF01L_1] TO [DYNGRP]
GO
