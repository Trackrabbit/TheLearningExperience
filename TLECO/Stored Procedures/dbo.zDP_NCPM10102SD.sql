SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCPM10102SD] (@VCHRNMBR char(21), @CNTRLTYP smallint, @APTVCHNM char(21), @SPCLDIST smallint, @DSTSQNUM int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .NCPM10102 WHERE VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM = @DSTSQNUM AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NCPM10102 WHERE VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM = @DSTSQNUM SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPM10102SD] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPM10102SD] TO [public]
GO
