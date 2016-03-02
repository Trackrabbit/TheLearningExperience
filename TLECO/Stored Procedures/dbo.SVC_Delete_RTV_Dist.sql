SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Delete_RTV_Dist]  @RTVNumber as char(15),  @LineType as char(3),  @DistType as smallint,  @AccountIndex integer As if @LineType = ''  delete from SVC05630  where RTV_Number = @RTVNumber and POSTED = 0 else begin  if @DistType = 0  delete from SVC05630  where RTV_Number = @RTVNumber and POSTED = 0 and LINITMTYP = @LineType  else  delete from SVC05630  where RTV_Number = @RTVNumber and POSTED = 0 and LINITMTYP = @LineType  and SVC_Distribution_Type= @DistType end  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Delete_RTV_Dist] TO [DYNGRP]
GO
