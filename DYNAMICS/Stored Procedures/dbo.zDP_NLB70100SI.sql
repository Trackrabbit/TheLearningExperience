SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB70100SI] (@Action_Type smallint, @Parameter_Name char(31), @Action_Parameter_Type smallint, @Required_CB_1 tinyint, @Required_CB_2 tinyint, @Required_CB_3 tinyint, @Required_CB_4 tinyint, @Required_CB_5 tinyint, @Required_CB_6 tinyint, @Required_CB_7 tinyint, @Required_CB_8 tinyint, @Required_CB_9 tinyint, @Required_CB_10 tinyint, @Required_CB_11 tinyint, @Required_CB_12 tinyint, @Required_CB_13 tinyint, @Required_CB_14 tinyint, @Required_CB_15 tinyint, @Required_CB_16 tinyint, @Required_CB_17 tinyint, @Required_CB_18 tinyint, @Required_CB_19 tinyint, @Required_CB_20 tinyint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .NLB70100 (Action_Type, Parameter_Name, Action_Parameter_Type, Required_CB_1, Required_CB_2, Required_CB_3, Required_CB_4, Required_CB_5, Required_CB_6, Required_CB_7, Required_CB_8, Required_CB_9, Required_CB_10, Required_CB_11, Required_CB_12, Required_CB_13, Required_CB_14, Required_CB_15, Required_CB_16, Required_CB_17, Required_CB_18, Required_CB_19, Required_CB_20) VALUES ( @Action_Type, @Parameter_Name, @Action_Parameter_Type, @Required_CB_1, @Required_CB_2, @Required_CB_3, @Required_CB_4, @Required_CB_5, @Required_CB_6, @Required_CB_7, @Required_CB_8, @Required_CB_9, @Required_CB_10, @Required_CB_11, @Required_CB_12, @Required_CB_13, @Required_CB_14, @Required_CB_15, @Required_CB_16, @Required_CB_17, @Required_CB_18, @Required_CB_19, @Required_CB_20) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB70100SI] TO [DYNGRP]
GO
