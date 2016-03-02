SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11600SS_3] (@Excel_Report_ID char(15), @Summary_Field tinyint, @Summary_Order smallint, @LNITMSEQ int) AS set nocount on SELECT TOP 1  Excel_Report_ID, LNITMSEQ, Table_Number, Field_Number, Summary_Field, Summary_Order, Summary_Method, DEX_ROW_ID FROM .ERB11600 WHERE Excel_Report_ID = @Excel_Report_ID AND Summary_Field = @Summary_Field AND Summary_Order = @Summary_Order AND LNITMSEQ = @LNITMSEQ ORDER BY Excel_Report_ID ASC, Summary_Field ASC, Summary_Order ASC, LNITMSEQ ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11600SS_3] TO [DYNGRP]
GO
