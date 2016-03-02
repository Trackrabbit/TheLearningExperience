SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Check_WO_Time_Overlap](  @WORECTYPE smallint,  @WORKORDNUM char(11),  @LNITMSEQ integer,  @TECHID char(11),  @STRTDATE datetime,  @STRTTIME datetime,  @ENDDATE datetime,  @ENDTIME datetime,  @Overlap smallint output  ) as declare @Start datetime declare @End datetime declare @LineStartDate datetime declare @LineStartTime datetime declare @LineEndDate datetime declare @LineEndTime datetime declare @LineStart datetime declare @LineEnd datetime set nocount on exec SVC_util_combine_date_time @STRTDATE, @STRTTIME, @Start output exec SVC_util_combine_date_time @ENDDATE, @ENDTIME, @End output if exists  (  select *  from SVC06101  where WORECTYPE=@WORECTYPE and  WORKORDNUM=@WORKORDNUM and  LINITMTYP = 'L' and  LNITMSEQ <> @LNITMSEQ and  (@End >  (CONVERT(char(10),STRTDATE,102) + ' ' + CONVERT(char(5),STRTTIME,108))) and  (@Start < (CONVERT(char(10),ENDDATE,102) + ' ' + CONVERT(char(5),ENDTIME,108)))  )  BEGIN  select @Overlap = 1  END ELSE  BEGIN  select @Overlap = 0  END  return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_WO_Time_Overlap] TO [DYNGRP]
GO
