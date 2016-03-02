SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00020L_1] (@UserID_RS char(31), @period_id_RS smallint, @fiscal_year_RS smallint, @UserID_RE char(31), @period_id_RE smallint, @fiscal_year_RE smallint) AS  set nocount on IF @UserID_RS IS NULL BEGIN SELECT TOP 25  UserID, period_id, start_date, end_date, period_name, fiscal_year, DEX_ROW_ID FROM .SVC00020 ORDER BY UserID DESC, period_id DESC, fiscal_year DESC END ELSE IF @UserID_RS = @UserID_RE BEGIN SELECT TOP 25  UserID, period_id, start_date, end_date, period_name, fiscal_year, DEX_ROW_ID FROM .SVC00020 WHERE UserID = @UserID_RS AND period_id BETWEEN @period_id_RS AND @period_id_RE AND fiscal_year BETWEEN @fiscal_year_RS AND @fiscal_year_RE ORDER BY UserID DESC, period_id DESC, fiscal_year DESC END ELSE BEGIN SELECT TOP 25  UserID, period_id, start_date, end_date, period_name, fiscal_year, DEX_ROW_ID FROM .SVC00020 WHERE UserID BETWEEN @UserID_RS AND @UserID_RE AND period_id BETWEEN @period_id_RS AND @period_id_RE AND fiscal_year BETWEEN @fiscal_year_RS AND @fiscal_year_RE ORDER BY UserID DESC, period_id DESC, fiscal_year DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00020L_1] TO [DYNGRP]
GO
