SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602909SI] (@BSSI_Ground_Lease_Number char(25), @BSSI_Commencement_Date datetime, @BSSI_Lead_Time smallint, @BSSI_Renewal_Type smallint, @BSSI_First_Term_Months int, @BSSI_First_Term_Qty int, @BSSI_First_Term_Years int, @BSSI_Renewal_Option_Qty int, @BSSI_Renewal_Option_Mont int, @BSSI_Renewal_Option_Year int, @BSSI_Total_Lease_Terms_M int, @BSSI_Alignment tinyint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602909 (BSSI_Ground_Lease_Number, BSSI_Commencement_Date, BSSI_Lead_Time, BSSI_Renewal_Type, BSSI_First_Term_Months, BSSI_First_Term_Qty, BSSI_First_Term_Years, BSSI_Renewal_Option_Qty, BSSI_Renewal_Option_Mont, BSSI_Renewal_Option_Year, BSSI_Total_Lease_Terms_M, BSSI_Alignment, NOTEINDX) VALUES ( @BSSI_Ground_Lease_Number, @BSSI_Commencement_Date, @BSSI_Lead_Time, @BSSI_Renewal_Type, @BSSI_First_Term_Months, @BSSI_First_Term_Qty, @BSSI_First_Term_Years, @BSSI_Renewal_Option_Qty, @BSSI_Renewal_Option_Mont, @BSSI_Renewal_Option_Year, @BSSI_Total_Lease_Terms_M, @BSSI_Alignment, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602909SI] TO [DYNGRP]
GO
