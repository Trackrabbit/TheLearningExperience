SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HREXTR12SS_1] (@EXTRACODE_I smallint) AS  set nocount on SELECT TOP 1  EXTRACODE_I, LABELS_I_1, LABELS_I_2, LABELS_I_3, LABELS_I_4, LABELS_I_5, LABELS_I_6, LABELS_I_7, LABELS_I_8, LABELS_I_9, LABELS_I_10, LABELS_I_11, LABELS_I_12, LABELS_I_13, LABELS_I_14, LABELS_I_15, LABELS_I_16, LABELS_I_17, LABELS_I_18, LABELS_I_19, LABELS_I_20, LABELS_I_21, LABELS_I_22, LABELS_I_23, LABELS_I_24, LABELS_I_25, DEX_ROW_ID FROM .HREXTR12 WHERE EXTRACODE_I = @EXTRACODE_I ORDER BY EXTRACODE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HREXTR12SS_1] TO [DYNGRP]
GO
