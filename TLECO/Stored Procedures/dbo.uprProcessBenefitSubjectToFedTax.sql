SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprProcessBenefitSubjectToFedTax]  @Year smallint,  @sCheckDate datetime,  @eCheckDate datetime,  @BenefitAmount dec(19,5) output,  @O_iErrorState     int output  AS  select @BenefitAmount = (select sum( UPRTRXAM) from dbo.UPR30300 join dbo.UPR00600   on UPR30300.EMPLOYID = UPR00600.EMPLOYID  where UPR30300.PAYROLCD = UPR00600.BENEFIT  and UPR30300.YEAR1= @Year  and UPR30300.CHEKDATE between @sCheckDate and @eCheckDate  and UPR30300.PYRLRTYP=  3   and (UPR00600.SBJTFDTX =  1 or UPR00600.W2BXNMBR = 1))  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprProcessBenefitSubjectToFedTax] TO [DYNGRP]
GO
