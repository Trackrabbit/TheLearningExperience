SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_RTV_Check_RTV_Open] (  @RTV char(15),  @Error integer OUTPUT ) As select @Error = 0 if exists(select * from SVC05601 where RTV_Number = @RTV and RTV_Status = 1)  select @Error =count(*) from SVC05601 where RTV_Number = @RTV and RTV_Status = 1  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_Check_RTV_Open] TO [DYNGRP]
GO
