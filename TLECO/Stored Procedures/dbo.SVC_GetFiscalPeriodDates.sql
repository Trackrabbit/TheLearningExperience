SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_GetFiscalPeriodDates] (  @UserID varchar(30),  @CheckDate datetime=NULL,   @StartDate datetime OUTPUT,  @EndDate datetime OUTPUT,  @YEAR1 smallint OUTPUT,  @PERIODID smallint OUTPUT )  as if @CheckDate is null   return select   @PERIODID =  A.PERIODID,   @StartDate = A.PERIODDT,   @EndDate = A.PERDENDT,  @YEAR1 = A.YEAR1 from   SY40100 A where   A.SERIES = 0 and   A.PERIODID <> 0 and  @CheckDate <= A.PERDENDT and  @CheckDate >= A.PERIODDT  return   
GO
GRANT EXECUTE ON  [dbo].[SVC_GetFiscalPeriodDates] TO [DYNGRP]
GO
