SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB50100SI] (@Excel_Report_Role char(51), @Excel_Report_Permission tinyint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB50100 (Excel_Report_Role, Excel_Report_Permission) VALUES ( @Excel_Report_Role, @Excel_Report_Permission) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB50100SI] TO [DYNGRP]
GO
