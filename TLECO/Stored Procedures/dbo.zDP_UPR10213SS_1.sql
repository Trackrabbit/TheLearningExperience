SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10213SS_1] (@USERID char(15), @EMPLOYID char(15)) AS  set nocount on SELECT TOP 1  EMPLOYID, PYCDDSAR_1, PYCDDSAR_2, PYCDDSAR_3, PYCDDSAR_4, PYCDDSAR_5, PYCDDSAR_6, PYCDDSAR_7, PYCDDSAR_8, PYCDDSAR_9, PYCDDSAR_10, PYCDDSAR_11, PYCDDSAR_12, PYCDDSAR_13, PYCDDSAR_14, PYCDDSAR_15, PYCDDSAR_16, PYCDDSAR_17, PYCDDSAR_18, PYCDDSAR_19, PYCDDSAR_20, PYCDDSAR_21, PYCDDSAR_22, PYCDDSAR_23, PYCDDSAR_24, PYCDDSAR_25, deddesar_1, deddesar_2, deddesar_3, deddesar_4, deddesar_5, deddesar_6, deddesar_7, deddesar_8, deddesar_9, deddesar_10, deddesar_11, deddesar_12, deddesar_13, deddesar_14, deddesar_15, deddesar_16, deddesar_17, deddesar_18, deddesar_19, deddesar_20, deddesar_21, deddesar_22, deddesar_23, deddesar_24, deddesar_25, BENDESAR_1, BENDESAR_2, BENDESAR_3, BENDESAR_4, BENDESAR_5, BENDESAR_6, BENDESAR_7, BENDESAR_8, BENDESAR_9, BENDESAR_10, BENDESAR_11, BENDESAR_12, BENDESAR_13, BENDESAR_14, BENDESAR_15, BENDESAR_16, BENDESAR_17, BENDESAR_18, BENDESAR_19, BENDESAR_20, BENDESAR_21, BENDESAR_22, BENDESAR_23, BENDESAR_24, BENDESAR_25, TIMECODEDESCARRAY_1, TIMECODEDESCARRAY_2, TIMECODEDESCARRAY_3, TIMECODEDESCARRAY_4, TIMECODEDESCARRAY_5, TIMECODEDESCARRAY_6, TIMECODEDESCARRAY_7, TIMECODEDESCARRAY_8, TIMECODEDESCARRAY_9, TIMECODEDESCARRAY_10, TIMECODEDESCARRAY_11, TIMECODEDESCARRAY_12, TIMECODEDESCARRAY_13, TIMECODEDESCARRAY_14, TIMECODEDESCARRAY_15, TIMECODEDESCARRAY_16, TIMECODEDESCARRAY_17, TIMECODEDESCARRAY_18, TIMECODEDESCARRAY_19, TIMECODEDESCARRAY_20, TIMECODEDESCARRAY_21, TIMECODEDESCARRAY_22, TIMECODEDESCARRAY_23, TIMECODEDESCARRAY_24, TIMECODEDESCARRAY_25, PAYARRCD_1, PAYARRCD_2, PAYARRCD_3, PAYARRCD_4, PAYARRCD_5, PAYARRCD_6, PAYARRCD_7, PAYARRCD_8, PAYARRCD_9, PAYARRCD_10, PAYARRCD_11, PAYARRCD_12, PAYARRCD_13, PAYARRCD_14, PAYARRCD_15, PAYARRCD_16, PAYARRCD_17, PAYARRCD_18, PAYARRCD_19, PAYARRCD_20, PAYARRCD_21, PAYARRCD_22, PAYARRCD_23, PAYARRCD_24, PAYARRCD_25, DEDCDARR_1, DEDCDARR_2, DEDCDARR_3, DEDCDARR_4, DEDCDARR_5, DEDCDARR_6, DEDCDARR_7, DEDCDARR_8, DEDCDARR_9, DEDCDARR_10, DEDCDARR_11, DEDCDARR_12, DEDCDARR_13, DEDCDARR_14, DEDCDARR_15, DEDCDARR_16, DEDCDARR_17, DEDCDARR_18, DEDCDARR_19, DEDCDARR_20, DEDCDARR_21, DEDCDARR_22, DEDCDARR_23, DEDCDARR_24, DEDCDARR_25, BNFCDARR_1, BNFCDARR_2, BNFCDARR_3, BNFCDARR_4, BNFCDARR_5, BNFCDARR_6, BNFCDARR_7, BNFCDARR_8, BNFCDARR_9, BNFCDARR_10, BNFCDARR_11, BNFCDARR_12, BNFCDARR_13, BNFCDARR_14, BNFCDARR_15, BNFCDARR_16, BNFCDARR_17, BNFCDARR_18, BNFCDARR_19, BNFCDARR_20, BNFCDARR_21, BNFCDARR_22, BNFCDARR_23, BNFCDARR_24, BNFCDARR_25, TIMECODEARRAY_1, TIMECODEARRAY_2, TIMECODEARRAY_3, TIMECODEARRAY_4, TIMECODEARRAY_5, TIMECODEARRAY_6, TIMECODEARRAY_7, TIMECODEARRAY_8, TIMECODEARRAY_9, TIMECODEARRAY_10, TIMECODEARRAY_11, TIMECODEARRAY_12, TIMECODEARRAY_13, TIMECODEARRAY_14, TIMECODEARRAY_15, TIMECODEARRAY_16, TIMECODEARRAY_17, TIMECODEARRAY_18, TIMECODEARRAY_19, TIMECODEARRAY_20, TIMECODEARRAY_21, TIMECODEARRAY_22, TIMECODEARRAY_23, TIMECODEARRAY_24, TIMECODEARRAY_25, STATXARR_1, STATXARR_2, STATXARR_3, STATXARR_4, STATXARR_5, STATXARR_6, STATXARR_7, STATXARR_8, STATXARR_9, STATXARR_10, STATXARR_11, STATXARR_12, STATXARR_13, STATXARR_14, STATXARR_15, STATXARR_16, STATXARR_17, STATXARR_18, STATXARR_19, STATXARR_20, STATXARR_21, STATXARR_22, STATXARR_23, STATXARR_24, STATXARR_25, LCLTXARR_1, LCLTXARR_2, LCLTXARR_3, LCLTXARR_4, LCLTXARR_5, LCLTXARR_6, LCLTXARR_7, LCLTXARR_8, LCLTXARR_9, LCLTXARR_10, LCLTXARR_11, LCLTXARR_12, LCLTXARR_13, LCLTXARR_14, LCLTXARR_15, LCLTXARR_16, LCLTXARR_17, LCLTXARR_18, LCLTXARR_19, LCLTXARR_20, LCLTXARR_21, LCLTXARR_22, LCLTXARR_23, LCLTXARR_24, LCLTXARR_25, USERID, DEX_ROW_ID FROM .UPR10213 WHERE USERID = @USERID AND EMPLOYID = @EMPLOYID ORDER BY USERID ASC, EMPLOYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10213SS_1] TO [DYNGRP]
GO
