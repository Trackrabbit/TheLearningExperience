SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RV010121F_1] (@EMPID_I_RS char(15), @DATEOFLASTREVIEW_I_RS datetime, @EMPID_I_RE char(15), @DATEOFLASTREVIEW_I_RE datetime) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, DATEOFLASTREVIEW_I, REVIEWRATINGDECIMA_I, REVIEWSETUPCODE_I, REVIEWSETUPNAME_I, REVIEWRANGE_I, REVIEWEDBY_I, APPROVEDBY_I, DATEOFNEXTREVIEW_I, EFFICIENCY_I, COSTOFERROR_I, COSTOFQUALITY_I, RECOMMENDEDWAGE_I, EFFECTIVEDATE_I, PROBATION_I, TOTALWEIGHT_I, DESPOSCODE_I, IMPROVEMENT_I, SALPERCHANGE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NOTESINDEX2_I, NOTESINDEX3_I, NOTESINDEX4_I, USEWORDSGB_I, DEX_ROW_ID FROM .RV010121 ORDER BY EMPID_I ASC, DATEOFLASTREVIEW_I ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, DATEOFLASTREVIEW_I, REVIEWRATINGDECIMA_I, REVIEWSETUPCODE_I, REVIEWSETUPNAME_I, REVIEWRANGE_I, REVIEWEDBY_I, APPROVEDBY_I, DATEOFNEXTREVIEW_I, EFFICIENCY_I, COSTOFERROR_I, COSTOFQUALITY_I, RECOMMENDEDWAGE_I, EFFECTIVEDATE_I, PROBATION_I, TOTALWEIGHT_I, DESPOSCODE_I, IMPROVEMENT_I, SALPERCHANGE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NOTESINDEX2_I, NOTESINDEX3_I, NOTESINDEX4_I, USEWORDSGB_I, DEX_ROW_ID FROM .RV010121 WHERE EMPID_I = @EMPID_I_RS AND DATEOFLASTREVIEW_I BETWEEN @DATEOFLASTREVIEW_I_RS AND @DATEOFLASTREVIEW_I_RE ORDER BY EMPID_I ASC, DATEOFLASTREVIEW_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, DATEOFLASTREVIEW_I, REVIEWRATINGDECIMA_I, REVIEWSETUPCODE_I, REVIEWSETUPNAME_I, REVIEWRANGE_I, REVIEWEDBY_I, APPROVEDBY_I, DATEOFNEXTREVIEW_I, EFFICIENCY_I, COSTOFERROR_I, COSTOFQUALITY_I, RECOMMENDEDWAGE_I, EFFECTIVEDATE_I, PROBATION_I, TOTALWEIGHT_I, DESPOSCODE_I, IMPROVEMENT_I, SALPERCHANGE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NOTESINDEX2_I, NOTESINDEX3_I, NOTESINDEX4_I, USEWORDSGB_I, DEX_ROW_ID FROM .RV010121 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND DATEOFLASTREVIEW_I BETWEEN @DATEOFLASTREVIEW_I_RS AND @DATEOFLASTREVIEW_I_RE ORDER BY EMPID_I ASC, DATEOFLASTREVIEW_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RV010121F_1] TO [DYNGRP]
GO
