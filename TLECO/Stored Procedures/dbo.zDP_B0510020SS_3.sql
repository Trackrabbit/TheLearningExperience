SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510020SS_3] (@MJW_Series_Description char(51)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Series_ID, SHRTNAME, MJW_Series_Description, MJW_Series_Legal_Name, NOTEINDX, DEX_ROW_ID FROM .B0510020 WHERE MJW_Series_Description = @MJW_Series_Description ORDER BY MJW_Series_Description ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510020SS_3] TO [DYNGRP]
GO
