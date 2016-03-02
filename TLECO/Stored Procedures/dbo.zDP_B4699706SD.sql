SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699706SD] (@SOPNUMBE char(21), @SOPTYPE smallint, @CMPNTSEQ int, @LNITMSEQ int, @LNSEQNBR numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4699706 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND CMPNTSEQ = @CMPNTSEQ AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR = @LNSEQNBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4699706 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND CMPNTSEQ = @CMPNTSEQ AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR = @LNSEQNBR SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699706SD] TO [DYNGRP]
GO