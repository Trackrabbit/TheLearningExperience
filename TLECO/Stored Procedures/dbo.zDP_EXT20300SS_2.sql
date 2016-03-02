SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20300SS_2] (@Template_Description char(65)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Template_ID, Template_Description, Extender_Type, Extender_ID, Replacement_Rule, Field_ID, DEX_ROW_ID FROM .EXT20300 WHERE Template_Description = @Template_Description ORDER BY Template_Description ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20300SS_2] TO [DYNGRP]
GO
