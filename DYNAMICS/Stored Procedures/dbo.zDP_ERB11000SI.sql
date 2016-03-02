SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11000SI] (@Excel_Report_ID char(15), @Table_Number smallint, @Additional_Table_Number smallint, @PRODID smallint, @TABLTECH char(79), @TABLDESC char(51), @TBLPHYSNM char(51), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB11000 (Excel_Report_ID, Table_Number, Additional_Table_Number, PRODID, TABLTECH, TABLDESC, TBLPHYSNM) VALUES ( @Excel_Report_ID, @Table_Number, @Additional_Table_Number, @PRODID, @TABLTECH, @TABLDESC, @TBLPHYSNM) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11000SI] TO [DYNGRP]
GO
