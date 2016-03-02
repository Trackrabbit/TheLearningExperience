SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00700SI] (@aaOption smallint, @aaMultiLangStr char(51), @aaIsOptionSet tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00700 (aaOption, aaMultiLangStr, aaIsOptionSet) VALUES ( @aaOption, @aaMultiLangStr, @aaIsOptionSet) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00700SI] TO [DYNGRP]
GO
