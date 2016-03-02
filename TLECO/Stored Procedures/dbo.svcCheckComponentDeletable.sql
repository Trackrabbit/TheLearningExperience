SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcCheckComponentDeletable]  @CallNumber char(11),  @RecordType smallint,  @EquipLine integer,  @Line integer  AS declare @numrows int if @RecordType is NULL or @CallNumber is NULL begin return -1 end select @numrows = count(*) from SVC00203  where SRVRECTYPE = @RecordType and CALLNBR = @CallNumber  and EQPLINE=@EquipLine and LNITMSEQ = @Line and LINITMTYP='P'  and (ORDDOCID > '' or PONMBRSTR > '' or RETDOCID > '') return @numrows    
GO
GRANT EXECUTE ON  [dbo].[svcCheckComponentDeletable] TO [DYNGRP]
GO
