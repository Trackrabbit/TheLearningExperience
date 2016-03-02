SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB90200SI] (@PRODID smallint, @Series_Number smallint, @Series_Name char(31), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB90200 (PRODID, Series_Number, Series_Name) VALUES ( @PRODID, @Series_Number, @Series_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB90200SI] TO [DYNGRP]
GO
