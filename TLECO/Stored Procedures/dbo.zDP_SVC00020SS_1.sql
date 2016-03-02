SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00020SS_1] (@UserID char(31), @period_id smallint, @fiscal_year smallint) AS  set nocount on SELECT TOP 1  UserID, period_id, start_date, end_date, period_name, fiscal_year, DEX_ROW_ID FROM .SVC00020 WHERE UserID = @UserID AND period_id = @period_id AND fiscal_year = @fiscal_year ORDER BY UserID ASC, period_id ASC, fiscal_year ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00020SS_1] TO [DYNGRP]
GO
