SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920404SI] (@BACHNUMB char(15), @UPRBCHOR smallint, @BCHCOMNT char(61), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2920404 (BACHNUMB, UPRBCHOR, BCHCOMNT) VALUES ( @BACHNUMB, @UPRBCHOR, @BCHCOMNT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920404SI] TO [DYNGRP]
GO
