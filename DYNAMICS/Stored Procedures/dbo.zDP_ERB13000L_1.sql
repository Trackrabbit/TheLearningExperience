SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB13000L_1] (@ERB_Type_RS smallint, @Excel_Report_ID_RS char(15), @Excel_Report_Role_RS char(51), @ERB_Type_RE smallint, @Excel_Report_ID_RE char(15), @Excel_Report_Role_RE char(51)) AS set nocount on IF @ERB_Type_RS IS NULL BEGIN SELECT TOP 25  ERB_Type, Excel_Report_ID, Excel_Report_Role, Excel_Report_Permission, DEX_ROW_ID FROM .ERB13000 ORDER BY ERB_Type DESC, Excel_Report_ID DESC, Excel_Report_Role DESC END ELSE IF @ERB_Type_RS = @ERB_Type_RE BEGIN SELECT TOP 25  ERB_Type, Excel_Report_ID, Excel_Report_Role, Excel_Report_Permission, DEX_ROW_ID FROM .ERB13000 WHERE ERB_Type = @ERB_Type_RS AND Excel_Report_ID BETWEEN @Excel_Report_ID_RS AND @Excel_Report_ID_RE AND Excel_Report_Role BETWEEN @Excel_Report_Role_RS AND @Excel_Report_Role_RE ORDER BY ERB_Type DESC, Excel_Report_ID DESC, Excel_Report_Role DESC END ELSE BEGIN SELECT TOP 25  ERB_Type, Excel_Report_ID, Excel_Report_Role, Excel_Report_Permission, DEX_ROW_ID FROM .ERB13000 WHERE ERB_Type BETWEEN @ERB_Type_RS AND @ERB_Type_RE AND Excel_Report_ID BETWEEN @Excel_Report_ID_RS AND @Excel_Report_ID_RE AND Excel_Report_Role BETWEEN @Excel_Report_Role_RS AND @Excel_Report_Role_RE ORDER BY ERB_Type DESC, Excel_Report_ID DESC, Excel_Report_Role DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB13000L_1] TO [DYNGRP]
GO
