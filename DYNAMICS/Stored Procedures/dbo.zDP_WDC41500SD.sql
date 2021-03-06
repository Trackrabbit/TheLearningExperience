SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC41500SD] (@USRCLASS char(15), @CMPANYID smallint, @USERID char(15), @Field_Security_ID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .WDC41500 WHERE USRCLASS = @USRCLASS AND CMPANYID = @CMPANYID AND USERID = @USERID AND Field_Security_ID = @Field_Security_ID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .WDC41500 WHERE USRCLASS = @USRCLASS AND CMPANYID = @CMPANYID AND USERID = @USERID AND Field_Security_ID = @Field_Security_ID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC41500SD] TO [DYNGRP]
GO
