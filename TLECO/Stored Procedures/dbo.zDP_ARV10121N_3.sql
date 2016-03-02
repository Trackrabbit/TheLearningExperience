SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ARV10121N_3] (@BS int, @DATEOFLASTREVIEW_I datetime, @EMPID_I char(15), @DEX_ROW_ID int, @DATEOFLASTREVIEW_I_RS datetime, @EMPID_I_RS char(15), @DATEOFLASTREVIEW_I_RE datetime, @EMPID_I_RE char(15)) AS  set nocount on IF @DATEOFLASTREVIEW_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, DATEOFLASTREVIEW_I, REVIEWRATINGDECIMA_I, REVIEWSETUPCODE_I, REVIEWSETUPNAME_I, REVIEWRANGE_I, REVIEWEDBY_I, APPROVEDBY_I, DATEOFNEXTREVIEW_I, EFFICIENCY_I, COSTOFERROR_I, COSTOFQUALITY_I, RECOMMENDEDWAGE_I, EFFECTIVEDATE_I, PROBATION_I, TOTALWEIGHT_I, DESPOSCODE_I, IMPROVEMENT_I, SALPERCHANGE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NOTESINDEX2_I, NOTESINDEX3_I, NOTESINDEX4_I, USEWORDSGB_I, DEX_ROW_ID FROM .ARV10121 WHERE ( DATEOFLASTREVIEW_I = @DATEOFLASTREVIEW_I AND EMPID_I = @EMPID_I AND DEX_ROW_ID > @DEX_ROW_ID OR DATEOFLASTREVIEW_I = @DATEOFLASTREVIEW_I AND EMPID_I > @EMPID_I OR DATEOFLASTREVIEW_I < @DATEOFLASTREVIEW_I ) ORDER BY DATEOFLASTREVIEW_I DESC, EMPID_I ASC, DEX_ROW_ID ASC END ELSE IF @DATEOFLASTREVIEW_I_RS = @DATEOFLASTREVIEW_I_RE BEGIN SELECT TOP 25  EMPID_I, DATEOFLASTREVIEW_I, REVIEWRATINGDECIMA_I, REVIEWSETUPCODE_I, REVIEWSETUPNAME_I, REVIEWRANGE_I, REVIEWEDBY_I, APPROVEDBY_I, DATEOFNEXTREVIEW_I, EFFICIENCY_I, COSTOFERROR_I, COSTOFQUALITY_I, RECOMMENDEDWAGE_I, EFFECTIVEDATE_I, PROBATION_I, TOTALWEIGHT_I, DESPOSCODE_I, IMPROVEMENT_I, SALPERCHANGE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NOTESINDEX2_I, NOTESINDEX3_I, NOTESINDEX4_I, USEWORDSGB_I, DEX_ROW_ID FROM .ARV10121 WHERE DATEOFLASTREVIEW_I = @DATEOFLASTREVIEW_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( DATEOFLASTREVIEW_I = @DATEOFLASTREVIEW_I AND EMPID_I = @EMPID_I AND DEX_ROW_ID > @DEX_ROW_ID OR DATEOFLASTREVIEW_I = @DATEOFLASTREVIEW_I AND EMPID_I > @EMPID_I OR DATEOFLASTREVIEW_I < @DATEOFLASTREVIEW_I ) ORDER BY DATEOFLASTREVIEW_I DESC, EMPID_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, DATEOFLASTREVIEW_I, REVIEWRATINGDECIMA_I, REVIEWSETUPCODE_I, REVIEWSETUPNAME_I, REVIEWRANGE_I, REVIEWEDBY_I, APPROVEDBY_I, DATEOFNEXTREVIEW_I, EFFICIENCY_I, COSTOFERROR_I, COSTOFQUALITY_I, RECOMMENDEDWAGE_I, EFFECTIVEDATE_I, PROBATION_I, TOTALWEIGHT_I, DESPOSCODE_I, IMPROVEMENT_I, SALPERCHANGE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NOTESINDEX2_I, NOTESINDEX3_I, NOTESINDEX4_I, USEWORDSGB_I, DEX_ROW_ID FROM .ARV10121 WHERE DATEOFLASTREVIEW_I BETWEEN @DATEOFLASTREVIEW_I_RE AND @DATEOFLASTREVIEW_I_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( DATEOFLASTREVIEW_I = @DATEOFLASTREVIEW_I AND EMPID_I = @EMPID_I AND DEX_ROW_ID > @DEX_ROW_ID OR DATEOFLASTREVIEW_I = @DATEOFLASTREVIEW_I AND EMPID_I > @EMPID_I OR DATEOFLASTREVIEW_I < @DATEOFLASTREVIEW_I ) ORDER BY DATEOFLASTREVIEW_I DESC, EMPID_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ARV10121N_3] TO [DYNGRP]
GO
