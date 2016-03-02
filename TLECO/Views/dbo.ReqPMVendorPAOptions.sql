SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqPMVendorPAOptions] AS  
			select  
				null VENDORID,  
				null VNDCLSID,  
				null PAddlDefpoformatouse,  
				null PAUnit_of_Measure,  
				null PAUNITCOST,  
				null PATMProfitType,  
				null PATMProfitAmount,  
				null PATMProfitPercent,  
				null PAFFProfitType,  
				null PAFFProfitAmount,  
				null PAFFProfitPercent,  
				null PAProfit_Type__CP,  
				null PAProfitAmountCP,  
				null PAProfitPercentCP,  
				null PAUD1,  
				null PAUD2  
			where  
				0=1
GO
GRANT SELECT ON  [dbo].[ReqPMVendorPAOptions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPMVendorPAOptions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPMVendorPAOptions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPMVendorPAOptions] TO [DYNGRP]
GO
