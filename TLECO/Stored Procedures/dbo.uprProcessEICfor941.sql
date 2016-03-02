SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprProcessEICfor941]  @Year smallint,  @sCheckDate datetime,  @eCheckDate datetime,  @EICAmount dec(19,5) output,  @O_iErrorState     int output  AS  select @EICAmount = (select sum( UPRTRXAM) from dbo.UPR30300 join dbo.UPR00400   on UPR30300.EMPLOYID = UPR00400.EMPLOYID  where UPR30300.PAYROLCD = UPR00400.PAYRCORD  and UPR30300.YEAR1= @Year  and UPR30300.CHEKDATE between @sCheckDate and @eCheckDate  and UPR30300.PAYADVNC = 0.00   and UPR30300.PYRLRTYP= 1   and UPR00400.PAYTYPE =  13 )  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprProcessEICfor941] TO [DYNGRP]
GO
