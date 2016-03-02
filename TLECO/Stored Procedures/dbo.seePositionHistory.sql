SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seePositionHistory] @I_dUserDate datetime = null,                                              @Employee    varchar(max)  as    declare @ValuesTable table (      Value nvarchar(500))    insert into @ValuesTable    select *    from   dbo.seeSplitString(@Employee, ',')    if ( @I_dUserDate is not null )      begin          select @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate),                                @I_dUserDate)          select @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate),                                @I_dUserDate)          select @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate),                                @I_dUserDate)          select @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND,                                                      @I_dUserDate),                                       @I_dUserDate)      end    if @Employee = ''      begin          select a.EMPLOYID,                 a.FRSTNAME,                 a.LASTNAME,                 isnull(dbo.DYN_FUNC_HR_Status(a.HRSTATUS), '') as HRSTATUS,                 isnull(b.POSITION_I, '')                       as POSITION_I,                 isnull(b.DIVISION_I, '')                       as DIVISION_I,                 isnull(b.DEPARTMENTNAME_I, '')                 as                 DEPARTMENTNAME_I,                 isnull(b.Effective_Date, '1/1/1900')           as Effective_Date,                [Employee ID For Drillback]          from   UPR00100 a inner join Employees     on a.EMPLOYID = Employees.[Employee ID]                     left outer join MPOSHIST b                   on a.EMPLOYID = b.EMPID_I          where  ( @I_dUserDate is null                    or @I_dUserDate >= b.CHANGEDATE_I )          order  by EMPLOYID,                    isnull(b.Effective_Date, '1/1/1900') DESC      end    else      begin          select a.EMPLOYID,                 a.FRSTNAME,                 a.LASTNAME,                 isnull(dbo.DYN_FUNC_HR_Status(a.HRSTATUS), '') as HRSTATUS,                 isnull(b.POSITION_I, '')                       as POSITION_I,                 isnull(b.DIVISION_I, '')                       as DIVISION_I,                 isnull(b.DEPARTMENTNAME_I, '')                 as                 DEPARTMENTNAME_I,                 isnull(b.Effective_Date, '1/1/1900')           as Effective_Date,     [Employee ID For Drillback]          from   UPR00100 a inner join Employees     on a.EMPLOYID = Employees.[Employee ID]                 inner join @ValuesTable EmployeeList                   on a.EMPLOYID = EmployeeList.Value                 left outer join MPOSHIST b                   on a.EMPLOYID = b.EMPID_I          where  ( @I_dUserDate is null                    or @I_dUserDate >= b.CHANGEDATE_I )          order  by EMPLOYID,                    isnull(b.Effective_Date, '1/1/1900') DESC      end           
GO
GRANT EXECUTE ON  [dbo].[seePositionHistory] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seePositionHistory] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seePositionHistory] TO [rpt_human resource administrator]
GO
