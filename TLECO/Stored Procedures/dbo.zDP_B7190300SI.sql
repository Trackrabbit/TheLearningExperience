SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190300SI] (@USERID char(15), @BCHSOURC char(15), @BSSI_Facility_ID char(67), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7190300 (USERID, BCHSOURC, BSSI_Facility_ID) VALUES ( @USERID, @BCHSOURC, @BSSI_Facility_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190300SI] TO [DYNGRP]
GO
