SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--grant exec on pGetAnnualSchedule to public 
--exec pGetAnnualSchedule @leaseId='LS-1FL3343305'
--exec pGetAnnualScheduleLastGood @leaseId='LS-1FL3343305'
create proc [dbo].[pGetAnnualSchedule67] @leaseId char(15)
as

SELECT 
Row_Number() over (order by tle_Leasenum) as row1,
tle_Leasenum+convert(char(4),Year1) as ind
,[tle_Leasenum]
      ,[Year1] as Year1
      ,Schedulename
      ,MIN(baserentamount) as baserentamount
      
	  ,MIN([Rentsqfoot]) Rentsqfoot
      ,MIN([annualamaount]) annualamaount
      ,MIN([monthlyamount]) monthlyamount
      ,MIN(Convert(numeric(19,5),[Increase])) as Increase
         ,ISNULL(LAG(MIN([Rentsqfoot])) Over (Partition by tle_Leasenum order by Year1),MIN([Rentsqfoot])) as lagRentAmount
         ,(ISNULL(LAG(MIN([Rentsqfoot])) Over (Partition by tle_Leasenum order by Year1),MIN([Rentsqfoot])) * (CONVERT(decimal(18, 4),(MIN([Increase]))) -  CONVERT(decimal (18,4),LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1)))/100) as Lagrentincrease
		 --,(min(baserentamount)+((min(baserentamount)*(min(tle_pctcbaseamount)))/100)) as NewRentAmount
         ,ISNULL((ISNULL(LAG(MIN([Rentsqfoot])) Over (Partition by tle_Leasenum order by Year1),MIN([Rentsqfoot])) * (CONVERT(decimal(18, 4),(MIN([Increase]))) -  CONVERT(decimal (18,4),LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1)))/100) + ISNULL(LAG(MIN([Rentsqfoot])) Over (Partition by tle_Leasenum order by Year1),MIN([Rentsqfoot])),MIN([Rentsqfoot]))  as NewRentAmount
         ,ISNULL(LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1),MIN([Increase])) as lagIncrease
         ,ISNULL(LAG(MIN([monthlyamount])) Over (Partition by tle_Leasenum order by Year1),MIN([monthlyamount])) as lagmonthlyamount
         ,MIN([Increase]) -  LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1) as differ1
         ,(CONVERT(decimal(18, 4),(MIN([Increase]))) -  CONVERT(decimal (18,4),LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1)))/100 as differ100
         ,(LAG(MIN([monthlyamount])) Over (Partition by tle_Leasenum order by Year1))* (CONVERT(decimal(18, 4),(MIN([Increase]))) -  CONVERT(decimal (18,4),LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1)))/100 as lagmonthlydiff
         ,((LAG(MIN([monthlyamount])) Over (Partition by tle_Leasenum order by Year1))* (CONVERT(decimal(18, 4),(MIN([Increase]))) -  CONVERT(decimal (18,4),LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1)))/100) + (MIN([monthlyamount])) as totalmonthly
         ,((LAG(MIN([annualamaount])) Over (Partition by tle_Leasenum order by Year1))* (CONVERT(decimal(18, 4),(MIN([Increase]))) -  CONVERT(decimal (18,4),LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1)))/100) + (MIN([annualamaount])) as totalYearly
  ,min(TLE_SquareFootage) SquareFoot,max(tle_termstartd) tle_termstartd,min(tle_pctcbaseamount) baseIncrease
  into ##TMPLease FROM [dbo].[DE_GroundLease_LeaseReport_Detail_vw]
where 
--tle_Leasenum ='LS-1FL3343305'
tle_Leasenum = @leaseId
--and 
--Schedulename Not like '1M%'
  group by [tle_Leasenum],Schedulename, [Year1]
  order by [tle_Leasenum],[Year1],tle_termstartd asc
  option (maxrecursion 300)

 --select * from ##TMPLease order by tle_termstartd asc

  select Row_Number() over (Partition by tle_leasenum order by Schedulename) as row1,
 tle_leasenum,Schedulename,Max(Rentsqfoot) rentsquFoot,Max(baseIncrease) increase,
 (Select  x.Rentsqfoot from ##TMPLease x where x.row1=(##TMPLease.row1)) as prevrow1,
 convert(numeric(19,5),(Select  x.Rentsqfoot from ##TMPLease x where x.row1=(##TMPLease.row1))*(convert(numeric(19,5),avg(Increase))/100)) as NewSQFOOT,
 tle_termstartd

 into ##tmplease2 from ##TMPLease group by tle_leasenum,Schedulename,row1,tle_termstartd
  --select * from ##tmplease2
 select *
 ,((Select (Convert(numeric(19,5),(##tmplease2.increase))-Convert(numeric(19,5),##TMPLease.increase)) from ##TMPLease  where ##TMPLease.row1=##tmplease2.row1-1)/100+1) as InDiff
 --,tle_termstartd
 into ##tmplease3 from ##tmplease2 
 --select * from ##tmplease order by tle_LeaseNum,tle_termstartd asc
  --select * from ##tmplease2
 --select * from ##tmplease3
 --select * from ##tmplease4 order by tle_LeaseNum,tle_termstartd asc
 select 
  row_number() over (order by tle_leasenum,schedulename) as index1,Row_Number() over (Partition by tle_leasenum order by Schedulename) as row1,
 tle_leasenum,schedulename,max(increase) multiplier,Convert(numeric(19,5),1.0000) as newMultiplier,Convert(numeric(19,5),1.0000) RollingNew
 ,max(tle_termstartd) tle_termstartd
  into ##tmplease4 from ##tmplease3
 group by tle_leasenum,schedulename
 order by tle_leasenum,schedulename,tle_termstartd

 --select * from ##tmplease4 order by tle_termstartd asc
  declare @rowdb int
  declare @rowdbcount int
  --set @rowdb=1
  DECLARE db_cursor CURSOR FOR  
  select index1 from ##tmplease4 order by tle_LeaseNum,tle_termstartd asc
  OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @rowdb 

  WHILE @@FETCH_STATUS = 0 
  begin
  declare @previouseMonthInc numeric(19,5)

  declare @CurrentMonthInc numeric(19,5)
  declare @DifferenceInc numeric(19,5)
  declare @NewMultiplier numeric(19,5)
   declare @PrevNewMultiplier numeric(19,5)
 -- select * from ##tmplease4 where   tle_Leasenum='LS-1FL3343302' and Schedulename='48MONTH-F'
set @previouseMonthInc=(select multiplier from ##tmplease4 where index1=@rowdb-1)-- and row1<>1)
--set @PrevNewMultiplier=(select multiplier from ##tmplease4 where index1=@rowdb-1)
set @CurrentMonthInc=(select multiplier from ##tmplease4 where index1=@rowdb and row1<>1)
--drop table 
--select * from ##tmplease4

--set @DifferenceInc=(@CurrentMonthInc-@previouseMonthInc)
set @DifferenceInc=((@previouseMonthInc/100))
set @NewMultiplier=((@DifferenceInc))
declare @rollingnew numeric(19,5)
set @RollingNew=@NewMultiplier
declare @leasenumber char(15)
declare @schedulename char(15)
declare @PrevRollingInc NUMERIC(19,5)
set @PrevRollingInc=(select RollingNew+(multiplier/100) from ##tmplease4 where index1=@rowdb-1)
set @leasenumber=(select tle_Leasenum from ##tmplease4  where index1=@rowdb and row1<>1)
set @schedulename=(select schedulename from ##tmplease4  where index1=@rowdb and row1<>1)

DECLARE @ROLLINGXPREVROLL NUMERIC(19,5)
SET @ROLLINGXPREVROLL=@RollingNew*@PrevRollingInc
  update ##tmplease4 set newMultiplier=ISNULL(@NewMultiplier*(multiplier/100),1)
  where  index1=@rowdb
    update ##tmplease4 set RollingNew=ISNULL(@ROLLINGXPREVROLL,1)
  where  index1=@rowdb
         FETCH NEXT FROM db_cursor INTO @rowdb   

  end
CLOSE db_cursor   
DEALLOCATE db_cursor



  --select * from ##tmplease4

 update ##tmplease 
 set NewrentAmount=Convert(numeric(19,5),baserentamount)*Convert(numeric(19,5),b.aggr)
 from
 (
 select tle_leaseNum,ScheduleName, Convert(numeric(19,5),RollingNew+1) as aggr
 
 from ##tmplease4) b
 where ##tmplease.tle_leaseNum=b.tle_leaseNum and ##tmplease.ScheduleName=b.ScheduleName
 --loop to fix Increase

declare @RowInt int
declare Increase_cursor cursor for
select row1 from ##tmplease order by tle_termstartd asc
open Increase_cursor 
Fetch next from Increase_cursor into @RowInt
WHILE @@FETCH_STATUS = 0   
BEGIN  
Declare @CurrentRentSqarefootRent numeric(19,5)
Declare @PreviousRentSquareFootRent Numeric(19,5)
set @CurrentRentSqarefootRent=(select NewRentAmount from ##tmplease where row1=@RowInt)
set @PreviousRentSquareFootRent=(select NewRentAmount from ##tmplease where row1=@RowInt-1)
update ##TMPLease set Increase=Isnull(((@CurrentRentSqarefootRent-@PreviousRentSquareFootRent)/@PreviousRentSquareFootRent),0)
where row1=@RowInt
  FETCH NEXT FROM Increase_cursor INTO @RowInt  
end
close Increase_cursor
deallocate Increase_cursor




  select tle_Leasenum,Year1,Schedulename,NewRentAmount as Rentsqfoot, NewRentAmount*SquareFoot as AnnualAmaount,
  monthlyamount,
  Case when cast((Increase*100) as decimal(10,0))<0 then 0 else cast((Increase*100) as decimal(10,0)) end as Increase
  ,tle_termstartd
 from ##TMPLease order by tle_LeaseNum,tle_termstartd asc
-- --select * from ##TMPLease


--DROP TABLE ##TMPLease

--DROP TABLE ##tmplease2

--DROP TABLE ##TMPLease3
--DROP TABLE ##TMPLease4
GO
GRANT EXECUTE ON  [dbo].[pGetAnnualSchedule67] TO [DYNGRP]
GO
