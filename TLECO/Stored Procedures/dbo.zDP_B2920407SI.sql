SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920407SI] (@USERID char(15), @BACHNUMB char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2920407 (USERID, BACHNUMB) VALUES ( @USERID, @BACHNUMB) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920407SI] TO [DYNGRP]
GO