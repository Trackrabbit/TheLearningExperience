SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00104SD] (@BusObjKey char(201), @Attachment_ID char(37), @CREATDDT datetime, @CREATETIME datetime, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .CO00104 WHERE BusObjKey = @BusObjKey AND Attachment_ID = @Attachment_ID AND CREATDDT = @CREATDDT AND CREATETIME = @CREATETIME AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .CO00104 WHERE BusObjKey = @BusObjKey AND Attachment_ID = @Attachment_ID AND CREATDDT = @CREATDDT AND CREATETIME = @CREATETIME SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00104SD] TO [DYNGRP]
GO
