SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27650N_1] (@BS int, @ME_UseCfgStubs tinyint, @ME_UseCfgStubs_RS tinyint, @ME_UseCfgStubs_RE tinyint) AS /* 14.00.0084.000 */ set nocount on IF @ME_UseCfgStubs_RS IS NULL BEGIN SELECT TOP 25  ME_STB_REPOSITORY, ME_UseCfgStubs, ME_Dummy_File_Convert_De, DEX_ROW_ID FROM .ME27650 WHERE ( ME_UseCfgStubs > @ME_UseCfgStubs ) ORDER BY ME_UseCfgStubs ASC END ELSE IF @ME_UseCfgStubs_RS = @ME_UseCfgStubs_RE BEGIN SELECT TOP 25  ME_STB_REPOSITORY, ME_UseCfgStubs, ME_Dummy_File_Convert_De, DEX_ROW_ID FROM .ME27650 WHERE ME_UseCfgStubs = @ME_UseCfgStubs_RS AND ( ME_UseCfgStubs > @ME_UseCfgStubs ) ORDER BY ME_UseCfgStubs ASC END ELSE BEGIN SELECT TOP 25  ME_STB_REPOSITORY, ME_UseCfgStubs, ME_Dummy_File_Convert_De, DEX_ROW_ID FROM .ME27650 WHERE ME_UseCfgStubs BETWEEN @ME_UseCfgStubs_RS AND @ME_UseCfgStubs_RE AND ( ME_UseCfgStubs > @ME_UseCfgStubs ) ORDER BY ME_UseCfgStubs ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27650N_1] TO [DYNGRP]
GO
