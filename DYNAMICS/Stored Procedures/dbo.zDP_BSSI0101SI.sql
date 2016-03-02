SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BSSI0101SI] (@USERID char(15), @BSSI_RegExp_NotifDays smallint, @BSSI_RegExp_DefaultDays smallint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .BSSI0101 (USERID, BSSI_RegExp_NotifDays, BSSI_RegExp_DefaultDays) VALUES ( @USERID, @BSSI_RegExp_NotifDays, @BSSI_RegExp_DefaultDays) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BSSI0101SI] TO [DYNGRP]
GO
