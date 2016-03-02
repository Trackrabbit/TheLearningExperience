SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeEmergencyContacts]  @Employee varchar(max) as  declare @ValuesTable table (Value nvarchar(500))  insert into @ValuesTable select * from dbo.seeSplitString(@Employee, ',')  if @Employee = '' begin  select   a.EMPLOYID, a.FRSTNAME, a.LASTNAME,  isnull( b.SEQNUMBR, 0) as SEQNUMBR,   isnull( b.EMERGENCYCONTACT, '') as EMERGENCYCONTACT,   isnull ( b.EMERGENCYRELATION, '') as EMERGENCYRELATION,  isnull( b.HOMEPHONE, '') as HOMEPHONE,   isnull( b.WORKPHONE, '') as WORKPHONE,   isnull( b.EXTENSION, '') as EXTENSION  from   UPR00100 a left outer join UPR00113 b on  a.EMPLOYID = b.EMPLOYID  order by EMPLOYID, isnull(SEQNUMBR, 0) end else begin  select   a.EMPLOYID, a.FRSTNAME, a.LASTNAME,  isnull(b.SEQNUMBR, 0) as SEQNUMBR,   isnull(b.EMERGENCYCONTACT, '') as EMERGENCYCONTACT,   isnull (b.EMERGENCYRELATION, '') as EMERGENCYRELATION,  isnull(b.HOMEPHONE, '') as HOMEPHONE,   isnull(b.WORKPHONE, '') as WORKPHONE,   isnull(b.EXTENSION, '') as EXTENSION  from   UPR00100 a inner join @ValuesTable EmployeeList on  a.EMPLOYID = EmployeeList.Value  left outer join UPR00113 b on  a.EMPLOYID = b.EMPLOYID   order by EMPLOYID, isnull(SEQNUMBR, 0) end    
GO
GRANT EXECUTE ON  [dbo].[seeEmergencyContacts] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeEmergencyContacts] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeEmergencyContacts] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeEmergencyContacts] TO [rpt_power user]
GO
