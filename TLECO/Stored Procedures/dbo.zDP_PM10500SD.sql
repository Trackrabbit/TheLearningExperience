SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10500SD] (@VCHRNMBR char(21), @TRXSORCE char(13), @TAXDTLID char(15), @ACTINDX int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PM10500 WHERE VCHRNMBR = @VCHRNMBR AND TRXSORCE = @TRXSORCE AND TAXDTLID = @TAXDTLID AND ACTINDX = @ACTINDX AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PM10500 WHERE VCHRNMBR = @VCHRNMBR AND TRXSORCE = @TRXSORCE AND TAXDTLID = @TAXDTLID AND ACTINDX = @ACTINDX SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10500SD] TO [DYNGRP]
GO
