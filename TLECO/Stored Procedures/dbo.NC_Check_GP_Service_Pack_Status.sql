SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[NC_Check_GP_Service_Pack_Status] @STATUS int output as begin 	set nocount on 	declare @crdate datetime, 			 @crdatenc datetime 	select  top 1 @crdate = crdate from sysobjects where  		name in (select name from sysobjects where name like 'glp%') 		order by crdate desc  	 	select  top 1 @crdatenc = crdate from sysobjects where  		name in ('ncUpdateDistDescription') 		order by crdate desc 	if @crdate > @crdatenc 		set @STATUS = 1 	else 		set @STATUS = 0	 	 	if @crdatenc is null 		set @STATUS = 1 	 	set nocount off end  
GO
GRANT EXECUTE ON  [dbo].[NC_Check_GP_Service_Pack_Status] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[NC_Check_GP_Service_Pack_Status] TO [public]
GO
