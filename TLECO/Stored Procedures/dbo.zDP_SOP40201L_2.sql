SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40201L_2] (@PRCHLDID_RS char(15), @PRCHLDID_RE char(15)) AS  set nocount on IF @PRCHLDID_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, DOCID, PRCHLDID, DEX_ROW_ID FROM .SOP40201 ORDER BY PRCHLDID DESC, DEX_ROW_ID DESC END ELSE IF @PRCHLDID_RS = @PRCHLDID_RE BEGIN SELECT TOP 25  SOPTYPE, DOCID, PRCHLDID, DEX_ROW_ID FROM .SOP40201 WHERE PRCHLDID = @PRCHLDID_RS ORDER BY PRCHLDID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SOPTYPE, DOCID, PRCHLDID, DEX_ROW_ID FROM .SOP40201 WHERE PRCHLDID BETWEEN @PRCHLDID_RS AND @PRCHLDID_RE ORDER BY PRCHLDID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40201L_2] TO [DYNGRP]
GO
