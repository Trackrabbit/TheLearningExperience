SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN36F_1] (@I1_I_RS smallint, @I1_I_RE smallint) AS  set nocount on IF @I1_I_RS IS NULL BEGIN SELECT TOP 25  I1_I, COMPLETENAME_I, BENEFIT, IBENEFITAMOUNT_I, MULTIPLE_I, I2_I, GB_I, CHECK1_I, CHECK2_I, DEX_ROW_ID FROM .HR2BEN36 ORDER BY I1_I ASC END ELSE IF @I1_I_RS = @I1_I_RE BEGIN SELECT TOP 25  I1_I, COMPLETENAME_I, BENEFIT, IBENEFITAMOUNT_I, MULTIPLE_I, I2_I, GB_I, CHECK1_I, CHECK2_I, DEX_ROW_ID FROM .HR2BEN36 WHERE I1_I = @I1_I_RS ORDER BY I1_I ASC END ELSE BEGIN SELECT TOP 25  I1_I, COMPLETENAME_I, BENEFIT, IBENEFITAMOUNT_I, MULTIPLE_I, I2_I, GB_I, CHECK1_I, CHECK2_I, DEX_ROW_ID FROM .HR2BEN36 WHERE I1_I BETWEEN @I1_I_RS AND @I1_I_RE ORDER BY I1_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN36F_1] TO [DYNGRP]
GO