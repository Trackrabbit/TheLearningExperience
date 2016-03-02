SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_glGetStartEndDatesOfPeriod]  @I_sYear smallint = NULL,  @I_sPeriod smallint = NULL,  @O_dPeriodStart datetime = NULL output,  @O_dPeriodEnd datetime = NULL output as  declare @O_iErrorState int   exec glGetStartEndDatesOfPeriod @I_sYear, @I_sPeriod, @O_dPeriodStart output, @O_dPeriodEnd output, @O_iErrorState output  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_glGetStartEndDatesOfPeriod] TO [DYNGRP]
GO
