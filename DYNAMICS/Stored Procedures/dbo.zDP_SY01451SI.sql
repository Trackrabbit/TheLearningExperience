SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01451SI] (@DBNAME char(11), @StorageType smallint, @AzureStorageAccName char(25), @fileName char(255), @AzureURL char(255), @Usecompression tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY01451 (DBNAME, StorageType, AzureStorageAccName, fileName, AzureURL, Usecompression) VALUES ( @DBNAME, @StorageType, @AzureStorageAccName, @fileName, @AzureURL, @Usecompression) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01451SI] TO [DYNGRP]
GO
