SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRODF_2] (@DEFAULTNUMBER_I_RS smallint, @TERMORDER_I_RS smallint, @DEFAULTNUMBER_I_RE smallint, @TERMORDER_I_RE smallint) AS  set nocount on IF @DEFAULTNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  DEFAULTNUMBER_I, TERMITEM_I, TERMATTRIBUTE_I, TERMORDER_I, ADDTODEFAULTITEMS_I, DEX_ROW_ID FROM .HROD ORDER BY DEFAULTNUMBER_I ASC, TERMORDER_I ASC END ELSE IF @DEFAULTNUMBER_I_RS = @DEFAULTNUMBER_I_RE BEGIN SELECT TOP 25  DEFAULTNUMBER_I, TERMITEM_I, TERMATTRIBUTE_I, TERMORDER_I, ADDTODEFAULTITEMS_I, DEX_ROW_ID FROM .HROD WHERE DEFAULTNUMBER_I = @DEFAULTNUMBER_I_RS AND TERMORDER_I BETWEEN @TERMORDER_I_RS AND @TERMORDER_I_RE ORDER BY DEFAULTNUMBER_I ASC, TERMORDER_I ASC END ELSE BEGIN SELECT TOP 25  DEFAULTNUMBER_I, TERMITEM_I, TERMATTRIBUTE_I, TERMORDER_I, ADDTODEFAULTITEMS_I, DEX_ROW_ID FROM .HROD WHERE DEFAULTNUMBER_I BETWEEN @DEFAULTNUMBER_I_RS AND @DEFAULTNUMBER_I_RE AND TERMORDER_I BETWEEN @TERMORDER_I_RS AND @TERMORDER_I_RE ORDER BY DEFAULTNUMBER_I ASC, TERMORDER_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRODF_2] TO [DYNGRP]
GO
