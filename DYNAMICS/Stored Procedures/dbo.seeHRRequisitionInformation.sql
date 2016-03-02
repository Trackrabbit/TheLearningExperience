SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeHRRequisitionInformation]  @I_dUserDate datetime = null,  @RequisitionID varchar(max) as  declare @ValuesTable table (Value nvarchar(500)) insert into @ValuesTable select * from dbo.seeSplitString(@RequisitionID, ',')  if (@I_dUserDate is not null) begin  select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate)  select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate)  select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate)  select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate) end  if @RequisitionID = '' begin  select  a.FFIRSTNAME_I,  a.LLASTNAME_I,  a.APPLICANTNUMBER_I,  a.APPLYDATE_I,  a.REQUISITIONNUMBER_I,  case  when b.REQSTATUS_I = 2 then 'Closed'  when b.REQSTATUS_I = 3 then 'On Hold'  when b.REQSTATUS_I = 4 then 'Immediate'  else 'Open'  end as REQSTATUS_I,  b.POSITIONCODE_I,  b.MANAGER_I,  b.SUPERVISORCODE_I,  b.OPENINGDATE_I,  b.RECRUITER_I  from HR2APP12 a inner join HR2REQ01 b  on a.REQUISITIONNUMBER_I = b.REQUISITIONNUMBER_I  where (@I_dUserDate is null or @I_dUserDate >= b.OPENINGDATE_I)  order by a.REQUISITIONNUMBER_I, a.LLASTNAME_I, a.FFIRSTNAME_I end else begin  select   a.FFIRSTNAME_I,  a.LLASTNAME_I,  a.APPLICANTNUMBER_I,  a.APPLYDATE_I,  a.REQUISITIONNUMBER_I,  case  when b.REQSTATUS_I = 2 then 'Closed'  when b.REQSTATUS_I = 3 then 'On Hold'  when b.REQSTATUS_I = 4 then 'Immediate'  else 'Open'  end as REQSTATUS_I,  b.POSITIONCODE_I,  b.MANAGER_I,  b.SUPERVISORCODE_I,  b.OPENINGDATE_I,  b.RECRUITER_I  from   HR2APP12 a inner join HR2REQ01 b  on a.REQUISITIONNUMBER_I = b.REQUISITIONNUMBER_I  inner join @ValuesTable RequisList on  RequisList.Value = RTRIM(ltrim(str(b.REQUISITIONNUMBER_I)))  where (@I_dUserDate is null or @I_dUserDate >= b.OPENINGDATE_I)  order by a.REQUISITIONNUMBER_I, a.LLASTNAME_I, a.FFIRSTNAME_I end    
GO
GRANT EXECUTE ON  [dbo].[seeHRRequisitionInformation] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeHRRequisitionInformation] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeHRRequisitionInformation] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeHRRequisitionInformation] TO [rpt_power user]
GO
