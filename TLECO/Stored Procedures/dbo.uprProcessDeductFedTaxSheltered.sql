SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprProcessDeductFedTaxSheltered]  @Year smallint,  @sCheckDate datetime,  @eCheckDate datetime,  @DeductionAmount dec(19,5) output,  @O_iErrorState     int output  AS  select @DeductionAmount = (select sum( UPRTRXAM) from dbo.UPR30300 join dbo.UPR00500   on UPR30300.EMPLOYID = UPR00500.EMPLOYID  where UPR30300.PAYROLCD = UPR00500.DEDUCTON  and UPR30300.YEAR1= @Year  and UPR30300.CHEKDATE between @sCheckDate and @eCheckDate  and UPR30300.PYRLRTYP=  2   and UPR00500.SFRFEDTX =  1)  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprProcessDeductFedTaxSheltered] TO [DYNGRP]
GO
