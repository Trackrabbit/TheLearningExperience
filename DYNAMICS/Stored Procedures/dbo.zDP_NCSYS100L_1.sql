SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCSYS100L_1] (@PRODID_RS smallint, @PRODID_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, NCRegistrationKeys_1, NCRegistrationKeys_2, NCRegistrationKeys_3, NCRegistrationKeys_4, NCRegistrationKeys_5, NC_SpareStrings_1, NC_SpareStrings_2, NC_SpareStrings_3, NC_SpareStrings_4, NC_SpareStrings_5, DEX_ROW_ID FROM .NCSYS100 ORDER BY PRODID DESC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, NCRegistrationKeys_1, NCRegistrationKeys_2, NCRegistrationKeys_3, NCRegistrationKeys_4, NCRegistrationKeys_5, NC_SpareStrings_1, NC_SpareStrings_2, NC_SpareStrings_3, NC_SpareStrings_4, NC_SpareStrings_5, DEX_ROW_ID FROM .NCSYS100 WHERE PRODID = @PRODID_RS ORDER BY PRODID DESC END ELSE BEGIN SELECT TOP 25  PRODID, NCRegistrationKeys_1, NCRegistrationKeys_2, NCRegistrationKeys_3, NCRegistrationKeys_4, NCRegistrationKeys_5, NC_SpareStrings_1, NC_SpareStrings_2, NC_SpareStrings_3, NC_SpareStrings_4, NC_SpareStrings_5, DEX_ROW_ID FROM .NCSYS100 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE ORDER BY PRODID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCSYS100L_1] TO [DYNGRP]
GO
