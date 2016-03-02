SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seePMTopVendorsMetric]   @NumberToSelect int = NULL   as set nocount ON  select top (select @NumberToSelect) AMBLDTYD, AMBLDLYR, VENDORID   from PM00201 with (NOLOCK) ORDER BY AMBLDTYD DESC  set nocount OFF RETURN   
GO
GRANT EXECUTE ON  [dbo].[seePMTopVendorsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seePMTopVendorsMetric] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seePMTopVendorsMetric] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seePMTopVendorsMetric] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seePMTopVendorsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seePMTopVendorsMetric] TO [rpt_purchasing manager]
GO
