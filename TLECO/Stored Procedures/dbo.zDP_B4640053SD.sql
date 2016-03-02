SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640053SD] (@BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @LOCNCODE char(11), @From_Date datetime, @TODATE datetime, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4640053 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND LOCNCODE = @LOCNCODE AND From_Date = @From_Date AND TODATE = @TODATE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4640053 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND LOCNCODE = @LOCNCODE AND From_Date = @From_Date AND TODATE = @TODATE SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640053SD] TO [DYNGRP]
GO
