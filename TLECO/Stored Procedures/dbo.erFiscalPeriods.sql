SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[erFiscalPeriods] @start_date datetime=NULL, @end_date datetime=NULL as  set nocount on  create table #TEMPPER (  period_id smallint NOT NULL,  start_date datetime NOT NULL,  end_date datetime NULL,  period_name char(21) NOT NULL,  fiscal_year smallint NOT NULL)  insert into #TEMPPER select   A.PERIODID,   A.PERIODDT,   DateAdd(dd,-1,B.PERIODDT),  A.PERNAME,   A.YEAR1  from   SY40100 A, SY40100 B where   A.SERIES = 0 and   A.PERIODID <> 0 and  A.SERIES = B.SERIES and  A.YEAR1 = B.YEAR1 and  A.PERIODID + 1 = B.PERIODID and  (@start_date is NULL or @start_date <= DateAdd(dd,-1,B.PERIODDT)) and  (@end_date is NULL or @end_date >= A.PERIODDT)  insert into #TEMPPER select  A.PERIODID,  A.PERIODDT,  B.LSTFSCDY,  A.PERNAME,  A.YEAR1 from   SY40100 A, SY40101 B where  A.PERIODID = B.NUMOFPER and  A.YEAR1 = B.YEAR1 and  A.SERIES = 0 and  (@start_date is NULL or @start_date <= B.LSTFSCDY) and  (@end_date is NULL or @end_date >= A.PERIODDT)  select * from #TEMPPER order by start_date  return 0   
GO
GRANT EXECUTE ON  [dbo].[erFiscalPeriods] TO [DYNGRP]
GO
