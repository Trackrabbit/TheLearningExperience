SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240446SI] (@ME_Cache_Type smallint, @SEQNUMBR int, @ME_GUID char(37), @ME_Cache_Currency numeric(19,5), @ME_Cache_Date datetime, @ME_Cache_String char(255), @ME_Cache_Variable_Name char(101), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME240446 (ME_Cache_Type, SEQNUMBR, ME_GUID, ME_Cache_Currency, ME_Cache_Date, ME_Cache_String, ME_Cache_Variable_Name) VALUES ( @ME_Cache_Type, @SEQNUMBR, @ME_GUID, @ME_Cache_Currency, @ME_Cache_Date, @ME_Cache_String, @ME_Cache_Variable_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240446SI] TO [DYNGRP]
GO
