SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_CheckCallLineQty]  @srvrectype int ,  @callnbr varchar(11) ,  @EquipLine integer,  @Line integer,  @LineType char(3),  @Qty numeric(19,5)   AS declare @TableType smallint  exec SVC_Get_ServiceCall_Table @srvrectype,@callnbr,@TableType if @TableType = 1  select @Qty = QTYSOLD from SVC00203 where  SRVRECTYPE = @srvrectype and CALLNBR = @callnbr  and EQPLINE=@EquipLine and LNITMSEQ = @Line and LINITMTYP = @LineType else  select @Qty = QTYSOLD from SVC30203 where  SRVRECTYPE = @srvrectype and CALLNBR = @callnbr  and EQPLINE=@EquipLine and LNITMSEQ = @Line and LINITMTYP = @LineType select @Qty = isnull(@Qty,0)  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_CheckCallLineQty] TO [DYNGRP]
GO
