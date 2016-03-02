SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273503SI] (@USERID char(15), @MSO_EngineGUID char(51), @MSO_UserCanSelect tinyint, @MSO_AllowCredit tinyint, @MSO_AllowForce tinyint, @MSO_AllowSale tinyint, @MSO_AllowVoid tinyint, @MSO_AllowBook tinyint, @MSO_AllowShip tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273503 (USERID, MSO_EngineGUID, MSO_UserCanSelect, MSO_AllowCredit, MSO_AllowForce, MSO_AllowSale, MSO_AllowVoid, MSO_AllowBook, MSO_AllowShip) VALUES ( @USERID, @MSO_EngineGUID, @MSO_UserCanSelect, @MSO_AllowCredit, @MSO_AllowForce, @MSO_AllowSale, @MSO_AllowVoid, @MSO_AllowBook, @MSO_AllowShip) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273503SI] TO [DYNGRP]
GO
