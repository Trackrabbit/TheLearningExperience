SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10390SD] (@POPRCTNM char(17), @CURNCYID char(15), @VENDORID char(15), @DISTTYPE smallint, @ACTINDX int, @XCHGRATE numeric(19,7), @SEQNUMBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .POP10390 WHERE POPRCTNM = @POPRCTNM AND CURNCYID = @CURNCYID AND VENDORID = @VENDORID AND DISTTYPE = @DISTTYPE AND ACTINDX = @ACTINDX AND XCHGRATE = @XCHGRATE AND SEQNUMBR = @SEQNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .POP10390 WHERE POPRCTNM = @POPRCTNM AND CURNCYID = @CURNCYID AND VENDORID = @VENDORID AND DISTTYPE = @DISTTYPE AND ACTINDX = @ACTINDX AND XCHGRATE = @XCHGRATE AND SEQNUMBR = @SEQNUMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10390SD] TO [DYNGRP]
GO
