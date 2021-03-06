SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40100SI] (@BSNSFMID char(15), @BSNSFDSC char(31), @OFFINDX int, @OVOACNUM tinyint, @BCHEMSG1 binary(4), @BCHEMSG2 binary(4), @SOURCDOC char(11), @REFRENCE char(31), @BRKDNALL tinyint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL40100 (BSNSFMID, BSNSFDSC, OFFINDX, OVOACNUM, BCHEMSG1, BCHEMSG2, SOURCDOC, REFRENCE, BRKDNALL, NOTEINDX) VALUES ( @BSNSFMID, @BSNSFDSC, @OFFINDX, @OVOACNUM, @BCHEMSG1, @BCHEMSG2, @SOURCDOC, @REFRENCE, @BRKDNALL, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40100SI] TO [DYNGRP]
GO
