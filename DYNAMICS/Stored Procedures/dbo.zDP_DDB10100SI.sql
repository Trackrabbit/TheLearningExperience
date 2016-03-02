SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_DDB10100SI] (@Drill_Down_ID char(15), @Drill_Down_Parameter_Num smallint, @Parameter_Name char(31), @FIELDTYPE int, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .DDB10100 (Drill_Down_ID, Drill_Down_Parameter_Num, Parameter_Name, FIELDTYPE) VALUES ( @Drill_Down_ID, @Drill_Down_Parameter_Num, @Parameter_Name, @FIELDTYPE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_DDB10100SI] TO [DYNGRP]
GO
