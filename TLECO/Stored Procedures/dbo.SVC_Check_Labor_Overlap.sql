SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Check_Labor_Overlap]  (@TECHID char(11),@LINE numeric(19,5),@STARTDATE datetime, @STARTTIME datetime,  @ENDDATE datetime, @ENDTIME datetime, @OVERLAP integer OUTPUT) As declare @StartDateTime datetime declare @EndDateTime datetime set nocount on  exec SVC_util_combine_date_time @STARTDATE, @STARTTIME, @StartDateTime OUTPUT exec SVC_util_combine_date_time @ENDDATE, @ENDTIME, @EndDateTime OUTPUT if exists(select * FROM SVC00203  WHERE  (SVC00203.SRVRECTYPE = 0 and  SVC00203.TECHID = @TECHID and  SVC00203.LNITMSEQ <> @LINE)  and ((  (  @StartDateTime >=  (CONVERT(char(10),STRTDATE,102) + ' ' + CONVERT(char(5),STRTTIME,108))  )   and  (  @StartDateTime < (CONVERT(char(10),ENDDATE,102) + ' ' + CONVERT(char(5),ENDTME,108))  )  )   or  (   (  @EndDateTime > (CONVERT(char(10),STRTDATE,102) + ' ' + CONVERT(char(5),STRTTIME,108))  )   and  (   @EndDateTime < (CONVERT(char(10),ENDDATE,102) + ' ' + CONVERT(char(5),ENDTME,108))  )  )   or  (   (  @EndDateTime >= (CONVERT(char(10),ENDDATE,102) + ' ' + CONVERT(char(5),ENDTME,108))  )   and  (   @StartDateTime <= (CONVERT(char(10),STRTDATE,102) + ' ' + CONVERT(char(5),STRTTIME,108))  )  ) )  )  select @OVERLAP = 1 else  select @OVERLAP = 0  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Labor_Overlap] TO [DYNGRP]
GO
