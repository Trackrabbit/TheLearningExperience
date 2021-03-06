SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10900SD] (@USERID char(15), @TIME1 datetime, @DOCNUMBR char(21), @VCHRNMBR char(21), @CNTRLTYP smallint, @DEYDESCR char(31), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PM10900 WHERE USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DEYDESCR = @DEYDESCR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PM10900 WHERE USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DEYDESCR = @DEYDESCR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10900SD] TO [DYNGRP]
GO
