SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA42100N_1] (@BS int, @CALNDRID char(15), @FISCALYEAR smallint, @PERIODENDDATE datetime, @CALNDRID_RS char(15), @FISCALYEAR_RS smallint, @PERIODENDDATE_RS datetime, @CALNDRID_RE char(15), @FISCALYEAR_RE smallint, @PERIODENDDATE_RE datetime) AS  set nocount on IF @CALNDRID_RS IS NULL BEGIN SELECT TOP 25  PERIODSTARTDATE, PERIODENDDATE, PERIODID, FISCALYEAR, CALNDRID, DEX_ROW_ID FROM .FA42100 WHERE ( CALNDRID = @CALNDRID AND FISCALYEAR = @FISCALYEAR AND PERIODENDDATE > @PERIODENDDATE OR CALNDRID = @CALNDRID AND FISCALYEAR > @FISCALYEAR OR CALNDRID > @CALNDRID ) ORDER BY CALNDRID ASC, FISCALYEAR ASC, PERIODENDDATE ASC END ELSE IF @CALNDRID_RS = @CALNDRID_RE BEGIN SELECT TOP 25  PERIODSTARTDATE, PERIODENDDATE, PERIODID, FISCALYEAR, CALNDRID, DEX_ROW_ID FROM .FA42100 WHERE CALNDRID = @CALNDRID_RS AND FISCALYEAR BETWEEN @FISCALYEAR_RS AND @FISCALYEAR_RE AND PERIODENDDATE BETWEEN @PERIODENDDATE_RS AND @PERIODENDDATE_RE AND ( CALNDRID = @CALNDRID AND FISCALYEAR = @FISCALYEAR AND PERIODENDDATE > @PERIODENDDATE OR CALNDRID = @CALNDRID AND FISCALYEAR > @FISCALYEAR OR CALNDRID > @CALNDRID ) ORDER BY CALNDRID ASC, FISCALYEAR ASC, PERIODENDDATE ASC END ELSE BEGIN SELECT TOP 25  PERIODSTARTDATE, PERIODENDDATE, PERIODID, FISCALYEAR, CALNDRID, DEX_ROW_ID FROM .FA42100 WHERE CALNDRID BETWEEN @CALNDRID_RS AND @CALNDRID_RE AND FISCALYEAR BETWEEN @FISCALYEAR_RS AND @FISCALYEAR_RE AND PERIODENDDATE BETWEEN @PERIODENDDATE_RS AND @PERIODENDDATE_RE AND ( CALNDRID = @CALNDRID AND FISCALYEAR = @FISCALYEAR AND PERIODENDDATE > @PERIODENDDATE OR CALNDRID = @CALNDRID AND FISCALYEAR > @FISCALYEAR OR CALNDRID > @CALNDRID ) ORDER BY CALNDRID ASC, FISCALYEAR ASC, PERIODENDDATE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA42100N_1] TO [DYNGRP]
GO
