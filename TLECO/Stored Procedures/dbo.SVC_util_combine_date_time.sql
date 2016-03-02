SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_util_combine_date_time](  @In_date datetime,  @In_time datetime,  @Out_datetime datetime output  ) AS select @Out_datetime = dateadd(Minute,datepart(Minute,@In_time),dateadd(Hour,datepart(Hour,@In_time),@In_date))    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_combine_date_time] TO [DYNGRP]
GO
