SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7140000SD] (@BSSI_Recognition_SOrigin smallint, @BSSI_Recognition_SNumber char(25), @MDFUSRID char(15), @MODIFDT datetime, @TIME1 datetime, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B7140000 WHERE BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND MDFUSRID = @MDFUSRID AND MODIFDT = @MODIFDT AND TIME1 = @TIME1 AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B7140000 WHERE BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND MDFUSRID = @MDFUSRID AND MODIFDT = @MODIFDT AND TIME1 = @TIME1 SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7140000SD] TO [DYNGRP]
GO
