SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27603SI] (@ME_Logo_ID char(15), @ME_Filename char(255), @ME_Scaling smallint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME27603 (ME_Logo_ID, ME_Filename, ME_Scaling) VALUES ( @ME_Logo_ID, @ME_Filename, @ME_Scaling) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27603SI] TO [DYNGRP]
GO
