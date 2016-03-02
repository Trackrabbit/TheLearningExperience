SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30207F_2] (@TECHID_RS char(11), @SRVRECTYPE_RS smallint, @CALLNBR_RS char(11), @EQPLINE_RS int, @TECHID_RE char(11), @SRVRECTYPE_RE smallint, @CALLNBR_RE char(11), @EQPLINE_RE int) AS  set nocount on IF @TECHID_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, TECHID, DEX_ROW_ID FROM .SVC30207 ORDER BY TECHID ASC, SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, DEX_ROW_ID ASC END ELSE IF @TECHID_RS = @TECHID_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, TECHID, DEX_ROW_ID FROM .SVC30207 WHERE TECHID = @TECHID_RS AND SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND EQPLINE BETWEEN @EQPLINE_RS AND @EQPLINE_RE ORDER BY TECHID ASC, SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, TECHID, DEX_ROW_ID FROM .SVC30207 WHERE TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND EQPLINE BETWEEN @EQPLINE_RS AND @EQPLINE_RE ORDER BY TECHID ASC, SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30207F_2] TO [DYNGRP]
GO
