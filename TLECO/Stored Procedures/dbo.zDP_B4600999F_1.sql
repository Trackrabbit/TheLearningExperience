SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600999F_1] (@BSSI_SSRS_Type_RS char(25), @Series_Name_RS char(31), @BSSI_SSRS_Name_RS char(101), @BSSI_SSRS_Type_RE char(25), @Series_Name_RE char(31), @BSSI_SSRS_Name_RE char(101)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_SSRS_Type_RS IS NULL BEGIN SELECT TOP 25  BSSI_SSRS_Type, Series_Name, BSSI_SSRS_Name, BSSI_SSRS_Version, CMPNYNAM, BSSI_SSRS_DeploymentDate, DEX_ROW_ID, BSSI_SSRS_DeploymentLoc FROM .B4600999 ORDER BY BSSI_SSRS_Type ASC, Series_Name ASC, BSSI_SSRS_Name ASC END ELSE IF @BSSI_SSRS_Type_RS = @BSSI_SSRS_Type_RE BEGIN SELECT TOP 25  BSSI_SSRS_Type, Series_Name, BSSI_SSRS_Name, BSSI_SSRS_Version, CMPNYNAM, BSSI_SSRS_DeploymentDate, DEX_ROW_ID, BSSI_SSRS_DeploymentLoc FROM .B4600999 WHERE BSSI_SSRS_Type = @BSSI_SSRS_Type_RS AND Series_Name BETWEEN @Series_Name_RS AND @Series_Name_RE AND BSSI_SSRS_Name BETWEEN @BSSI_SSRS_Name_RS AND @BSSI_SSRS_Name_RE ORDER BY BSSI_SSRS_Type ASC, Series_Name ASC, BSSI_SSRS_Name ASC END ELSE BEGIN SELECT TOP 25  BSSI_SSRS_Type, Series_Name, BSSI_SSRS_Name, BSSI_SSRS_Version, CMPNYNAM, BSSI_SSRS_DeploymentDate, DEX_ROW_ID, BSSI_SSRS_DeploymentLoc FROM .B4600999 WHERE BSSI_SSRS_Type BETWEEN @BSSI_SSRS_Type_RS AND @BSSI_SSRS_Type_RE AND Series_Name BETWEEN @Series_Name_RS AND @Series_Name_RE AND BSSI_SSRS_Name BETWEEN @BSSI_SSRS_Name_RS AND @BSSI_SSRS_Name_RE ORDER BY BSSI_SSRS_Type ASC, Series_Name ASC, BSSI_SSRS_Name ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600999F_1] TO [DYNGRP]
GO