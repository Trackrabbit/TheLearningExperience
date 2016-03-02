SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_util_monthdiff]   (@ENDDATE datetime,   @STARTDATE datetime,   @DIFF integer OUTPUT)  AS set nocount on select @STARTDATE = DATEADD(dd,(-1 * (DATEPART(dd,@STARTDATE))),@STARTDATE)  select  @ENDDATE  = DATEADD(mm,1, @ENDDATE )  select @ENDDATE = DATEADD(dd,(-1 * (DATEPART(dd, @ENDDATE ))), @ENDDATE )  select @DIFF = DATEDIFF(mm,@STARTDATE,@ENDDATE) set nocount off return    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_monthdiff] TO [DYNGRP]
GO
