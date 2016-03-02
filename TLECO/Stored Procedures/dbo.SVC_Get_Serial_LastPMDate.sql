SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_Serial_LastPMDate]  ( @Equipid integer,  @LastPMDate datetime OUTPUT) AS select @LastPMDate = MIN(LSTPMDTE) from SVC00305 where EQUIPID = @Equipid and PMSTAT = 1    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Serial_LastPMDate] TO [DYNGRP]
GO
