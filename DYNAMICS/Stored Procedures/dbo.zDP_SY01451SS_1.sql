SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01451SS_1] (@DBNAME char(11), @StorageType smallint) AS  set nocount on SELECT TOP 1  DBNAME, StorageType, AzureStorageAccName, fileName, AzureURL, Usecompression, DEX_ROW_ID FROM .SY01451 WHERE DBNAME = @DBNAME AND StorageType = @StorageType ORDER BY DBNAME ASC, StorageType ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01451SS_1] TO [DYNGRP]
GO
