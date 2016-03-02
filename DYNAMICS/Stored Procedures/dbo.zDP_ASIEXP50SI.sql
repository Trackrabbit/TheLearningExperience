SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP50SI] (@ASI_Export_Name char(51), @ASI_Export_Application smallint, @USERID char(15), @ASI_Export_Document char(81), @ASI_Macro_Before char(81), @ASI_Macro_After char(81), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ASIEXP50 (ASI_Export_Name, ASI_Export_Application, USERID, ASI_Export_Document, ASI_Macro_Before, ASI_Macro_After) VALUES ( @ASI_Export_Name, @ASI_Export_Application, @USERID, @ASI_Export_Document, @ASI_Macro_Before, @ASI_Macro_After) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP50SI] TO [DYNGRP]
GO
