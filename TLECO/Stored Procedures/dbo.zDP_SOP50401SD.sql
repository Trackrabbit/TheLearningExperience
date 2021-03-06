SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50401SD] (@ITEMNMBR char(31), @EPITMTYP char(1), @STRTDATE datetime, @ENDDATE datetime, @PRCSHID char(15), @BASEUOFM char(9), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SOP50401 WHERE ITEMNMBR = @ITEMNMBR AND EPITMTYP = @EPITMTYP AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID = @PRCSHID AND BASEUOFM = @BASEUOFM AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SOP50401 WHERE ITEMNMBR = @ITEMNMBR AND EPITMTYP = @EPITMTYP AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID = @PRCSHID AND BASEUOFM = @BASEUOFM SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50401SD] TO [DYNGRP]
GO
