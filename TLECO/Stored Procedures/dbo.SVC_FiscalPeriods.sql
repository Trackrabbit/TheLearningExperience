SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_FiscalPeriods] (  @UserID varchar(30),   @start_date datetime=NULL,   @end_date datetime=NULL,  @REV_cursor cursor VARYING OUTPUT )  as  set nocount on delete from SVC00020 where UserID = @UserID insert into SVC00020 select   @UserID,  A.PERIODID,   A.PERIODDT,   DateAdd(dd,-1,B.PERIODDT),  A.PERNAME,   A.YEAR1 from   SY40100 A, SY40100 B where   A.SERIES = 0 and   A.PERIODID <> 0 and  A.SERIES = B.SERIES and  A.YEAR1 = B.YEAR1 and  A.PERIODID + 1 = B.PERIODID and  (@start_date is NULL or @start_date <= DateAdd(dd,-1,B.PERIODDT)) and  (@end_date is NULL or @end_date >= A.PERIODDT) insert into SVC00020  with (ROWLOCK) select  @UserID,  A.PERIODID,  A.PERIODDT,  B.LSTFSCDY,  A.PERNAME,  A.YEAR1 from   SY40100 A, SY40101 B where  A.PERIODID = B.NUMOFPER and  A.YEAR1 = B.YEAR1 and  A.SERIES = 0 and  (@start_date is NULL or @start_date <= B.LSTFSCDY) and  (@end_date is NULL or @end_date >= A.PERIODDT)  set @REV_cursor = CURSOR LOCAL SCROLL STATIC READ_ONLY  for select period_id, start_date,end_date,fiscal_year from SVC00020 WITH (NOLOCK)  where UserID = @UserID  order by fiscal_year, period_id  OPEN @REV_cursor  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_FiscalPeriods] TO [DYNGRP]
GO
