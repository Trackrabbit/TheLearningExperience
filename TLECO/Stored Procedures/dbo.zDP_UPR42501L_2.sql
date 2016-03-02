SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42501L_2] (@LOCATNID_RS char(15), @Batch_Prefix_RS char(15), @LOCATNID_RE char(15), @Batch_Prefix_RE char(15)) AS  set nocount on IF @LOCATNID_RS IS NULL BEGIN SELECT TOP 25  Batch_Prefix, LOCATNID, DEX_ROW_ID FROM .UPR42501 ORDER BY LOCATNID DESC, Batch_Prefix DESC END ELSE IF @LOCATNID_RS = @LOCATNID_RE BEGIN SELECT TOP 25  Batch_Prefix, LOCATNID, DEX_ROW_ID FROM .UPR42501 WHERE LOCATNID = @LOCATNID_RS AND Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE ORDER BY LOCATNID DESC, Batch_Prefix DESC END ELSE BEGIN SELECT TOP 25  Batch_Prefix, LOCATNID, DEX_ROW_ID FROM .UPR42501 WHERE LOCATNID BETWEEN @LOCATNID_RS AND @LOCATNID_RE AND Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE ORDER BY LOCATNID DESC, Batch_Prefix DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42501L_2] TO [DYNGRP]
GO
