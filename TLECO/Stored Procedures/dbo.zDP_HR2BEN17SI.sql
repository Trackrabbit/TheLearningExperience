SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN17SI] (@BENEFICIARYINDEX_I int, @BENEFICIARYPRIMARY_I char(31), @BENCONTINGENT_I char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR2BEN17 (BENEFICIARYINDEX_I, BENEFICIARYPRIMARY_I, BENCONTINGENT_I) VALUES ( @BENEFICIARYINDEX_I, @BENEFICIARYPRIMARY_I, @BENCONTINGENT_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN17SI] TO [DYNGRP]
GO
