SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40706SD] (@USERID char(15), @CURNCYID char(15), @PRCBKID char(15), @ITEMNMBR char(31), @UOFM char(9), @QTYFROM numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SOP40706 WHERE USERID = @USERID AND CURNCYID = @CURNCYID AND PRCBKID = @PRCBKID AND ITEMNMBR = @ITEMNMBR AND UOFM = @UOFM AND QTYFROM = @QTYFROM AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SOP40706 WHERE USERID = @USERID AND CURNCYID = @CURNCYID AND PRCBKID = @PRCBKID AND ITEMNMBR = @ITEMNMBR AND UOFM = @UOFM AND QTYFROM = @QTYFROM SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40706SD] TO [DYNGRP]
GO