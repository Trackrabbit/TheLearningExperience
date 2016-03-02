SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_OSHABPF_1] (@INJURYBODYPART_I_RS char(31), @INJURYBODYPART_I_RE char(31)) AS  set nocount on IF @INJURYBODYPART_I_RS IS NULL BEGIN SELECT TOP 25  INJURYBODYPART_I, DEX_ROW_ID FROM .OSHABP ORDER BY INJURYBODYPART_I ASC END ELSE IF @INJURYBODYPART_I_RS = @INJURYBODYPART_I_RE BEGIN SELECT TOP 25  INJURYBODYPART_I, DEX_ROW_ID FROM .OSHABP WHERE INJURYBODYPART_I = @INJURYBODYPART_I_RS ORDER BY INJURYBODYPART_I ASC END ELSE BEGIN SELECT TOP 25  INJURYBODYPART_I, DEX_ROW_ID FROM .OSHABP WHERE INJURYBODYPART_I BETWEEN @INJURYBODYPART_I_RS AND @INJURYBODYPART_I_RE ORDER BY INJURYBODYPART_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_OSHABPF_1] TO [DYNGRP]
GO