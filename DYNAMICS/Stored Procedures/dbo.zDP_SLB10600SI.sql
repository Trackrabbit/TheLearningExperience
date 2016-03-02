SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10600SI] (@SmartList_ID char(15), @SmartList_Field_Name char(81), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .SLB10600 (SmartList_ID, SmartList_Field_Name) VALUES ( @SmartList_ID, @SmartList_Field_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10600SI] TO [DYNGRP]
GO
