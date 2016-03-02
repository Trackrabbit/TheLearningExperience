SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Check_Xfer_In_History]  @CallNumber char(11),  @RecordType smallint,  @EquipLine integer,  @Line integer,  @LineType char(3)  AS declare @numrows int if exists(select * from SVC00701 where SRVRECTYPE = @RecordType and CALLNBR = @CallNumber  and EQPLINE=@EquipLine and SERVLITEMSEQ = @Line and LINITMTYP=@LineType)  select @numrows = 0 else  select @numrows = 1  return @numrows  return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Xfer_In_History] TO [DYNGRP]
GO
