SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930508SD] (@BSSI_IsAP tinyint, @SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint, @DATE1 datetime, @JRNENTRY int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B2930508 WHERE BSSI_IsAP = @BSSI_IsAP AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number = @Schedule_Payment_Number AND DATE1 = @DATE1 AND JRNENTRY = @JRNENTRY AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B2930508 WHERE BSSI_IsAP = @BSSI_IsAP AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number = @Schedule_Payment_Number AND DATE1 = @DATE1 AND JRNENTRY = @JRNENTRY SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930508SD] TO [DYNGRP]
GO
