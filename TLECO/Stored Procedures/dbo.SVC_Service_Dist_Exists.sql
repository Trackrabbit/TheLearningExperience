SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Service_Dist_Exists]  @CallNumber char(11),  @RecordType smallint,  @EquipLine integer,  @Line integer,  @LineType char(3)  AS declare @numrows int if @RecordType is NULL or @CallNumber is NULL begin return -1 end select @numrows = count(*) from SVC00231  where SRVRECTYPE = @RecordType and CALLNBR = @CallNumber  and EQPLINE=@EquipLine and LNITMSEQ = @Line and LINITMTYP=@LineType  and POSTED = 1 return @numrows    
GO
GRANT EXECUTE ON  [dbo].[SVC_Service_Dist_Exists] TO [DYNGRP]
GO
