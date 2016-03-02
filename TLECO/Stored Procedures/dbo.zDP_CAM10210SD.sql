SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_CAM10210SD] (@DATE1 datetime, @TIME1 datetime, @CMPANYID smallint, @SGMNTID char(67), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .CAM10210 WHERE DATE1 = @DATE1 AND TIME1 = @TIME1 AND CMPANYID = @CMPANYID AND SGMNTID = @SGMNTID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .CAM10210 WHERE DATE1 = @DATE1 AND TIME1 = @TIME1 AND CMPANYID = @CMPANYID AND SGMNTID = @SGMNTID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM10210SD] TO [DYNGRP]
GO