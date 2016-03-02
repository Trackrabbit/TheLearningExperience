SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create Procedure [dbo].[SVC_RMA_GetEquipInfos] (@RecType smallint,  @RMANumber char(15),  @Line Numeric(19,5), @CheckDate datetime, @EquipID int output, @WarrantyStart datetime output, @WarrantyEnd datetime output, @ContractStart datetime output, @ContractEnd datetime output, @ContractNumber char(11) output, @ContractLine numeric(19,5) output) AS  if (select count(*) from SVC05255 where Return_Record_Type = @RecType and RETDOCID = @RMANumber and LNSEQNBR = @Line) > 0  begin  select @WarrantyStart = WARRSTART, @WarrantyEnd = WARREND, @EquipID = SVC00300.EQUIPID  from SVC00300 inner join SVC05255 on SVC05255.Return_Equipment_ID = SVC00300.EQUIPID  where Return_Record_Type = @RecType and RETDOCID = @RMANumber and LNSEQNBR = @Line  select @ContractNumber = CONTNBR, @ContractLine = LNSEQNBR, @ContractStart = STRTDATE, @ContractEnd = ENDDATE  from SVC00601 where CONSTS = 2 and EQUIPID = @EquipID and  @CheckDate >= STRTDATE and @CheckDate <= ENDDATE  end else  if (select count(*) from SVC35255 where Return_Record_Type = @RecType and RETDOCID = @RMANumber and LNSEQNBR = @Line) > 0  begin  select @WarrantyStart = WARRSTART, @WarrantyEnd = WARREND, @EquipID = SVC00300.EQUIPID  from SVC00300 inner join SVC35255 on SVC35255.Return_Equipment_ID = SVC00300.EQUIPID  where Return_Record_Type = @RecType and RETDOCID = @RMANumber and LNSEQNBR = @Line  select @ContractNumber = CONTNBR, @ContractLine = LNSEQNBR, @ContractStart = STRTDATE, @ContractEnd = ENDDATE  from SVC00601 where CONSTS = 2 and EQUIPID = @EquipID and  @CheckDate >= STRTDATE and @CheckDate <= ENDDATE  end return     
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_GetEquipInfos] TO [DYNGRP]
GO