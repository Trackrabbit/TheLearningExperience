SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_RMA_FindAppendingRMA]  (    @RETDOCID char(15) output,  @CALLNBR char(11) = NULL,  @SRVRECTYPE smallint,  @Exists tinyint output ) As select @Exists = 0 if @RETDOCID > ''   begin  if exists(select * from SVC05200 where RETDOCID = @RETDOCID and Received = 0 and  CALLNBR = @CALLNBR and SRVRECTYPE = @SRVRECTYPE )  select @Exists = 1  end else  begin  if exists(select * from SVC05200 where Received = 0 and CALLNBR = @CALLNBR and SRVRECTYPE = @SRVRECTYPE )  begin  select @RETDOCID = RETDOCID from SVC05200   where Received = 0 and CALLNBR = @CALLNBR and SRVRECTYPE = @SRVRECTYPE  select @Exists = 1  end  end    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_FindAppendingRMA] TO [DYNGRP]
GO
