SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Check_SOP_Serial_On_Call]  (@SOP_Type smallint,  @SOP_Number char(21),  @SRVRECTYPE smallint OUTPUT,  @CALLNBR char(11) OUTPUT,  @Customer char(15) OUTPUT ) As   select @SRVRECTYPE = SRVRECTYPE,@CALLNBR = CALLNBR from SVC00220 where   SOPTYPE=@SOP_Type and SOPNUMBE=@SOP_Number  if @CALLNBR > ''  select @Customer = CUSTNMBR from SVC00200   where SRVRECTYPE = @SRVRECTYPE and CALLNBR =@CALLNBR  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_SOP_Serial_On_Call] TO [DYNGRP]
GO
