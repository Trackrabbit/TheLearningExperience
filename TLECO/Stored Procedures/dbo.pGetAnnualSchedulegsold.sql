SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--grant exec on pGetAnnualSchedule to public 
--exec pGetAnnualSchedulegsold @leaseId='LS-1FL3343305'
CREATE proc [dbo].[pGetAnnualSchedulegsold] @leaseId char(15)
as

--declare @pctincrease decimal
--set @pctincrease=.10





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
         ,ISNULL((ISNULL(LAG(MIN([Rentsqfoot])) Over (Partition by tle_Leasenum order by Year1),MIN([Rentsqfoot])) * (CONVERT(decimal(18, 4),(MIN([Increase]))) -  CONVERT(decimal (18,4),LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1)))/100) + ISNULL(LAG(MIN([Rentsqfoot])) Over (Partition by tle_Leasenum order by Year1),MIN([Rentsqfoot])),MIN([Rentsqfoot]))  as NewRentAmount
         ,ISNULL(LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1),MIN([Increase])) as lagIncrease
         ,ISNULL(LAG(MIN([monthlyamount])) Over (Partition by tle_Leasenum order by Year1),MIN([monthlyamount])) as lagmonthlyamount
         ,MIN([Increase]) -  LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1) as differ1
         ,(CONVERT(decimal(18, 4),(MIN([Increase]))) -  CONVERT(decimal (18,4),LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1)))/100 as differ100
         ,(LAG(MIN([monthlyamount])) Over (Partition by tle_Leasenum order by Year1))* (CONVERT(decimal(18, 4),(MIN([Increase]))) -  CONVERT(decimal (18,4),LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1)))/100 as lagmonthlydiff
         ,((LAG(MIN([monthlyamount])) Over (Partition by tle_Leasenum order by Year1))* (CONVERT(decimal(18, 4),(MIN([Increase]))) -  CONVERT(decimal (18,4),LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1)))/100) + (MIN([monthlyamount])) as totalmonthly
         ,((LAG(MIN([annualamaount])) Over (Partition by tle_Leasenum order by Year1))* (CONVERT(decimal(18, 4),(MIN([Increase]))) -  CONVERT(decimal (18,4),LAG(MIN([Increase])) Over (Partition by tle_Leasenum order by Year1)))/100) + (MIN([annualamaount])) as totalYearly
  ,min(TLE_SquareFootage) SquareFoot
  into ##TMPLease FROM [dbo].[DE_GroundLease_LeaseReport_Detail_vw]
where 
tle_Leasenum = @leaseId
and 
Schedulename Not like '1M%'
  group by [tle_Leasenum],Schedulename ,[Year1]
  order by [tle_Leasenum],[Year1]
  option (maxrecursion 300)

 

  select Row_Number() over (Partition by tle_leasenum order by Schedulename) as row1,
 tle_leasenum,Schedulename,Max(Rentsqfoot) rentsquFoot,Max(Increase) increase,
 (Select  x.Rentsqfoot from ##TMPLease x where x.row1=(##TMPLease.row1)) as prevrow1,
 convert(numeric(19,5),(Select  x.Rentsqfoot from ##TMPLease x where x.row1=(##TMPLease.row1))*(convert(numeric(19,5),avg(Increase))/100)) as NewSQFOOT

 into ##tmplease2 from ##TMPLease group by tle_leasenum,Schedulename,row1
  --select * from ##tmplease2
 select *
 ,((Select (Convert(numeric(19,5),(##tmplease2.increase))-Convert(numeric(19,5),##TMPLease.increase)) from ##TMPLease  where ##TMPLease.row1=##tmplease2.row1-1)/100+1) as InDiff
 --,tle_termstartd
 into ##tmplease3 from ##tmplease2 
 --select * from ##tmplease
  --select * from ##tmplease2
 --select * from ##tmplease3
 --drop table ##tmplease4
 select 
  row_number() over (order by tle_leasenum,schedulename) as index1,Row_Number() over (Partition by tle_leasenum order by Schedulename) as row1,
 tle_leasenum,schedulename,max(increase) multiplier,Convert(numeric(19,5),1.0000) as newMultiplier,Convert(numeric(19,5),1.0000) RollingNew
 --,max(tle_termstartd) tle_termstartd
  into ##tmplease4 from ##tmplease3
 group by tle_leasenum,schedulename
 order by tle_leasenum,schedulename
 --select * from ##tmplease4 order by tle_leasenum,schedulename
  --select * from ##tmplease order by tle_leasenum,ScheduleName
  --@pctincrease
--  declare @pctincrease decimal
--set @pctincrease=.10

  declare @rowdb int
  declare @rowdbcount int
  set @rowdb=1
 set @rowdbcount=(select count(*) from ##tmplease4)
  while @rowdb<=@rowdbcount
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


set @DifferenceInc=(@CurrentMonthInc-@previouseMonthInc)
set @NewMultiplier=(@DifferenceInc/100+1)
declare @rollingnew numeric(19,5)
set @RollingNew=@NewMultiplier
declare @leasenumber char(15)
declare @schedulename char(15)
declare @PrevRollingInc NUMERIC(19,5)
set @PrevRollingInc=(select RollingNew from ##tmplease4 where index1=@rowdb-1)
set @leasenumber=(select tle_Leasenum from ##tmplease4  where index1=@rowdb and row1<>1)
set @schedulename=(select schedulename from ##tmplease4  where index1=@rowdb and row1<>1)

--print @NewMultiplier
--print @RollingNew
--print @PrevRollingInc
DECLARE @ROLLINGXPREVROLL NUMERIC(19,5)
SET @ROLLINGXPREVROLL=@RollingNew*@PrevRollingInc
  update ##tmplease4 set newMultiplier=ISNULL(@NewMultiplier,1)
  where  index1=@rowdb
    update ##tmplease4 set RollingNew=ISNULL(@ROLLINGXPREVROLL,1)
  where  index1=@rowdb
  set @rowdb=@rowdb+1

  end

  --select * from ##tmplease4


  --update ##tmplease4 set multiplier=##tmplease4.multiplier+(##tmplease4.multiplier-b.multiplier)
  --From
  --(
  --select * from ##tmplease4
  --) b where b.row1<>1 and  ##tmplease4.row1=b.row1-1
  --select * from ##tmplease
 update ##tmplease 
 set NewrentAmount=Convert(numeric(19,5),baserentamount)*Convert(numeric(19,5),b.aggr)
 from
 (
 select tle_leaseNum,ScheduleName, Convert(numeric(19,5),RollingNew) as aggr
 
 from ##tmplease4) b
 where ##tmplease.tle_leaseNum=b.tle_leaseNum and ##tmplease.ScheduleName=b.ScheduleName
 --loop to fix Increase
 declare @rowdb1 int
  declare @rowdbcount1 int
  set @rowdb1=1
 set @rowdbcount1=(select count(*) from ##tmplease)
  while @rowdb1<=@rowdbcount1
  begin
Declare @CurrentRentSqarefootRent numeric(19,5)
Declare @PreviousRentSquareFootRent Numeric(19,5)
set @CurrentRentSqarefootRent=(select NewRentAmount from ##tmplease where row1=@rowdb1)
set @PreviousRentSquareFootRent=(select NewRentAmount from ##tmplease where row1=@rowdb1-1)
--select * from ##tmplease
--update ##TMPLease set Increase=@PreviousRentSquareFootRent
update ##TMPLease set Increase=Isnull(((@CurrentRentSqarefootRent-@PreviousRentSquareFootRent)/@PreviousRentSquareFootRent)/100,0)
where row1=@rowdb1


set @rowdb1=@rowdb1+1
end


  select tle_Leasenum,Year1,Schedulename,NewRentAmount as Rentsqfoot, NewRentAmount*SquareFoot as AnnualAmaount,
  monthlyamount,Increase*100
 from ##TMPLease --order by tle_LeaseNum,tle_termstartd asc
 --select * from ##TMPLease


DROP TABLE ##TMPLease

DROP TABLE ##tmplease2

DROP TABLE ##TMPLease3
DROP TABLE ##TMPLease4
GO
GRANT EXECUTE ON  [dbo].[pGetAnnualSchedulegsold] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[pGetAnnualSchedulegsold] TO [public]
GO
