SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Inc_Time_To_Midnight]  ( @Time datetime output) As  select @Time = convert(char(40),dateadd(dd,1,@Time),102)  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Inc_Time_To_Midnight] TO [DYNGRP]
GO
