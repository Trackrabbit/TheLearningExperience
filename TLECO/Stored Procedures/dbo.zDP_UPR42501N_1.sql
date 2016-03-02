SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42501N_1] (@BS int, @Batch_Prefix char(15), @LOCATNID char(15), @Batch_Prefix_RS char(15), @LOCATNID_RS char(15), @Batch_Prefix_RE char(15), @LOCATNID_RE char(15)) AS  set nocount on IF @Batch_Prefix_RS IS NULL BEGIN SELECT TOP 25  Batch_Prefix, LOCATNID, DEX_ROW_ID FROM .UPR42501 WHERE ( Batch_Prefix = @Batch_Prefix AND LOCATNID > @LOCATNID OR Batch_Prefix > @Batch_Prefix ) ORDER BY Batch_Prefix ASC, LOCATNID ASC END ELSE IF @Batch_Prefix_RS = @Batch_Prefix_RE BEGIN SELECT TOP 25  Batch_Prefix, LOCATNID, DEX_ROW_ID FROM .UPR42501 WHERE Batch_Prefix = @Batch_Prefix_RS AND LOCATNID BETWEEN @LOCATNID_RS AND @LOCATNID_RE AND ( Batch_Prefix = @Batch_Prefix AND LOCATNID > @LOCATNID OR Batch_Prefix > @Batch_Prefix ) ORDER BY Batch_Prefix ASC, LOCATNID ASC END ELSE BEGIN SELECT TOP 25  Batch_Prefix, LOCATNID, DEX_ROW_ID FROM .UPR42501 WHERE Batch_Prefix BETWEEN @Batch_Prefix_RS AND @Batch_Prefix_RE AND LOCATNID BETWEEN @LOCATNID_RS AND @LOCATNID_RE AND ( Batch_Prefix = @Batch_Prefix AND LOCATNID > @LOCATNID OR Batch_Prefix > @Batch_Prefix ) ORDER BY Batch_Prefix ASC, LOCATNID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42501N_1] TO [DYNGRP]
GO
