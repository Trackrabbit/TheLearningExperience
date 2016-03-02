SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Set_Supervision_Query]  ( @svcdescr varchar(30) ) as create table #SVC_Super_Vision (a varchar(30)) insert into #SVC_Super_Vision (a)  values (@svcdescr) select * from #SVC_Super_Vision    
GO
GRANT EXECUTE ON  [dbo].[SVC_Set_Supervision_Query] TO [DYNGRP]
GO
