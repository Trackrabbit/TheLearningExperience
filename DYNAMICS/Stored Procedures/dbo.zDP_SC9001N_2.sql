SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9001N_2] (@BS int, @PRODID smallint, @TABLTECH char(79), @PRODID_RS smallint, @TABLTECH_RS char(79), @PRODID_RE smallint, @TABLTECH_RE char(79)) AS /* 12.00.0311.000 */ set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, Series_Number, TABLTECH, TBLPHYSNM, TABLDESC, DEX_ROW_ID FROM .SC9001 WHERE ( PRODID = @PRODID AND TABLTECH > @TABLTECH OR PRODID > @PRODID ) ORDER BY PRODID ASC, TABLTECH ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, Series_Number, TABLTECH, TBLPHYSNM, TABLDESC, DEX_ROW_ID FROM .SC9001 WHERE PRODID = @PRODID_RS AND TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE AND ( PRODID = @PRODID AND TABLTECH > @TABLTECH OR PRODID > @PRODID ) ORDER BY PRODID ASC, TABLTECH ASC END ELSE BEGIN SELECT TOP 25  PRODID, Series_Number, TABLTECH, TBLPHYSNM, TABLDESC, DEX_ROW_ID FROM .SC9001 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE AND ( PRODID = @PRODID AND TABLTECH > @TABLTECH OR PRODID > @PRODID ) ORDER BY PRODID ASC, TABLTECH ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9001N_2] TO [DYNGRP]
GO
