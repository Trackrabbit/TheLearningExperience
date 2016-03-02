SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00202SI] (@aaAcctClassID int, @aaTrxDimID int, @aaTrxDimCodeIDDflt int, @aaDataEntry smallint, @aaShow tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00202 (aaAcctClassID, aaTrxDimID, aaTrxDimCodeIDDflt, aaDataEntry, aaShow) VALUES ( @aaAcctClassID, @aaTrxDimID, @aaTrxDimCodeIDDflt, @aaDataEntry, @aaShow) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00202SI] TO [DYNGRP]
GO
