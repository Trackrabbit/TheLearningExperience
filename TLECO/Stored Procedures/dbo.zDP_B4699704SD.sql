SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699704SD] (@BSSI_Lease_Number char(25), @BSSI_Lease_Origin smallint, @LOCNCODE char(11), @LNITMSEQ int, @LNSEQNBR numeric(19,5), @BSSI_LineSequence numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4699704 WHERE BSSI_Lease_Number = @BSSI_Lease_Number AND BSSI_Lease_Origin = @BSSI_Lease_Origin AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR = @LNSEQNBR AND BSSI_LineSequence = @BSSI_LineSequence AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4699704 WHERE BSSI_Lease_Number = @BSSI_Lease_Number AND BSSI_Lease_Origin = @BSSI_Lease_Origin AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR = @LNSEQNBR AND BSSI_LineSequence = @BSSI_LineSequence SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699704SD] TO [DYNGRP]
GO
