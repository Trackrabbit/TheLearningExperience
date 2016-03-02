SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_EMPNOTEL_1] (@EMPID_I_RS char(15), @EMPID_I_RE char(15)) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, SSN_I, LLASTNAME_I, FFIRSTNAME_I, DEX_ROW_ID, COMMENTS32000_I FROM .EMPNOTE ORDER BY EMPID_I DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, SSN_I, LLASTNAME_I, FFIRSTNAME_I, DEX_ROW_ID, COMMENTS32000_I FROM .EMPNOTE WHERE EMPID_I = @EMPID_I_RS ORDER BY EMPID_I DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, SSN_I, LLASTNAME_I, FFIRSTNAME_I, DEX_ROW_ID, COMMENTS32000_I FROM .EMPNOTE WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY EMPID_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_EMPNOTEL_1] TO [DYNGRP]
GO
