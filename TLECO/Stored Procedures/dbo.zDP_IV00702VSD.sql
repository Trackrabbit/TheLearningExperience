SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00702VSD] (@ORDDOCID char(15), @LNITMSEQ int, @SLTSQNUM int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .IV00702V WHERE ORDDOCID = @ORDDOCID AND LNITMSEQ = @LNITMSEQ AND SLTSQNUM = @SLTSQNUM AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .IV00702V WHERE ORDDOCID = @ORDDOCID AND LNITMSEQ = @LNITMSEQ AND SLTSQNUM = @SLTSQNUM SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00702VSD] TO [DYNGRP]
GO