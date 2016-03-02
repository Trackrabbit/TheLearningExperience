SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_RTV_Check_Seria_QTY]  (  @RTV char(15),  @RTVLine numeric(19,5),  @Count numeric(19,5) output ) As  if @RTVLine = 0   select @Count = isnull(SUM(SERLTQTY),0) from SVC05602 where RTV_Number = @RTV else  select @Count = isnull(SUM(SERLTQTY),0) from SVC05602 where RTV_Number = @RTV and RTV_Line = @RTVLine  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_Check_Seria_QTY] TO [DYNGRP]
GO
