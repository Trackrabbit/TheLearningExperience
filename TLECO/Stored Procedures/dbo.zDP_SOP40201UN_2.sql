SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40201UN_2] (@BS int, @PRCHLDID char(15), @PRCHLDID_RS char(15), @PRCHLDID_RE char(15)) AS  set nocount on IF @PRCHLDID_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, DOCID, PRCHLDID, DEX_ROW_ID FROM .SOP40201 WHERE ( PRCHLDID > @PRCHLDID ) ORDER BY PRCHLDID ASC, DEX_ROW_ID ASC END ELSE IF @PRCHLDID_RS = @PRCHLDID_RE BEGIN SELECT TOP 25  SOPTYPE, DOCID, PRCHLDID, DEX_ROW_ID FROM .SOP40201 WHERE PRCHLDID = @PRCHLDID_RS AND ( PRCHLDID > @PRCHLDID ) ORDER BY PRCHLDID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, DOCID, PRCHLDID, DEX_ROW_ID FROM .SOP40201 WHERE PRCHLDID BETWEEN @PRCHLDID_RS AND @PRCHLDID_RE AND ( PRCHLDID > @PRCHLDID ) ORDER BY PRCHLDID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40201UN_2] TO [DYNGRP]
GO
