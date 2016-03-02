SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCSYS100SS_1] (@PRODID smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  PRODID, NCRegistrationKeys_1, NCRegistrationKeys_2, NCRegistrationKeys_3, NCRegistrationKeys_4, NCRegistrationKeys_5, NC_SpareStrings_1, NC_SpareStrings_2, NC_SpareStrings_3, NC_SpareStrings_4, NC_SpareStrings_5, DEX_ROW_ID FROM .NCSYS100 WHERE PRODID = @PRODID ORDER BY PRODID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCSYS100SS_1] TO [DYNGRP]
GO
