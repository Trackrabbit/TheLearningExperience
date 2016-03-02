SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240464SD] (@ME_Check_STB_FileNEW char(133), @ME_Check_STB_Version smallint, @LNSEQNBR numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .ME240464 WHERE ME_Check_STB_FileNEW = @ME_Check_STB_FileNEW AND ME_Check_STB_Version = @ME_Check_STB_Version AND LNSEQNBR = @LNSEQNBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ME240464 WHERE ME_Check_STB_FileNEW = @ME_Check_STB_FileNEW AND ME_Check_STB_Version = @ME_Check_STB_Version AND LNSEQNBR = @LNSEQNBR SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240464SD] TO [DYNGRP]
GO
