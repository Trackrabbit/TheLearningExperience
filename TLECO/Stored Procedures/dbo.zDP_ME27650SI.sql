SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27650SI] (@ME_STB_REPOSITORY char(255), @ME_UseCfgStubs tinyint, @ME_Dummy_File_Convert_De tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME27650 (ME_STB_REPOSITORY, ME_UseCfgStubs, ME_Dummy_File_Convert_De) VALUES ( @ME_STB_REPOSITORY, @ME_UseCfgStubs, @ME_Dummy_File_Convert_De) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27650SI] TO [DYNGRP]
GO
