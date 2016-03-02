SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01451N_1] (@BS int, @DBNAME char(11), @StorageType smallint, @DBNAME_RS char(11), @StorageType_RS smallint, @DBNAME_RE char(11), @StorageType_RE smallint) AS  set nocount on IF @DBNAME_RS IS NULL BEGIN SELECT TOP 25  DBNAME, StorageType, AzureStorageAccName, fileName, AzureURL, Usecompression, DEX_ROW_ID FROM .SY01451 WHERE ( DBNAME = @DBNAME AND StorageType > @StorageType OR DBNAME > @DBNAME ) ORDER BY DBNAME ASC, StorageType ASC END ELSE IF @DBNAME_RS = @DBNAME_RE BEGIN SELECT TOP 25  DBNAME, StorageType, AzureStorageAccName, fileName, AzureURL, Usecompression, DEX_ROW_ID FROM .SY01451 WHERE DBNAME = @DBNAME_RS AND StorageType BETWEEN @StorageType_RS AND @StorageType_RE AND ( DBNAME = @DBNAME AND StorageType > @StorageType OR DBNAME > @DBNAME ) ORDER BY DBNAME ASC, StorageType ASC END ELSE BEGIN SELECT TOP 25  DBNAME, StorageType, AzureStorageAccName, fileName, AzureURL, Usecompression, DEX_ROW_ID FROM .SY01451 WHERE DBNAME BETWEEN @DBNAME_RS AND @DBNAME_RE AND StorageType BETWEEN @StorageType_RS AND @StorageType_RE AND ( DBNAME = @DBNAME AND StorageType > @StorageType OR DBNAME > @DBNAME ) ORDER BY DBNAME ASC, StorageType ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01451N_1] TO [DYNGRP]
GO
