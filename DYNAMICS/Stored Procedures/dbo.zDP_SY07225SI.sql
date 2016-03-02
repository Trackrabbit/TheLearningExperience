SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07225SI] (@ListDictID smallint, @ListID smallint, @ViewID int, @USERID char(15), @PreviewPaneVisible tinyint, @PreviewPaneHeight smallint, @AdvFilterPaneVisible tinyint, @AdvFilterPaneHeight smallint, @ActionsPaneVisible tinyint, @IncludeWorkflowInfo tinyint, @ListDateRestriction int, @STRTDATE datetime, @ENDDATE datetime, @ListOption int, @FactBoxVisible tinyint, @FactBoxWidth smallint, @FactBoxMode smallint, @FactBoxSRAVisible tinyint, @FactBoxSRAHeight smallint, @FactBoxSRADockMode smallint, @ListOption2 int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07225 (ListDictID, ListID, ViewID, USERID, PreviewPaneVisible, PreviewPaneHeight, AdvFilterPaneVisible, AdvFilterPaneHeight, ActionsPaneVisible, IncludeWorkflowInfo, ListDateRestriction, STRTDATE, ENDDATE, ListOption, FactBoxVisible, FactBoxWidth, FactBoxMode, FactBoxSRAVisible, FactBoxSRAHeight, FactBoxSRADockMode, ListOption2) VALUES ( @ListDictID, @ListID, @ViewID, @USERID, @PreviewPaneVisible, @PreviewPaneHeight, @AdvFilterPaneVisible, @AdvFilterPaneHeight, @ActionsPaneVisible, @IncludeWorkflowInfo, @ListDateRestriction, @STRTDATE, @ENDDATE, @ListOption, @FactBoxVisible, @FactBoxWidth, @FactBoxMode, @FactBoxSRAVisible, @FactBoxSRAHeight, @FactBoxSRADockMode, @ListOption2) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07225SI] TO [DYNGRP]
GO
