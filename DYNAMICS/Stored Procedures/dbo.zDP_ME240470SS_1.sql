SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240470SS_1] (@CMPANYID smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  CMPANYID, MESTUBPATH, MEPDFPath, MEFOLDERCOMP_1, MEFOLDERCOMP_2, MEFOLDERCOMP_3, MEFOLDERCOMP_4, MEFOLDERCOMP_5, MEFOLDERCOMP_6, ME_NAMECOMP_1, ME_NAMECOMP_2, ME_NAMECOMP_3, ME_NAMECOMP_4, ME_NAMECOMP_5, ME_NAMECOMP_6, ME_Options_1, ME_Options_2, ME_Options_3, ME_Options_4, ME_Options_5, ME_Options_6, ME_Options_7, ME_Options_8, ME_Options_9, ME_Options_10, ME_Options_11, ME_Options_12, ME_Options_13, ME_Options_14, ME_Options_15, ME_Options_16, ME_Options_17, ME_Options_18, ME_Options_19, ME_Options_20, ME_Options_21, ME_Options_22, ME_Options_23, ME_Options_24, ME_Options_25, ME_Options_26, ME_Options_27, ME_Options_28, ME_Options_29, ME_Options_30, ME_Options_31, ME_Options_32, ME_Options_33, ME_Options_34, ME_Options_35, ME_Options_36, ME_Options_37, ME_Options_38, ME_Options_39, ME_Options_40, ME_Options_41, ME_Options_42, ME_Options_43, ME_Options_44, ME_Options_45, ME_Options_46, ME_Options_47, ME_Options_48, ME_Options_49, ME_Options_50, DEX_ROW_ID FROM .ME240470 WHERE CMPANYID = @CMPANYID ORDER BY CMPANYID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240470SS_1] TO [DYNGRP]
GO
