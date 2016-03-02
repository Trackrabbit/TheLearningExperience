SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCSYS100SI] (@PRODID smallint, @NCRegistrationKeys_1 char(19), @NCRegistrationKeys_2 char(19), @NCRegistrationKeys_3 char(19), @NCRegistrationKeys_4 char(19), @NCRegistrationKeys_5 char(19), @NC_SpareStrings_1 char(255), @NC_SpareStrings_2 char(255), @NC_SpareStrings_3 char(255), @NC_SpareStrings_4 char(255), @NC_SpareStrings_5 char(255), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .NCSYS100 (PRODID, NCRegistrationKeys_1, NCRegistrationKeys_2, NCRegistrationKeys_3, NCRegistrationKeys_4, NCRegistrationKeys_5, NC_SpareStrings_1, NC_SpareStrings_2, NC_SpareStrings_3, NC_SpareStrings_4, NC_SpareStrings_5) VALUES ( @PRODID, @NCRegistrationKeys_1, @NCRegistrationKeys_2, @NCRegistrationKeys_3, @NCRegistrationKeys_4, @NCRegistrationKeys_5, @NC_SpareStrings_1, @NC_SpareStrings_2, @NC_SpareStrings_3, @NC_SpareStrings_4, @NC_SpareStrings_5) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCSYS100SI] TO [DYNGRP]
GO
