SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbdtlSI] (@LockboxID char(15), @paRowType smallint, @paFieldNumber smallint, @paMapsTo smallint, @paStartPosition smallint, @EndPosition smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .palbdtl (LockboxID, paRowType, paFieldNumber, paMapsTo, paStartPosition, EndPosition) VALUES ( @LockboxID, @paRowType, @paFieldNumber, @paMapsTo, @paStartPosition, @EndPosition) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbdtlSI] TO [DYNGRP]
GO
