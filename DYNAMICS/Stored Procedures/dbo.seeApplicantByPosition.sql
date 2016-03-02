SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeApplicantByPosition]  @UserDate datetime  = NULL,  @MaxPositions int   = 0 as  if @MaxPositions > 0   select top (select @MaxPositions) COUNT([APPLICANTNUMBER_I]) as Applicants, [POSITIONCODE_I] as Position  from HR2APP12  where [STATUS0_I] in (2, 1)   and [APPLYDATE_I] <= dbo.GetDateStripTime(@UserDate)   group by [POSITIONCODE_I]   order by Applicants desc, [POSITIONCODE_I]  else   select COUNT([APPLICANTNUMBER_I]) as Applicants,  [POSITIONCODE_I] as Position  from HR2APP12   where [STATUS0_I] in (2, 1)   and [APPLYDATE_I] <= dbo.GetDateStripTime(@UserDate)   group by [POSITIONCODE_I]   order by Applicants desc    
GO
GRANT EXECUTE ON  [dbo].[seeApplicantByPosition] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeApplicantByPosition] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeApplicantByPosition] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeApplicantByPosition] TO [rpt_payroll]
GO
