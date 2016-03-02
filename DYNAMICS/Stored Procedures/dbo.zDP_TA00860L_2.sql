SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_TA00860L_2] (@TAVersionMajor_RS smallint, @TAVersionMinor_RS smallint, @TABuild_RS smallint, @TAVersionMajor_RE smallint, @TAVersionMinor_RE smallint, @TABuild_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @TAVersionMajor_RS IS NULL BEGIN SELECT TOP 25  TAVersionMajor, TAVersionMinor, TABuild, companyID, DEX_ROW_ID FROM .TA00860 ORDER BY TAVersionMajor DESC, TAVersionMinor DESC, TABuild DESC, DEX_ROW_ID DESC END ELSE IF @TAVersionMajor_RS = @TAVersionMajor_RE BEGIN SELECT TOP 25  TAVersionMajor, TAVersionMinor, TABuild, companyID, DEX_ROW_ID FROM .TA00860 WHERE TAVersionMajor = @TAVersionMajor_RS AND TAVersionMinor BETWEEN @TAVersionMinor_RS AND @TAVersionMinor_RE AND TABuild BETWEEN @TABuild_RS AND @TABuild_RE ORDER BY TAVersionMajor DESC, TAVersionMinor DESC, TABuild DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  TAVersionMajor, TAVersionMinor, TABuild, companyID, DEX_ROW_ID FROM .TA00860 WHERE TAVersionMajor BETWEEN @TAVersionMajor_RS AND @TAVersionMajor_RE AND TAVersionMinor BETWEEN @TAVersionMinor_RS AND @TAVersionMinor_RE AND TABuild BETWEEN @TABuild_RS AND @TABuild_RE ORDER BY TAVersionMajor DESC, TAVersionMinor DESC, TABuild DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_TA00860L_2] TO [DYNGRP]
GO
