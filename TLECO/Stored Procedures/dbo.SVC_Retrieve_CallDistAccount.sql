SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Retrieve_CallDistAccount]  @RMANumber as char(15),  @RMARecordType as smallint,  @LineNumber numeric(19,5),  @InvIndex integer OUTPUT,  @InvOffsetIndex integer OUTPUT As declare  @CallNumber char(11),  @RecordType smallint,  @EquipLine integer,  @Line integer,  @LineType char(3)  select @CallNumber = CALLNBR, @RecordType = SRVRECTYPE, @EquipLine = EQPLINE,  @Line = LNITMSEQ from SVC05200  where RETDOCID = @RMANumber and Return_Record_Type=@RMARecordType   and LNSEQNBR = @LineNumber  select @InvIndex = ACTINDX from SVC00231 where SRVRECTYPE = @RecordType and CALLNBR = @CallNumber  and EQPLINE=@EquipLine and LNITMSEQ = @Line and LINITMTYP='P'  and SVC_Distribution_Type = 4 and POSTED = 1 select @InvIndex = isnull(@InvIndex,0)  select @InvOffsetIndex = ACTINDX from SVC00231 where SRVRECTYPE = @RecordType and CALLNBR = @CallNumber  and EQPLINE=@EquipLine and LNITMSEQ = @Line and LINITMTYP='P'  and SVC_Distribution_Type = 5 and POSTED = 1 select @InvOffsetIndex = isnull(@InvOffsetIndex,0)  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Retrieve_CallDistAccount] TO [DYNGRP]
GO
