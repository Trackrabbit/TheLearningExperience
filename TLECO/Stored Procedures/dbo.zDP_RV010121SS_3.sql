SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RV010121SS_3] (@DATEOFLASTREVIEW_I datetime, @EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, DATEOFLASTREVIEW_I, REVIEWRATINGDECIMA_I, REVIEWSETUPCODE_I, REVIEWSETUPNAME_I, REVIEWRANGE_I, REVIEWEDBY_I, APPROVEDBY_I, DATEOFNEXTREVIEW_I, EFFICIENCY_I, COSTOFERROR_I, COSTOFQUALITY_I, RECOMMENDEDWAGE_I, EFFECTIVEDATE_I, PROBATION_I, TOTALWEIGHT_I, DESPOSCODE_I, IMPROVEMENT_I, SALPERCHANGE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NOTESINDEX2_I, NOTESINDEX3_I, NOTESINDEX4_I, USEWORDSGB_I, DEX_ROW_ID FROM .RV010121 WHERE DATEOFLASTREVIEW_I = @DATEOFLASTREVIEW_I AND EMPID_I = @EMPID_I ORDER BY DATEOFLASTREVIEW_I DESC, EMPID_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RV010121SS_3] TO [DYNGRP]
GO
