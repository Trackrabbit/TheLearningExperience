SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





CREATE procedure [dbo].[DE_Build_ground_lease_Schedule_sp] as
drop table DE_rentchedule_Import

declare @Start_Date as date
declare @End_Date as date
DECLARE @Counter INT
DECLARE @NextDate DATE
DECLARE @MonthNo INT
DECLARE @TempTbl TABLE
(
monthNo int
)
set @Start_Date = '01/01/2005'
set @End_Date = '12/31/2080'
SET @Counter = 0
SET @NextDate = DATEADD(dd,@Counter + 1, @Start_Date)
SET NOCOUNT ON;

WHILE @NextDate < @End_Date
BEGIN
IF @NextDate > @Start_Date
BEGIN
SET @Counter = @Counter + 1
END
SET @NextDate = DATEADD(dd,@Counter, @Start_Date)
SET @MonthNo = DATEPART(MM, @NextDate)
IF ((select count(1) from @TempTbl where MonthNo = @MonthNo) = 0)
BEGIN
insert into @TempTbl values (@MonthNo)
END
END


select 
tle_Leasenum
,ISNULL(((((tle_baseamountc * tle_SquareFootage) *  (tle_pctcbaseamount))/100)/12),0)  as  amount_
,wn.month_Start as month_Start
,wn.month_End as month_End
into DE_rentchedule_Import
from DE_GroundLease_Integration_vw lr

JOIN 
(SELECT MonthNo, beginofmonth as month_Start, Endofmonth as month_End FROM @TempTbl
JOIN [DynamicsGPWarehouse]..[DE_BinaryStream_Calendar]
ON MonthNo = month1) wn
  ON wn.month_Start between [tle_termstartd] AND [tle_termendd] 







GO
GRANT EXECUTE ON  [dbo].[DE_Build_ground_lease_Schedule_sp] TO [DYNGRP]
GO
