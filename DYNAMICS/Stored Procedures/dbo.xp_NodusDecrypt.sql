SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[xp_NodusDecrypt] (@data [nvarchar] (4000), @decryptedData [nvarchar] (4000) OUTPUT)
WITH EXECUTE AS CALLER
AS EXTERNAL NAME [Nodus.Encryption.Client.Cce].[Nodus.Encryption.Client.Cce.DatabaseObjects].[xp_NodusDecrypt]
GO
GRANT EXECUTE ON  [dbo].[xp_NodusDecrypt] TO [DYNGRP]
GO
EXEC sp_addextendedproperty N'AutoDeployed', N'yes', 'SCHEMA', N'dbo', 'PROCEDURE', N'xp_NodusDecrypt', NULL, NULL
GO
EXEC sp_addextendedproperty N'SqlAssemblyFile', N'DatabaseObjects.cs', 'SCHEMA', N'dbo', 'PROCEDURE', N'xp_NodusDecrypt', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=14
EXEC sp_addextendedproperty N'SqlAssemblyFileLine', @xp, 'SCHEMA', N'dbo', 'PROCEDURE', N'xp_NodusDecrypt', NULL, NULL
GO
