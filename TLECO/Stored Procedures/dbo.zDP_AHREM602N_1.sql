SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHREM602N_1] (@BS int, @EMPID_I char(15), @EMPID_I_RS char(15), @EMPID_I_RE char(15)) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, DEX_ROW_ID, PICTURE_I FROM .AHREM602 WHERE ( EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, DEX_ROW_ID, PICTURE_I FROM .AHREM602 WHERE EMPID_I = @EMPID_I_RS AND ( EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, DEX_ROW_ID, PICTURE_I FROM .AHREM602 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHREM602N_1] TO [DYNGRP]
GO
