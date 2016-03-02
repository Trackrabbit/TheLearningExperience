SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Depot_Dist_Exists]  @WONumber char(11),  @RecordType smallint,  @Line as integer,  @Type as char(3),  @CMPNTSEQ int = 0   AS declare @numrows int if @RecordType is NULL or @WONumber is NULL begin return -1 end if @Line = 0   select @numrows = count(*) from SVC06131 where WORECTYPE = @RecordType  and WORKORDNUM = @WONumber and POSTED = 1 else  select @numrows = count(*) from SVC06131 where WORECTYPE = @RecordType  and WORKORDNUM = @WONumber and LNITMSEQ =@Line and LINITMTYP = @Type and CMPNTSEQ = @CMPNTSEQ and POSTED = 1 return @numrows    
GO
GRANT EXECUTE ON  [dbo].[SVC_Depot_Dist_Exists] TO [DYNGRP]
GO
