SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2LNK01F_1] (@I1_I_RS smallint, @I1_I_RE smallint) AS  set nocount on IF @I1_I_RS IS NULL BEGIN SELECT TOP 25  I1_I, LINKTEMPLATE_I_1, LINKTEMPLATE_I_2, LINKTEMPLATE_I_3, LINKTEMPLATE_I_4, LINKTEMPLATE_I_5, LINKTEMPLATE_I_6, LINKTEMPLATE_I_7, LINKTEMPLATE_I_8, LINKTEMPLATE_I_9, LINKTEMPLATE_I_10, LINKTEMPLATE_I_11, LINKTEMPLATE_I_12, LINKTEMPLATE_I_13, LINKTEMPLATE_I_14, LINKTEMPLATE_I_15, LINKTEMPLATE_I_16, LINKTEMPLATE_I_17, LINKTEMPLATE_I_18, LINKTEMPLATE_I_19, LINKTEMPLATE_I_20, LINKTEMPLATE_I_21, LINKTEMPLATE_I_22, LINKTEMPLATE_I_23, LINKTEMPLATE_I_24, LINKTEMPLATE_I_25, LINKTEMPLATE_I_26, LINKTEMPLATE_I_27, LINKTEMPLATE_I_28, LINKTEMPLATE_I_29, LINKTEMPLATE_I_30, LINKTEMPLATE_I_31, LINKTEMPLATE_I_32, LINKTEMPLATE_I_33, LINKTEMPLATE_I_34, LINKTEMPLATE_I_35, LINKTEMPLATE_I_36, LINKTEMPLATE_I_37, LINKTEMPLATE_I_38, LINKTEMPLATE_I_39, LINKTEMPLATE_I_40, LINKTEMPLATE_I_41, LINKTEMPLATE_I_42, LINKTEMPLATE_I_43, LINKTEMPLATE_I_44, LINKTEMPLATE_I_45, LINKTEMPLATE_I_46, LINKTEMPLATE_I_47, LINKTEMPLATE_I_48, LINKTEMPLATE_I_49, LINKTEMPLATE_I_50, DEX_ROW_ID FROM .HR2LNK01 ORDER BY I1_I ASC END ELSE IF @I1_I_RS = @I1_I_RE BEGIN SELECT TOP 25  I1_I, LINKTEMPLATE_I_1, LINKTEMPLATE_I_2, LINKTEMPLATE_I_3, LINKTEMPLATE_I_4, LINKTEMPLATE_I_5, LINKTEMPLATE_I_6, LINKTEMPLATE_I_7, LINKTEMPLATE_I_8, LINKTEMPLATE_I_9, LINKTEMPLATE_I_10, LINKTEMPLATE_I_11, LINKTEMPLATE_I_12, LINKTEMPLATE_I_13, LINKTEMPLATE_I_14, LINKTEMPLATE_I_15, LINKTEMPLATE_I_16, LINKTEMPLATE_I_17, LINKTEMPLATE_I_18, LINKTEMPLATE_I_19, LINKTEMPLATE_I_20, LINKTEMPLATE_I_21, LINKTEMPLATE_I_22, LINKTEMPLATE_I_23, LINKTEMPLATE_I_24, LINKTEMPLATE_I_25, LINKTEMPLATE_I_26, LINKTEMPLATE_I_27, LINKTEMPLATE_I_28, LINKTEMPLATE_I_29, LINKTEMPLATE_I_30, LINKTEMPLATE_I_31, LINKTEMPLATE_I_32, LINKTEMPLATE_I_33, LINKTEMPLATE_I_34, LINKTEMPLATE_I_35, LINKTEMPLATE_I_36, LINKTEMPLATE_I_37, LINKTEMPLATE_I_38, LINKTEMPLATE_I_39, LINKTEMPLATE_I_40, LINKTEMPLATE_I_41, LINKTEMPLATE_I_42, LINKTEMPLATE_I_43, LINKTEMPLATE_I_44, LINKTEMPLATE_I_45, LINKTEMPLATE_I_46, LINKTEMPLATE_I_47, LINKTEMPLATE_I_48, LINKTEMPLATE_I_49, LINKTEMPLATE_I_50, DEX_ROW_ID FROM .HR2LNK01 WHERE I1_I = @I1_I_RS ORDER BY I1_I ASC END ELSE BEGIN SELECT TOP 25  I1_I, LINKTEMPLATE_I_1, LINKTEMPLATE_I_2, LINKTEMPLATE_I_3, LINKTEMPLATE_I_4, LINKTEMPLATE_I_5, LINKTEMPLATE_I_6, LINKTEMPLATE_I_7, LINKTEMPLATE_I_8, LINKTEMPLATE_I_9, LINKTEMPLATE_I_10, LINKTEMPLATE_I_11, LINKTEMPLATE_I_12, LINKTEMPLATE_I_13, LINKTEMPLATE_I_14, LINKTEMPLATE_I_15, LINKTEMPLATE_I_16, LINKTEMPLATE_I_17, LINKTEMPLATE_I_18, LINKTEMPLATE_I_19, LINKTEMPLATE_I_20, LINKTEMPLATE_I_21, LINKTEMPLATE_I_22, LINKTEMPLATE_I_23, LINKTEMPLATE_I_24, LINKTEMPLATE_I_25, LINKTEMPLATE_I_26, LINKTEMPLATE_I_27, LINKTEMPLATE_I_28, LINKTEMPLATE_I_29, LINKTEMPLATE_I_30, LINKTEMPLATE_I_31, LINKTEMPLATE_I_32, LINKTEMPLATE_I_33, LINKTEMPLATE_I_34, LINKTEMPLATE_I_35, LINKTEMPLATE_I_36, LINKTEMPLATE_I_37, LINKTEMPLATE_I_38, LINKTEMPLATE_I_39, LINKTEMPLATE_I_40, LINKTEMPLATE_I_41, LINKTEMPLATE_I_42, LINKTEMPLATE_I_43, LINKTEMPLATE_I_44, LINKTEMPLATE_I_45, LINKTEMPLATE_I_46, LINKTEMPLATE_I_47, LINKTEMPLATE_I_48, LINKTEMPLATE_I_49, LINKTEMPLATE_I_50, DEX_ROW_ID FROM .HR2LNK01 WHERE I1_I BETWEEN @I1_I_RS AND @I1_I_RE ORDER BY I1_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2LNK01F_1] TO [DYNGRP]
GO
