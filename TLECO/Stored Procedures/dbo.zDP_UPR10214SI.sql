SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10214SI] (@EMPLOYID char(15), @PYYTDARR_1 numeric(19,5), @PYYTDARR_2 numeric(19,5), @PYYTDARR_3 numeric(19,5), @PYYTDARR_4 numeric(19,5), @PYYTDARR_5 numeric(19,5), @PYYTDARR_6 numeric(19,5), @PYYTDARR_7 numeric(19,5), @PYYTDARR_8 numeric(19,5), @PYYTDARR_9 numeric(19,5), @PYYTDARR_10 numeric(19,5), @PYYTDARR_11 numeric(19,5), @PYYTDARR_12 numeric(19,5), @PYYTDARR_13 numeric(19,5), @PYYTDARR_14 numeric(19,5), @PYYTDARR_15 numeric(19,5), @PYYTDARR_16 numeric(19,5), @PYYTDARR_17 numeric(19,5), @PYYTDARR_18 numeric(19,5), @PYYTDARR_19 numeric(19,5), @PYYTDARR_20 numeric(19,5), @PYYTDARR_21 numeric(19,5), @PYYTDARR_22 numeric(19,5), @PYYTDARR_23 numeric(19,5), @PYYTDARR_24 numeric(19,5), @PYYTDARR_25 numeric(19,5), @DAMYTDAR_1 numeric(19,5), @DAMYTDAR_2 numeric(19,5), @DAMYTDAR_3 numeric(19,5), @DAMYTDAR_4 numeric(19,5), @DAMYTDAR_5 numeric(19,5), @DAMYTDAR_6 numeric(19,5), @DAMYTDAR_7 numeric(19,5), @DAMYTDAR_8 numeric(19,5), @DAMYTDAR_9 numeric(19,5), @DAMYTDAR_10 numeric(19,5), @DAMYTDAR_11 numeric(19,5), @DAMYTDAR_12 numeric(19,5), @DAMYTDAR_13 numeric(19,5), @DAMYTDAR_14 numeric(19,5), @DAMYTDAR_15 numeric(19,5), @DAMYTDAR_16 numeric(19,5), @DAMYTDAR_17 numeric(19,5), @DAMYTDAR_18 numeric(19,5), @DAMYTDAR_19 numeric(19,5), @DAMYTDAR_20 numeric(19,5), @DAMYTDAR_21 numeric(19,5), @DAMYTDAR_22 numeric(19,5), @DAMYTDAR_23 numeric(19,5), @DAMYTDAR_24 numeric(19,5), @DAMYTDAR_25 numeric(19,5), @BAMYTDAR_1 numeric(19,5), @BAMYTDAR_2 numeric(19,5), @BAMYTDAR_3 numeric(19,5), @BAMYTDAR_4 numeric(19,5), @BAMYTDAR_5 numeric(19,5), @BAMYTDAR_6 numeric(19,5), @BAMYTDAR_7 numeric(19,5), @BAMYTDAR_8 numeric(19,5), @BAMYTDAR_9 numeric(19,5), @BAMYTDAR_10 numeric(19,5), @BAMYTDAR_11 numeric(19,5), @BAMYTDAR_12 numeric(19,5), @BAMYTDAR_13 numeric(19,5), @BAMYTDAR_14 numeric(19,5), @BAMYTDAR_15 numeric(19,5), @BAMYTDAR_16 numeric(19,5), @BAMYTDAR_17 numeric(19,5), @BAMYTDAR_18 numeric(19,5), @BAMYTDAR_19 numeric(19,5), @BAMYTDAR_20 numeric(19,5), @BAMYTDAR_21 numeric(19,5), @BAMYTDAR_22 numeric(19,5), @BAMYTDAR_23 numeric(19,5), @BAMYTDAR_24 numeric(19,5), @BAMYTDAR_25 numeric(19,5), @STATXYTD_1 numeric(19,5), @STATXYTD_2 numeric(19,5), @STATXYTD_3 numeric(19,5), @STATXYTD_4 numeric(19,5), @STATXYTD_5 numeric(19,5), @STATXYTD_6 numeric(19,5), @STATXYTD_7 numeric(19,5), @STATXYTD_8 numeric(19,5), @STATXYTD_9 numeric(19,5), @STATXYTD_10 numeric(19,5), @STATXYTD_11 numeric(19,5), @STATXYTD_12 numeric(19,5), @STATXYTD_13 numeric(19,5), @STATXYTD_14 numeric(19,5), @STATXYTD_15 numeric(19,5), @STATXYTD_16 numeric(19,5), @STATXYTD_17 numeric(19,5), @STATXYTD_18 numeric(19,5), @STATXYTD_19 numeric(19,5), @STATXYTD_20 numeric(19,5), @STATXYTD_21 numeric(19,5), @STATXYTD_22 numeric(19,5), @STATXYTD_23 numeric(19,5), @STATXYTD_24 numeric(19,5), @STATXYTD_25 numeric(19,5), @LCLTXYTD_1 numeric(19,5), @LCLTXYTD_2 numeric(19,5), @LCLTXYTD_3 numeric(19,5), @LCLTXYTD_4 numeric(19,5), @LCLTXYTD_5 numeric(19,5), @LCLTXYTD_6 numeric(19,5), @LCLTXYTD_7 numeric(19,5), @LCLTXYTD_8 numeric(19,5), @LCLTXYTD_9 numeric(19,5), @LCLTXYTD_10 numeric(19,5), @LCLTXYTD_11 numeric(19,5), @LCLTXYTD_12 numeric(19,5), @LCLTXYTD_13 numeric(19,5), @LCLTXYTD_14 numeric(19,5), @LCLTXYTD_15 numeric(19,5), @LCLTXYTD_16 numeric(19,5), @LCLTXYTD_17 numeric(19,5), @LCLTXYTD_18 numeric(19,5), @LCLTXYTD_19 numeric(19,5), @LCLTXYTD_20 numeric(19,5), @LCLTXYTD_21 numeric(19,5), @LCLTXYTD_22 numeric(19,5), @LCLTXYTD_23 numeric(19,5), @LCLTXYTD_24 numeric(19,5), @LCLTXYTD_25 numeric(19,5), @GRSWGYTD numeric(19,5), @NTWGSYTD numeric(19,5), @FICAWYTD numeric(19,5), @FCASSYTD numeric(19,5), @FICAMYTD numeric(19,5), @FDWDGYTD numeric(19,5), @SWHDGYTD numeric(19,5), @LCWHGYTD numeric(19,5), @USERID char(15), @PYFYTDARR_1 numeric(19,5), @PYFYTDARR_2 numeric(19,5), @PYFYTDARR_3 numeric(19,5), @PYFYTDARR_4 numeric(19,5), @PYFYTDARR_5 numeric(19,5), @PYFYTDARR_6 numeric(19,5), @PYFYTDARR_7 numeric(19,5), @PYFYTDARR_8 numeric(19,5), @PYFYTDARR_9 numeric(19,5), @PYFYTDARR_10 numeric(19,5), @PYFYTDARR_11 numeric(19,5), @PYFYTDARR_12 numeric(19,5), @PYFYTDARR_13 numeric(19,5), @PYFYTDARR_14 numeric(19,5), @PYFYTDARR_15 numeric(19,5), @PYFYTDARR_16 numeric(19,5), @PYFYTDARR_17 numeric(19,5), @PYFYTDARR_18 numeric(19,5), @PYFYTDARR_19 numeric(19,5), @PYFYTDARR_20 numeric(19,5), @PYFYTDARR_21 numeric(19,5), @PYFYTDARR_22 numeric(19,5), @PYFYTDARR_23 numeric(19,5), @PYFYTDARR_24 numeric(19,5), @PYFYTDARR_25 numeric(19,5), @DAMFYTDAR_1 numeric(19,5), @DAMFYTDAR_2 numeric(19,5), @DAMFYTDAR_3 numeric(19,5), @DAMFYTDAR_4 numeric(19,5), @DAMFYTDAR_5 numeric(19,5), @DAMFYTDAR_6 numeric(19,5), @DAMFYTDAR_7 numeric(19,5), @DAMFYTDAR_8 numeric(19,5), @DAMFYTDAR_9 numeric(19,5), @DAMFYTDAR_10 numeric(19,5), @DAMFYTDAR_11 numeric(19,5), @DAMFYTDAR_12 numeric(19,5), @DAMFYTDAR_13 numeric(19,5), @DAMFYTDAR_14 numeric(19,5), @DAMFYTDAR_15 numeric(19,5), @DAMFYTDAR_16 numeric(19,5), @DAMFYTDAR_17 numeric(19,5), @DAMFYTDAR_18 numeric(19,5), @DAMFYTDAR_19 numeric(19,5), @DAMFYTDAR_20 numeric(19,5), @DAMFYTDAR_21 numeric(19,5), @DAMFYTDAR_22 numeric(19,5), @DAMFYTDAR_23 numeric(19,5), @DAMFYTDAR_24 numeric(19,5), @DAMFYTDAR_25 numeric(19,5), @BAMFYTDAR_1 numeric(19,5), @BAMFYTDAR_2 numeric(19,5), @BAMFYTDAR_3 numeric(19,5), @BAMFYTDAR_4 numeric(19,5), @BAMFYTDAR_5 numeric(19,5), @BAMFYTDAR_6 numeric(19,5), @BAMFYTDAR_7 numeric(19,5), @BAMFYTDAR_8 numeric(19,5), @BAMFYTDAR_9 numeric(19,5), @BAMFYTDAR_10 numeric(19,5), @BAMFYTDAR_11 numeric(19,5), @BAMFYTDAR_12 numeric(19,5), @BAMFYTDAR_13 numeric(19,5), @BAMFYTDAR_14 numeric(19,5), @BAMFYTDAR_15 numeric(19,5), @BAMFYTDAR_16 numeric(19,5), @BAMFYTDAR_17 numeric(19,5), @BAMFYTDAR_18 numeric(19,5), @BAMFYTDAR_19 numeric(19,5), @BAMFYTDAR_20 numeric(19,5), @BAMFYTDAR_21 numeric(19,5), @BAMFYTDAR_22 numeric(19,5), @BAMFYTDAR_23 numeric(19,5), @BAMFYTDAR_24 numeric(19,5), @BAMFYTDAR_25 numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR10214 (EMPLOYID, PYYTDARR_1, PYYTDARR_2, PYYTDARR_3, PYYTDARR_4, PYYTDARR_5, PYYTDARR_6, PYYTDARR_7, PYYTDARR_8, PYYTDARR_9, PYYTDARR_10, PYYTDARR_11, PYYTDARR_12, PYYTDARR_13, PYYTDARR_14, PYYTDARR_15, PYYTDARR_16, PYYTDARR_17, PYYTDARR_18, PYYTDARR_19, PYYTDARR_20, PYYTDARR_21, PYYTDARR_22, PYYTDARR_23, PYYTDARR_24, PYYTDARR_25, DAMYTDAR_1, DAMYTDAR_2, DAMYTDAR_3, DAMYTDAR_4, DAMYTDAR_5, DAMYTDAR_6, DAMYTDAR_7, DAMYTDAR_8, DAMYTDAR_9, DAMYTDAR_10, DAMYTDAR_11, DAMYTDAR_12, DAMYTDAR_13, DAMYTDAR_14, DAMYTDAR_15, DAMYTDAR_16, DAMYTDAR_17, DAMYTDAR_18, DAMYTDAR_19, DAMYTDAR_20, DAMYTDAR_21, DAMYTDAR_22, DAMYTDAR_23, DAMYTDAR_24, DAMYTDAR_25, BAMYTDAR_1, BAMYTDAR_2, BAMYTDAR_3, BAMYTDAR_4, BAMYTDAR_5, BAMYTDAR_6, BAMYTDAR_7, BAMYTDAR_8, BAMYTDAR_9, BAMYTDAR_10, BAMYTDAR_11, BAMYTDAR_12, BAMYTDAR_13, BAMYTDAR_14, BAMYTDAR_15, BAMYTDAR_16, BAMYTDAR_17, BAMYTDAR_18, BAMYTDAR_19, BAMYTDAR_20, BAMYTDAR_21, BAMYTDAR_22, BAMYTDAR_23, BAMYTDAR_24, BAMYTDAR_25, STATXYTD_1, STATXYTD_2, STATXYTD_3, STATXYTD_4, STATXYTD_5, STATXYTD_6, STATXYTD_7, STATXYTD_8, STATXYTD_9, STATXYTD_10, STATXYTD_11, STATXYTD_12, STATXYTD_13, STATXYTD_14, STATXYTD_15, STATXYTD_16, STATXYTD_17, STATXYTD_18, STATXYTD_19, STATXYTD_20, STATXYTD_21, STATXYTD_22, STATXYTD_23, STATXYTD_24, STATXYTD_25, LCLTXYTD_1, LCLTXYTD_2, LCLTXYTD_3, LCLTXYTD_4, LCLTXYTD_5, LCLTXYTD_6, LCLTXYTD_7, LCLTXYTD_8, LCLTXYTD_9, LCLTXYTD_10, LCLTXYTD_11, LCLTXYTD_12, LCLTXYTD_13, LCLTXYTD_14, LCLTXYTD_15, LCLTXYTD_16, LCLTXYTD_17, LCLTXYTD_18, LCLTXYTD_19, LCLTXYTD_20, LCLTXYTD_21, LCLTXYTD_22, LCLTXYTD_23, LCLTXYTD_24, LCLTXYTD_25, GRSWGYTD, NTWGSYTD, FICAWYTD, FCASSYTD, FICAMYTD, FDWDGYTD, SWHDGYTD, LCWHGYTD, USERID, PYFYTDARR_1, PYFYTDARR_2, PYFYTDARR_3, PYFYTDARR_4, PYFYTDARR_5, PYFYTDARR_6, PYFYTDARR_7, PYFYTDARR_8, PYFYTDARR_9, PYFYTDARR_10, PYFYTDARR_11, PYFYTDARR_12, PYFYTDARR_13, PYFYTDARR_14, PYFYTDARR_15, PYFYTDARR_16, PYFYTDARR_17, PYFYTDARR_18, PYFYTDARR_19, PYFYTDARR_20, PYFYTDARR_21, PYFYTDARR_22, PYFYTDARR_23, PYFYTDARR_24, PYFYTDARR_25, DAMFYTDAR_1, DAMFYTDAR_2, DAMFYTDAR_3, DAMFYTDAR_4, DAMFYTDAR_5, DAMFYTDAR_6, DAMFYTDAR_7, DAMFYTDAR_8, DAMFYTDAR_9, DAMFYTDAR_10, DAMFYTDAR_11, DAMFYTDAR_12, DAMFYTDAR_13, DAMFYTDAR_14, DAMFYTDAR_15, DAMFYTDAR_16, DAMFYTDAR_17, DAMFYTDAR_18, DAMFYTDAR_19, DAMFYTDAR_20, DAMFYTDAR_21, DAMFYTDAR_22, DAMFYTDAR_23, DAMFYTDAR_24, DAMFYTDAR_25, BAMFYTDAR_1, BAMFYTDAR_2, BAMFYTDAR_3, BAMFYTDAR_4, BAMFYTDAR_5, BAMFYTDAR_6, BAMFYTDAR_7, BAMFYTDAR_8, BAMFYTDAR_9, BAMFYTDAR_10, BAMFYTDAR_11, BAMFYTDAR_12, BAMFYTDAR_13, BAMFYTDAR_14, BAMFYTDAR_15, BAMFYTDAR_16, BAMFYTDAR_17, BAMFYTDAR_18, BAMFYTDAR_19, BAMFYTDAR_20, BAMFYTDAR_21, BAMFYTDAR_22, BAMFYTDAR_23, BAMFYTDAR_24, BAMFYTDAR_25) VALUES ( @EMPLOYID, @PYYTDARR_1, @PYYTDARR_2, @PYYTDARR_3, @PYYTDARR_4, @PYYTDARR_5, @PYYTDARR_6, @PYYTDARR_7, @PYYTDARR_8, @PYYTDARR_9, @PYYTDARR_10, @PYYTDARR_11, @PYYTDARR_12, @PYYTDARR_13, @PYYTDARR_14, @PYYTDARR_15, @PYYTDARR_16, @PYYTDARR_17, @PYYTDARR_18, @PYYTDARR_19, @PYYTDARR_20, @PYYTDARR_21, @PYYTDARR_22, @PYYTDARR_23, @PYYTDARR_24, @PYYTDARR_25, @DAMYTDAR_1, @DAMYTDAR_2, @DAMYTDAR_3, @DAMYTDAR_4, @DAMYTDAR_5, @DAMYTDAR_6, @DAMYTDAR_7, @DAMYTDAR_8, @DAMYTDAR_9, @DAMYTDAR_10, @DAMYTDAR_11, @DAMYTDAR_12, @DAMYTDAR_13, @DAMYTDAR_14, @DAMYTDAR_15, @DAMYTDAR_16, @DAMYTDAR_17, @DAMYTDAR_18, @DAMYTDAR_19, @DAMYTDAR_20, @DAMYTDAR_21, @DAMYTDAR_22, @DAMYTDAR_23, @DAMYTDAR_24, @DAMYTDAR_25, @BAMYTDAR_1, @BAMYTDAR_2, @BAMYTDAR_3, @BAMYTDAR_4, @BAMYTDAR_5, @BAMYTDAR_6, @BAMYTDAR_7, @BAMYTDAR_8, @BAMYTDAR_9, @BAMYTDAR_10, @BAMYTDAR_11, @BAMYTDAR_12, @BAMYTDAR_13, @BAMYTDAR_14, @BAMYTDAR_15, @BAMYTDAR_16, @BAMYTDAR_17, @BAMYTDAR_18, @BAMYTDAR_19, @BAMYTDAR_20, @BAMYTDAR_21, @BAMYTDAR_22, @BAMYTDAR_23, @BAMYTDAR_24, @BAMYTDAR_25, @STATXYTD_1, @STATXYTD_2, @STATXYTD_3, @STATXYTD_4, @STATXYTD_5, @STATXYTD_6, @STATXYTD_7, @STATXYTD_8, @STATXYTD_9, @STATXYTD_10, @STATXYTD_11, @STATXYTD_12, @STATXYTD_13, @STATXYTD_14, @STATXYTD_15, @STATXYTD_16, @STATXYTD_17, @STATXYTD_18, @STATXYTD_19, @STATXYTD_20, @STATXYTD_21, @STATXYTD_22, @STATXYTD_23, @STATXYTD_24, @STATXYTD_25, @LCLTXYTD_1, @LCLTXYTD_2, @LCLTXYTD_3, @LCLTXYTD_4, @LCLTXYTD_5, @LCLTXYTD_6, @LCLTXYTD_7, @LCLTXYTD_8, @LCLTXYTD_9, @LCLTXYTD_10, @LCLTXYTD_11, @LCLTXYTD_12, @LCLTXYTD_13, @LCLTXYTD_14, @LCLTXYTD_15, @LCLTXYTD_16, @LCLTXYTD_17, @LCLTXYTD_18, @LCLTXYTD_19, @LCLTXYTD_20, @LCLTXYTD_21, @LCLTXYTD_22, @LCLTXYTD_23, @LCLTXYTD_24, @LCLTXYTD_25, @GRSWGYTD, @NTWGSYTD, @FICAWYTD, @FCASSYTD, @FICAMYTD, @FDWDGYTD, @SWHDGYTD, @LCWHGYTD, @USERID, @PYFYTDARR_1, @PYFYTDARR_2, @PYFYTDARR_3, @PYFYTDARR_4, @PYFYTDARR_5, @PYFYTDARR_6, @PYFYTDARR_7, @PYFYTDARR_8, @PYFYTDARR_9, @PYFYTDARR_10, @PYFYTDARR_11, @PYFYTDARR_12, @PYFYTDARR_13, @PYFYTDARR_14, @PYFYTDARR_15, @PYFYTDARR_16, @PYFYTDARR_17, @PYFYTDARR_18, @PYFYTDARR_19, @PYFYTDARR_20, @PYFYTDARR_21, @PYFYTDARR_22, @PYFYTDARR_23, @PYFYTDARR_24, @PYFYTDARR_25, @DAMFYTDAR_1, @DAMFYTDAR_2, @DAMFYTDAR_3, @DAMFYTDAR_4, @DAMFYTDAR_5, @DAMFYTDAR_6, @DAMFYTDAR_7, @DAMFYTDAR_8, @DAMFYTDAR_9, @DAMFYTDAR_10, @DAMFYTDAR_11, @DAMFYTDAR_12, @DAMFYTDAR_13, @DAMFYTDAR_14, @DAMFYTDAR_15, @DAMFYTDAR_16, @DAMFYTDAR_17, @DAMFYTDAR_18, @DAMFYTDAR_19, @DAMFYTDAR_20, @DAMFYTDAR_21, @DAMFYTDAR_22, @DAMFYTDAR_23, @DAMFYTDAR_24, @DAMFYTDAR_25, @BAMFYTDAR_1, @BAMFYTDAR_2, @BAMFYTDAR_3, @BAMFYTDAR_4, @BAMFYTDAR_5, @BAMFYTDAR_6, @BAMFYTDAR_7, @BAMFYTDAR_8, @BAMFYTDAR_9, @BAMFYTDAR_10, @BAMFYTDAR_11, @BAMFYTDAR_12, @BAMFYTDAR_13, @BAMFYTDAR_14, @BAMFYTDAR_15, @BAMFYTDAR_16, @BAMFYTDAR_17, @BAMFYTDAR_18, @BAMFYTDAR_19, @BAMFYTDAR_20, @BAMFYTDAR_21, @BAMFYTDAR_22, @BAMFYTDAR_23, @BAMFYTDAR_24, @BAMFYTDAR_25) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10214SI] TO [DYNGRP]
GO
