SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7180116SD] (@VCHRNMBR char(21), @CNTRLTYP smallint, @APTVCHNM char(21), @SPCLDIST smallint, @DSTSQNUM int, @SQNCLINE numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B7180116 WHERE VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM = @DSTSQNUM AND SQNCLINE = @SQNCLINE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B7180116 WHERE VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM = @DSTSQNUM AND SQNCLINE = @SQNCLINE SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7180116SD] TO [DYNGRP]
GO
