SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40104SI] (@SETUPKEY smallint, @MUPR_RetryInterval smallint, @MUPR_MaxWaitTime smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR40104 (SETUPKEY, MUPR_RetryInterval, MUPR_MaxWaitTime) VALUES ( @SETUPKEY, @MUPR_RetryInterval, @MUPR_MaxWaitTime) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40104SI] TO [DYNGRP]
GO
