SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_RTV_Check_Serial_Changed]  (  @RTV char(15),  @RTVLine numeric(19,5),  @SerialChanged tinyint output ) As   if exists(select * from SVC05602 where RTV_Number = @RTV and RTV_Line = @RTVLine and SERLNMBR <>  Return_Serial_Number and POSTED = 0)  select @SerialChanged  = 1 else  select @SerialChanged  = 0  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_Check_Serial_Changed] TO [DYNGRP]
GO
