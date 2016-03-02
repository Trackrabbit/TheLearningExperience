SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10900SI] (@SmartList_ID char(15), @GoTo_Number smallint, @Parameter_Name char(31), @Table_Number smallint, @Field_Number smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .SLB10900 (SmartList_ID, GoTo_Number, Parameter_Name, Table_Number, Field_Number) VALUES ( @SmartList_ID, @GoTo_Number, @Parameter_Name, @Table_Number, @Field_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10900SI] TO [DYNGRP]
GO
