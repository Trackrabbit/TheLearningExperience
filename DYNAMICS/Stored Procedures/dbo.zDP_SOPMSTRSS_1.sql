SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SOPMSTRSS_1] (@SOPCATEGORIES_I char(31)) AS  set nocount on SELECT TOP 1  SOPCATEGORIES_I, ISEQUENCENUMBER_I, KEYWORDS_I_1, KEYWORDS_I_2, KEYWORDS_I_3, KEYWORDS_I_4, KEYWORDS_I_5, KEYWORDS_I_6, DEX_ROW_ID, SOPTEXT_I FROM .SOPMSTR WHERE SOPCATEGORIES_I = @SOPCATEGORIES_I ORDER BY SOPCATEGORIES_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOPMSTRSS_1] TO [DYNGRP]
GO