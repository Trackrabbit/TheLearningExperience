SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_util_add_minutes](@IN_Date datetime output,   @IN_Time datetime output,   @IN_Minutes integer) As declare @Composite datetime exec SVC_util_combine_date_time @IN_Date,@IN_Time,@Composite output select @Composite = dateadd(minute,@IN_Minutes,@Composite) exec SVC_util_split_datetime @Composite,@IN_Date output,@IN_Time output return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_add_minutes] TO [DYNGRP]
GO
