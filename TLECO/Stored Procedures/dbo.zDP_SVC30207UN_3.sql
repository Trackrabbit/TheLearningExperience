SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30207UN_3] (@BS int, @SRVRECTYPE smallint, @CALLNBR char(11), @TECHID char(11), @SRVRECTYPE_RS smallint, @CALLNBR_RS char(11), @TECHID_RS char(11), @SRVRECTYPE_RE smallint, @CALLNBR_RE char(11), @TECHID_RE char(11)) AS  set nocount on IF @SRVRECTYPE_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, TECHID, DEX_ROW_ID FROM .SVC30207 WHERE ( SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND TECHID > @TECHID OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR > @CALLNBR OR SRVRECTYPE > @SRVRECTYPE ) ORDER BY SRVRECTYPE ASC, CALLNBR ASC, TECHID ASC, DEX_ROW_ID ASC END ELSE IF @SRVRECTYPE_RS = @SRVRECTYPE_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, TECHID, DEX_ROW_ID FROM .SVC30207 WHERE SRVRECTYPE = @SRVRECTYPE_RS AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND ( SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND TECHID > @TECHID OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR > @CALLNBR OR SRVRECTYPE > @SRVRECTYPE ) ORDER BY SRVRECTYPE ASC, CALLNBR ASC, TECHID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, TECHID, DEX_ROW_ID FROM .SVC30207 WHERE SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND ( SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND TECHID > @TECHID OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR > @CALLNBR OR SRVRECTYPE > @SRVRECTYPE ) ORDER BY SRVRECTYPE ASC, CALLNBR ASC, TECHID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30207UN_3] TO [DYNGRP]
GO
