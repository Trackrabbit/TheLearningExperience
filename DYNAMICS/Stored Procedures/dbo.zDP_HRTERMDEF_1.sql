SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRTERMDEF_1] (@TERMORDER_I_RS smallint, @TERMORDER_I_RE smallint) AS  set nocount on IF @TERMORDER_I_RS IS NULL BEGIN SELECT TOP 25  TERMITEM_I, ADDTODEFAULTITEMS_I, TERMATTRIBUTE_I, DEFAULTNUMBER_I, TERMORDER_I, DEX_ROW_ID FROM .HRTERMDE ORDER BY TERMORDER_I ASC, DEX_ROW_ID ASC END ELSE IF @TERMORDER_I_RS = @TERMORDER_I_RE BEGIN SELECT TOP 25  TERMITEM_I, ADDTODEFAULTITEMS_I, TERMATTRIBUTE_I, DEFAULTNUMBER_I, TERMORDER_I, DEX_ROW_ID FROM .HRTERMDE WHERE TERMORDER_I = @TERMORDER_I_RS ORDER BY TERMORDER_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TERMITEM_I, ADDTODEFAULTITEMS_I, TERMATTRIBUTE_I, DEFAULTNUMBER_I, TERMORDER_I, DEX_ROW_ID FROM .HRTERMDE WHERE TERMORDER_I BETWEEN @TERMORDER_I_RS AND @TERMORDER_I_RE ORDER BY TERMORDER_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTERMDEF_1] TO [DYNGRP]
GO