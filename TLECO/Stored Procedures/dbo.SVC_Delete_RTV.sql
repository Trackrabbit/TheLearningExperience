SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Delete_RTV]  @RTVNumber as char(15) As if @RTVNumber >'' begin  delete from SVC05600 where RTV_Number = @RTVNumber   delete from SVC05620 where RTV_Number = @RTVNumber   exec SVC_Delete_RTV_Dist @RTVNumber,'',0,0 end  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Delete_RTV] TO [DYNGRP]
GO
