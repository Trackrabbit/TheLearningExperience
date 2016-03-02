SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610210SD] (@SOPTYPE smallint, @SOPNUMBE char(21), @Item_Sequence int, @BSSI_Rev_Sharing_ID char(25), @LNITMSEQ int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4610210 WHERE SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND Item_Sequence = @Item_Sequence AND BSSI_Rev_Sharing_ID = @BSSI_Rev_Sharing_ID AND LNITMSEQ = @LNITMSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4610210 WHERE SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND Item_Sequence = @Item_Sequence AND BSSI_Rev_Sharing_ID = @BSSI_Rev_Sharing_ID AND LNITMSEQ = @LNITMSEQ SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610210SD] TO [DYNGRP]
GO
