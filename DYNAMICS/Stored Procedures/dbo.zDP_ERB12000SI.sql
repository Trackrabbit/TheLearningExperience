SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB12000SI] (@Group_Report_ID char(15), @Group_Report_Description char(65), @NOTEINDX numeric(19,5), @MODIFDT datetime, @MDFUSRID char(15), @CREATDDT datetime, @CRUSRID char(15), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB12000 (Group_Report_ID, Group_Report_Description, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID) VALUES ( @Group_Report_ID, @Group_Report_Description, @NOTEINDX, @MODIFDT, @MDFUSRID, @CREATDDT, @CRUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB12000SI] TO [DYNGRP]
GO
