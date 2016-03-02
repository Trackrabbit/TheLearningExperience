SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00102N_1] (@BS int, @TECHID char(11), @ITEMNMBR char(31), @PROBCDE char(11), @TECHID_RS char(11), @ITEMNMBR_RS char(31), @PROBCDE_RS char(11), @TECHID_RE char(11), @ITEMNMBR_RE char(31), @PROBCDE_RE char(11)) AS  set nocount on IF @TECHID_RS IS NULL BEGIN SELECT TOP 25  TECHID, ITEMNMBR, PROBCDE, CRSENBR, CERTNUM, CERTDTE, EXPNDATE, DEX_ROW_ID FROM .SVC00102 WHERE ( TECHID = @TECHID AND ITEMNMBR = @ITEMNMBR AND PROBCDE > @PROBCDE OR TECHID = @TECHID AND ITEMNMBR > @ITEMNMBR OR TECHID > @TECHID ) ORDER BY TECHID ASC, ITEMNMBR ASC, PROBCDE ASC END ELSE IF @TECHID_RS = @TECHID_RE BEGIN SELECT TOP 25  TECHID, ITEMNMBR, PROBCDE, CRSENBR, CERTNUM, CERTDTE, EXPNDATE, DEX_ROW_ID FROM .SVC00102 WHERE TECHID = @TECHID_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND PROBCDE BETWEEN @PROBCDE_RS AND @PROBCDE_RE AND ( TECHID = @TECHID AND ITEMNMBR = @ITEMNMBR AND PROBCDE > @PROBCDE OR TECHID = @TECHID AND ITEMNMBR > @ITEMNMBR OR TECHID > @TECHID ) ORDER BY TECHID ASC, ITEMNMBR ASC, PROBCDE ASC END ELSE BEGIN SELECT TOP 25  TECHID, ITEMNMBR, PROBCDE, CRSENBR, CERTNUM, CERTDTE, EXPNDATE, DEX_ROW_ID FROM .SVC00102 WHERE TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND PROBCDE BETWEEN @PROBCDE_RS AND @PROBCDE_RE AND ( TECHID = @TECHID AND ITEMNMBR = @ITEMNMBR AND PROBCDE > @PROBCDE OR TECHID = @TECHID AND ITEMNMBR > @ITEMNMBR OR TECHID > @TECHID ) ORDER BY TECHID ASC, ITEMNMBR ASC, PROBCDE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00102N_1] TO [DYNGRP]
GO
