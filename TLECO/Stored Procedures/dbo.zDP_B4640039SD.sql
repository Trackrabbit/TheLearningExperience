SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640039SD] (@BSSI_Building_ID char(25), @BSSI_PropertyAttribute smallint, @LNSEQNBR numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4640039 WHERE BSSI_Building_ID = @BSSI_Building_ID AND BSSI_PropertyAttribute = @BSSI_PropertyAttribute AND LNSEQNBR = @LNSEQNBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4640039 WHERE BSSI_Building_ID = @BSSI_Building_ID AND BSSI_PropertyAttribute = @BSSI_PropertyAttribute AND LNSEQNBR = @LNSEQNBR SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640039SD] TO [DYNGRP]
GO
