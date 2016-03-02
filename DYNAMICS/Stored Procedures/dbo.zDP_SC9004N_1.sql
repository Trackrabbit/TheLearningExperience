SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9004N_1] (@BS int, @PRODID smallint, @TABLTECH char(79), @GPENTFLDNM char(81), @DEX_ROW_ID int, @PRODID_RS smallint, @TABLTECH_RS char(79), @GPENTFLDNM_RS char(81), @PRODID_RE smallint, @TABLTECH_RE char(79), @GPENTFLDNM_RE char(81)) AS /* 12.00.0311.000 */ set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, TABLTECH, GPENTFLDNM, GPENTFLDDC, DEX_ROW_ID FROM .SC9004 WHERE ( PRODID = @PRODID AND TABLTECH = @TABLTECH AND GPENTFLDNM = @GPENTFLDNM AND DEX_ROW_ID > @DEX_ROW_ID OR PRODID = @PRODID AND TABLTECH = @TABLTECH AND GPENTFLDNM > @GPENTFLDNM OR PRODID = @PRODID AND TABLTECH > @TABLTECH OR PRODID > @PRODID ) ORDER BY PRODID ASC, TABLTECH ASC, GPENTFLDNM ASC, DEX_ROW_ID ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, TABLTECH, GPENTFLDNM, GPENTFLDDC, DEX_ROW_ID FROM .SC9004 WHERE PRODID = @PRODID_RS AND TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE AND GPENTFLDNM BETWEEN @GPENTFLDNM_RS AND @GPENTFLDNM_RE AND ( PRODID = @PRODID AND TABLTECH = @TABLTECH AND GPENTFLDNM = @GPENTFLDNM AND DEX_ROW_ID > @DEX_ROW_ID OR PRODID = @PRODID AND TABLTECH = @TABLTECH AND GPENTFLDNM > @GPENTFLDNM OR PRODID = @PRODID AND TABLTECH > @TABLTECH OR PRODID > @PRODID ) ORDER BY PRODID ASC, TABLTECH ASC, GPENTFLDNM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRODID, TABLTECH, GPENTFLDNM, GPENTFLDDC, DEX_ROW_ID FROM .SC9004 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE AND GPENTFLDNM BETWEEN @GPENTFLDNM_RS AND @GPENTFLDNM_RE AND ( PRODID = @PRODID AND TABLTECH = @TABLTECH AND GPENTFLDNM = @GPENTFLDNM AND DEX_ROW_ID > @DEX_ROW_ID OR PRODID = @PRODID AND TABLTECH = @TABLTECH AND GPENTFLDNM > @GPENTFLDNM OR PRODID = @PRODID AND TABLTECH > @TABLTECH OR PRODID > @PRODID ) ORDER BY PRODID ASC, TABLTECH ASC, GPENTFLDNM ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9004N_1] TO [DYNGRP]
GO
