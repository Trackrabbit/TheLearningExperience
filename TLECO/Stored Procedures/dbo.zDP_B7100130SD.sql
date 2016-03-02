SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100130SD] (@MODULE1 smallint, @DISTTYPE smallint, @BSSI_DistDeferralActIdx int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B7100130 WHERE MODULE1 = @MODULE1 AND DISTTYPE = @DISTTYPE AND BSSI_DistDeferralActIdx = @BSSI_DistDeferralActIdx AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B7100130 WHERE MODULE1 = @MODULE1 AND DISTTYPE = @DISTTYPE AND BSSI_DistDeferralActIdx = @BSSI_DistDeferralActIdx SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100130SD] TO [DYNGRP]
GO
