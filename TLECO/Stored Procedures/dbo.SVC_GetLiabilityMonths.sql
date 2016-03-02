SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_GetLiabilityMonths]  (  @STARTDATE datetime,  @ENDDATE datetime,  @MONTHDIFF integer OUTPUT  ) AS set nocount on select @STARTDATE = DATEADD(dd,(-1 * (DATEPART(dd,@STARTDATE))),@STARTDATE)  select  @ENDDATE  = DATEADD(mm,1, @ENDDATE )  select @ENDDATE = DATEADD(dd,(-1 * (DATEPART(dd, @ENDDATE ))), @ENDDATE )  select @MONTHDIFF = DATEDIFF(mm,@STARTDATE,@ENDDATE) set nocount off    
GO
GRANT EXECUTE ON  [dbo].[SVC_GetLiabilityMonths] TO [DYNGRP]
GO
