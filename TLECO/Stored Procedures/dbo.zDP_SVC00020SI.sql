SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00020SI] (@UserID char(31), @period_id smallint, @start_date datetime, @end_date datetime, @period_name char(21), @fiscal_year smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00020 (UserID, period_id, start_date, end_date, period_name, fiscal_year) VALUES ( @UserID, @period_id, @start_date, @end_date, @period_name, @fiscal_year) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00020SI] TO [DYNGRP]
GO
