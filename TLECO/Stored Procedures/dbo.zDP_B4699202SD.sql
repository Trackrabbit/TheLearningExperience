SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699202SD] (@BSSI_PortfolioID char(25), @LNITMSEQ int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4699202 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND LNITMSEQ = @LNITMSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4699202 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND LNITMSEQ = @LNITMSEQ SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699202SD] TO [DYNGRP]
GO
