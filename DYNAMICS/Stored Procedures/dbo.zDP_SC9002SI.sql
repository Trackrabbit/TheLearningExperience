SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9002SI] (@PRODID smallint, @Resource_Type smallint, @Series_Number smallint, @Series_Name char(31), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .SC9002 (PRODID, Resource_Type, Series_Number, Series_Name) VALUES ( @PRODID, @Resource_Type, @Series_Number, @Series_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9002SI] TO [DYNGRP]
GO
