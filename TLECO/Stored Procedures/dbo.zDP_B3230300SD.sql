SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B3230300SD] (@BACHNUMB char(15), @BCHSOURC char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B3230300 WHERE BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B3230300 WHERE BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B3230300SD] TO [DYNGRP]
GO
