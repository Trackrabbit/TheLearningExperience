SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10600SI] (@Navigation_ID char(15), @Navigation_Field_Name char(81), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .NLB10600 (Navigation_ID, Navigation_Field_Name) VALUES ( @Navigation_ID, @Navigation_Field_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10600SI] TO [DYNGRP]
GO
