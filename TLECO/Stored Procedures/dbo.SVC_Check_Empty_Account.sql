SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Check_Empty_Account]  (@DocType smallint,  @RecType smallint,  @DocNumber char(20),  @EquipLine integer,  @Line numeric(19,5),  @LineType char(3),  @LinesExists smallint output  ) As  if @DocType = 1   select @LinesExists = count(*) from SVC00231 where   SRVRECTYPE = @RecType and CALLNBR = @DocNumber and EQPLINE = @EquipLine  and LINITMTYP = @LineType and LNITMSEQ = @Line and ACTINDX = 0 and POSTED = 0 else if @DocType = 2  select @LinesExists = count(*) from SVC00731 where ORDDOCID = @DocNumber and LNITMSEQ = @Line and ACTINDX = 0 and POSTED = 0 else if @DocType = 3  select @LinesExists = count(*) from SVC05030 where Return_Record_Type = @RecType  and RETDOCID = @DocNumber and LNSEQNBR = @Line and LINITMTYP = @LineType and ACTINDX = 0 and POSTED = 0 else if @DocType = 4  select @LinesExists = count(*) from SVC05630 where RTV_Number = @DocNumber and RTV_Line = @Line and POSTED = 0 and ACTINDX = 0 else if @DocType = 5  begin  if @Line = 0   select @LinesExists = count(*) from SVC06130 where   WORECTYPE = @RecType and WORKORDNUM = @DocNumber and ACTINDX = 0 and POSTED = 0  else  select @LinesExists = count(*) from SVC06131 where   WORECTYPE = @RecType and WORKORDNUM = @DocNumber and LINITMTYP = @LineType and LNITMSEQ = @Line and ACTINDX = 0 and POSTED = 0  end  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Empty_Account] TO [DYNGRP]
GO
