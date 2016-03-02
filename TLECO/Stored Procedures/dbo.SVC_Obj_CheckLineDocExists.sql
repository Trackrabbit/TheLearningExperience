SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Obj_CheckLineDocExists] ( @ServiceRecType smallint,  @CallNumber char(11),  @Line integer, @line_type char(3),  @HasDoc smallint output  ) as declare @PONumber char(17),  @RMANumber char(15),  @Transfer char(15)  select @PONumber=PONMBRSTR, @RMANumber=RETDOCID, @Transfer=ORDDOCID  from SVC00203 where SRVRECTYPE = @ServiceRecType and CALLNBR = @CallNumber  and EQPLINE = 1 and LNITMSEQ = @Line and LINITMTYP = @line_type  if @PONumber > ''   select @HasDoc = 3 else if @RMANumber > ''   select @HasDoc = 2 else if @Transfer > ''  select @HasDoc = 1 else  select @HasDoc = 0  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Obj_CheckLineDocExists] TO [DYNGRP]
GO
