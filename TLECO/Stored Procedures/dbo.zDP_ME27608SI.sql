SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27608SI] (@ME_Cancel_Password char(11), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME27608 (ME_Cancel_Password) VALUES ( @ME_Cancel_Password) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27608SI] TO [DYNGRP]
GO
