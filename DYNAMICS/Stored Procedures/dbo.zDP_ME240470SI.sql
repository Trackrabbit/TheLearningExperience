SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240470SI] (@CMPANYID smallint, @MESTUBPATH char(255), @MEPDFPath char(255), @MEFOLDERCOMP_1 char(31), @MEFOLDERCOMP_2 char(31), @MEFOLDERCOMP_3 char(31), @MEFOLDERCOMP_4 char(31), @MEFOLDERCOMP_5 char(31), @MEFOLDERCOMP_6 char(31), @ME_NAMECOMP_1 char(31), @ME_NAMECOMP_2 char(31), @ME_NAMECOMP_3 char(31), @ME_NAMECOMP_4 char(31), @ME_NAMECOMP_5 char(31), @ME_NAMECOMP_6 char(31), @ME_Options_1 tinyint, @ME_Options_2 tinyint, @ME_Options_3 tinyint, @ME_Options_4 tinyint, @ME_Options_5 tinyint, @ME_Options_6 tinyint, @ME_Options_7 tinyint, @ME_Options_8 tinyint, @ME_Options_9 tinyint, @ME_Options_10 tinyint, @ME_Options_11 tinyint, @ME_Options_12 tinyint, @ME_Options_13 tinyint, @ME_Options_14 tinyint, @ME_Options_15 tinyint, @ME_Options_16 tinyint, @ME_Options_17 tinyint, @ME_Options_18 tinyint, @ME_Options_19 tinyint, @ME_Options_20 tinyint, @ME_Options_21 tinyint, @ME_Options_22 tinyint, @ME_Options_23 tinyint, @ME_Options_24 tinyint, @ME_Options_25 tinyint, @ME_Options_26 tinyint, @ME_Options_27 tinyint, @ME_Options_28 tinyint, @ME_Options_29 tinyint, @ME_Options_30 tinyint, @ME_Options_31 tinyint, @ME_Options_32 tinyint, @ME_Options_33 tinyint, @ME_Options_34 tinyint, @ME_Options_35 tinyint, @ME_Options_36 tinyint, @ME_Options_37 tinyint, @ME_Options_38 tinyint, @ME_Options_39 tinyint, @ME_Options_40 tinyint, @ME_Options_41 tinyint, @ME_Options_42 tinyint, @ME_Options_43 tinyint, @ME_Options_44 tinyint, @ME_Options_45 tinyint, @ME_Options_46 tinyint, @ME_Options_47 tinyint, @ME_Options_48 tinyint, @ME_Options_49 tinyint, @ME_Options_50 tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME240470 (CMPANYID, MESTUBPATH, MEPDFPath, MEFOLDERCOMP_1, MEFOLDERCOMP_2, MEFOLDERCOMP_3, MEFOLDERCOMP_4, MEFOLDERCOMP_5, MEFOLDERCOMP_6, ME_NAMECOMP_1, ME_NAMECOMP_2, ME_NAMECOMP_3, ME_NAMECOMP_4, ME_NAMECOMP_5, ME_NAMECOMP_6, ME_Options_1, ME_Options_2, ME_Options_3, ME_Options_4, ME_Options_5, ME_Options_6, ME_Options_7, ME_Options_8, ME_Options_9, ME_Options_10, ME_Options_11, ME_Options_12, ME_Options_13, ME_Options_14, ME_Options_15, ME_Options_16, ME_Options_17, ME_Options_18, ME_Options_19, ME_Options_20, ME_Options_21, ME_Options_22, ME_Options_23, ME_Options_24, ME_Options_25, ME_Options_26, ME_Options_27, ME_Options_28, ME_Options_29, ME_Options_30, ME_Options_31, ME_Options_32, ME_Options_33, ME_Options_34, ME_Options_35, ME_Options_36, ME_Options_37, ME_Options_38, ME_Options_39, ME_Options_40, ME_Options_41, ME_Options_42, ME_Options_43, ME_Options_44, ME_Options_45, ME_Options_46, ME_Options_47, ME_Options_48, ME_Options_49, ME_Options_50) VALUES ( @CMPANYID, @MESTUBPATH, @MEPDFPath, @MEFOLDERCOMP_1, @MEFOLDERCOMP_2, @MEFOLDERCOMP_3, @MEFOLDERCOMP_4, @MEFOLDERCOMP_5, @MEFOLDERCOMP_6, @ME_NAMECOMP_1, @ME_NAMECOMP_2, @ME_NAMECOMP_3, @ME_NAMECOMP_4, @ME_NAMECOMP_5, @ME_NAMECOMP_6, @ME_Options_1, @ME_Options_2, @ME_Options_3, @ME_Options_4, @ME_Options_5, @ME_Options_6, @ME_Options_7, @ME_Options_8, @ME_Options_9, @ME_Options_10, @ME_Options_11, @ME_Options_12, @ME_Options_13, @ME_Options_14, @ME_Options_15, @ME_Options_16, @ME_Options_17, @ME_Options_18, @ME_Options_19, @ME_Options_20, @ME_Options_21, @ME_Options_22, @ME_Options_23, @ME_Options_24, @ME_Options_25, @ME_Options_26, @ME_Options_27, @ME_Options_28, @ME_Options_29, @ME_Options_30, @ME_Options_31, @ME_Options_32, @ME_Options_33, @ME_Options_34, @ME_Options_35, @ME_Options_36, @ME_Options_37, @ME_Options_38, @ME_Options_39, @ME_Options_40, @ME_Options_41, @ME_Options_42, @ME_Options_43, @ME_Options_44, @ME_Options_45, @ME_Options_46, @ME_Options_47, @ME_Options_48, @ME_Options_49, @ME_Options_50) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240470SI] TO [DYNGRP]
GO
