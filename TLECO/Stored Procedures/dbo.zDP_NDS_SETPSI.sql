SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NDS_SETPSI] (@MSO_EngineGUID char(51), @SEQNUMBR int, @NDS_NodePath char(101), @NDS_NodeName char(101), @NDS_NodeValue char(255), @NDS_Encrypted tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .NDS_SETP (MSO_EngineGUID, SEQNUMBR, NDS_NodePath, NDS_NodeName, NDS_NodeValue, NDS_Encrypted) VALUES ( @MSO_EngineGUID, @SEQNUMBR, @NDS_NodePath, @NDS_NodeName, @NDS_NodeValue, @NDS_Encrypted) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NDS_SETPSI] TO [DYNGRP]
GO
