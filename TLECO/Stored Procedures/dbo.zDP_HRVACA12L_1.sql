SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRVACA12L_1] (@IDATE_I_RS datetime, @EMPID_I_RS char(15), @IDATE_I_RE datetime, @EMPID_I_RE char(15)) AS  set nocount on IF @IDATE_I_RS IS NULL BEGIN SELECT TOP 25  IDATE_I, EMPID_I, STR30DUMMY_I, DEX_ROW_ID FROM .HRVACA12 ORDER BY IDATE_I DESC, EMPID_I DESC END ELSE IF @IDATE_I_RS = @IDATE_I_RE BEGIN SELECT TOP 25  IDATE_I, EMPID_I, STR30DUMMY_I, DEX_ROW_ID FROM .HRVACA12 WHERE IDATE_I = @IDATE_I_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY IDATE_I DESC, EMPID_I DESC END ELSE BEGIN SELECT TOP 25  IDATE_I, EMPID_I, STR30DUMMY_I, DEX_ROW_ID FROM .HRVACA12 WHERE IDATE_I BETWEEN @IDATE_I_RS AND @IDATE_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY IDATE_I DESC, EMPID_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRVACA12L_1] TO [DYNGRP]
GO
