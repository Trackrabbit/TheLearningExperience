SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeApplicantByPositionDetail]  @UserDate datetime  = NULL,  @PositionCode varchar(31)  = '',  @MaxPositions int    = 0 as  if @MaxPositions > 0 and @PositionCode = ''  select a.[POSITIONCODE_I] as 'Position Code', a.[APPLICANTNUMBER_I] as 'Applicant Number',a.[DSCRIPTN] as 'Description',  a.[FFIRSTNAME_I] as 'First Name', a.[LLASTNAME_I] as 'Last Name', a.[APPLYDATE_I] as 'Apply Date', a.[ADDRESS1] as 'Address 1', a.[ADDRESS2] as 'Address 2',   a.[CITY] as 'City', a.[STATE] as 'State', a.[ZIPCODE_I] as 'Zip Code', a.[HOMEPHONE] as 'Home Phone', a.[WORKPHONE] as 'Work Phone'  from HR2APP12 a,  (select top (select @MaxPositions) COUNT([APPLICANTNUMBER_I]) as AppCount, [POSITIONCODE_I]   from HR2APP12  where  [STATUS0_I] in (2, 1) and   [APPLYDATE_I] <= dbo.GetDateStripTime(@UserDate)  group by [POSITIONCODE_I]  order by AppCount desc, [POSITIONCODE_I]) b  where [STATUS0_I] in (2, 1) and   [APPLYDATE_I] <= dbo.GetDateStripTime(@UserDate) and  a.[POSITIONCODE_I] = b.[POSITIONCODE_I]   else if @PositionCode = ''   select [POSITIONCODE_I] as 'Position Code', [APPLICANTNUMBER_I] as 'Applicant Number',[DSCRIPTN] as 'Description',  [FFIRSTNAME_I] as 'First Name', [LLASTNAME_I] as 'Last Name', [APPLYDATE_I] as 'Apply Date', [ADDRESS1] as 'Address 1', [ADDRESS2] as 'Address 2', [CITY] as 'City', [STATE] as 'State', [ZIPCODE_I] as 'Zip Code', [HOMEPHONE] as 'Home Phone', [WORKPHONE] as 'Work Phone'  from HR2APP12   where [STATUS0_I] in (2, 1) and   [APPLYDATE_I] <= dbo.GetDateStripTime(@UserDate) else  select [POSITIONCODE_I] as 'Position Code', [APPLICANTNUMBER_I] as 'Applicant Number',[DSCRIPTN] as 'Description',  [FFIRSTNAME_I] as 'First Name', [LLASTNAME_I] as 'Last Name', [APPLYDATE_I] as 'Apply Date', [ADDRESS1] as 'Address 1', [ADDRESS2] as 'Address 2', [CITY] as 'City', [STATE] as 'State', [ZIPCODE_I] as 'Zip Code', [HOMEPHONE] as 'Home Phone', [WORKPHONE] as 'Work Phone'  from HR2APP12   where [STATUS0_I] in (2, 1) and   [APPLYDATE_I] <= dbo.GetDateStripTime(@UserDate) and   [POSITIONCODE_I] = @PositionCode    
GO
GRANT EXECUTE ON  [dbo].[seeApplicantByPositionDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeApplicantByPositionDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeApplicantByPositionDetail] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeApplicantByPositionDetail] TO [rpt_payroll]
GO
