SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB70000SI] (@Action_Type smallint, @PRODID smallint, @Series_Number smallint, @Action_Description char(255), @Selection_Type smallint, @Drop_Dialog tinyint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .NLB70000 (Action_Type, PRODID, Series_Number, Action_Description, Selection_Type, Drop_Dialog) VALUES ( @Action_Type, @PRODID, @Series_Number, @Action_Description, @Selection_Type, @Drop_Dialog) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB70000SI] TO [DYNGRP]
GO
