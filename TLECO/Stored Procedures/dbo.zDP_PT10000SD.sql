SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PT10000SD] (@ProjDistDocSource smallint, @DOCNUMBR char(21), @DSTSQNUM int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PT10000 WHERE ProjDistDocSource = @ProjDistDocSource AND DOCNUMBR = @DOCNUMBR AND DSTSQNUM = @DSTSQNUM AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PT10000 WHERE ProjDistDocSource = @ProjDistDocSource AND DOCNUMBR = @DOCNUMBR AND DSTSQNUM = @DSTSQNUM SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PT10000SD] TO [DYNGRP]
GO
