SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40300F_1] (@SOPTYPE_RS smallint, @SOPTYPE_RE smallint) AS  set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, DOCTYABR, DOCTYNAM, SOPNUMBE, DOCUFORM, SETUPKEY, DEX_ROW_ID FROM .SOP40300 ORDER BY SOPTYPE ASC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPTYPE, DOCTYABR, DOCTYNAM, SOPNUMBE, DOCUFORM, SETUPKEY, DEX_ROW_ID FROM .SOP40300 WHERE SOPTYPE = @SOPTYPE_RS ORDER BY SOPTYPE ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, DOCTYABR, DOCTYNAM, SOPNUMBE, DOCUFORM, SETUPKEY, DEX_ROW_ID FROM .SOP40300 WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE ORDER BY SOPTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40300F_1] TO [DYNGRP]
GO
