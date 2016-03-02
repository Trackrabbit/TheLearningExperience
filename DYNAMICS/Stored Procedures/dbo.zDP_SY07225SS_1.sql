SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07225SS_1] (@ListDictID smallint, @ListID smallint, @ViewID int, @USERID char(15)) AS  set nocount on SELECT TOP 1  ListDictID, ListID, ViewID, USERID, PreviewPaneVisible, PreviewPaneHeight, AdvFilterPaneVisible, AdvFilterPaneHeight, ActionsPaneVisible, IncludeWorkflowInfo, ListDateRestriction, STRTDATE, ENDDATE, ListOption, FactBoxVisible, FactBoxWidth, FactBoxMode, FactBoxSRAVisible, FactBoxSRAHeight, FactBoxSRADockMode, ListOption2, DEX_ROW_ID FROM .SY07225 WHERE ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID AND USERID = @USERID ORDER BY ListDictID ASC, ListID ASC, ViewID ASC, USERID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07225SS_1] TO [DYNGRP]
GO
