SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ACRSTBLSS_2] (@ACRSTABLES smallint, @ACRSYEAR smallint) AS  set nocount on SELECT TOP 1  ACRSTABLES, ACRSYEAR, ACRSPCT_1, ACRSPCT_2, ACRSPCT_3, ACRSPCT_4, ACRSPCT_5, ACRSPCT_6, ACRSPCT_7, ACRSPCT_8, ACRSPCT_9, ACRSPCT_10, ACRSPCT_11, ACRSPCT_12, DEX_ROW_ID FROM .ACRSTBL WHERE ACRSTABLES = @ACRSTABLES AND ACRSYEAR = @ACRSYEAR ORDER BY ACRSTABLES ASC, ACRSYEAR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ACRSTBLSS_2] TO [DYNGRP]
GO
