SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT00001L_2] (@CMPANYID_RS smallint, @Extender_Type_RS smallint, @Extender_ID_RS char(15), @CMPANYID_RE smallint, @Extender_Type_RE smallint, @Extender_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  Extender_Resource_Number, CMPANYID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT00001 ORDER BY CMPANYID DESC, Extender_Type DESC, Extender_ID DESC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  Extender_Resource_Number, CMPANYID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT00001 WHERE CMPANYID = @CMPANYID_RS AND Extender_Type BETWEEN @Extender_Type_RS AND @Extender_Type_RE AND Extender_ID BETWEEN @Extender_ID_RS AND @Extender_ID_RE ORDER BY CMPANYID DESC, Extender_Type DESC, Extender_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Resource_Number, CMPANYID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT00001 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND Extender_Type BETWEEN @Extender_Type_RS AND @Extender_Type_RE AND Extender_ID BETWEEN @Extender_ID_RS AND @Extender_ID_RE ORDER BY CMPANYID DESC, Extender_Type DESC, Extender_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT00001L_2] TO [DYNGRP]
GO
