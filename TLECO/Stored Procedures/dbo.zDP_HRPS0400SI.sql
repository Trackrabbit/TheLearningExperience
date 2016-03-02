SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPS0400SI] (@PYSTPTBLID char(15), @Pay_Step_Table_Desc char(51), @Pay_Step_Unit_Of_Pay smallint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRPS0400 (PYSTPTBLID, Pay_Step_Table_Desc, Pay_Step_Unit_Of_Pay, NOTEINDX) VALUES ( @PYSTPTBLID, @Pay_Step_Table_Desc, @Pay_Step_Unit_Of_Pay, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPS0400SI] TO [DYNGRP]
GO
