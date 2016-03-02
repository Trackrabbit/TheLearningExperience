SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90106F_2] (@PRODID_RS smallint, @TABLTECH_RS char(79), @PRODID_RE smallint, @TABLTECH_RE char(79)) AS set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, Series_Number, TABLTECH, TABLDESC, DEX_ROW_ID FROM .EXT90106 ORDER BY PRODID ASC, TABLTECH ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, Series_Number, TABLTECH, TABLDESC, DEX_ROW_ID FROM .EXT90106 WHERE PRODID = @PRODID_RS AND TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE ORDER BY PRODID ASC, TABLTECH ASC END ELSE BEGIN SELECT TOP 25  PRODID, Series_Number, TABLTECH, TABLDESC, DEX_ROW_ID FROM .EXT90106 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE ORDER BY PRODID ASC, TABLTECH ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90106F_2] TO [DYNGRP]
GO
