SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA10200SD] (@DTASERIES smallint, @DTAREF char(25), @ACTINDX int, @SEQNUMBR int, @GROUPID char(15), @CODEID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .DTA10200 WHERE DTASERIES = @DTASERIES AND DTAREF = @DTAREF AND ACTINDX = @ACTINDX AND SEQNUMBR = @SEQNUMBR AND GROUPID = @GROUPID AND CODEID = @CODEID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .DTA10200 WHERE DTASERIES = @DTASERIES AND DTAREF = @DTAREF AND ACTINDX = @ACTINDX AND SEQNUMBR = @SEQNUMBR AND GROUPID = @GROUPID AND CODEID = @CODEID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA10200SD] TO [DYNGRP]
GO
