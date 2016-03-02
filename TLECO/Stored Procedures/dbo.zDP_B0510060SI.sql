SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510060SI] (@MJW_Transfer_Number char(21), @MJW_Transfer_Date datetime, @PERIODID smallint, @MJW_Transfer_Reason char(51), @MJW_Offering_ID char(21), @MJW_Series_ID char(21), @MJW_Transfer_From_Invest char(15), @MJW_Transfer_To_Investor char(15), @MJW_Transfer_Type smallint, @MJW_Death_Date datetime, @BSSI_Facility_ID char(67), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510060 (MJW_Transfer_Number, MJW_Transfer_Date, PERIODID, MJW_Transfer_Reason, MJW_Offering_ID, MJW_Series_ID, MJW_Transfer_From_Invest, MJW_Transfer_To_Investor, MJW_Transfer_Type, MJW_Death_Date, BSSI_Facility_ID, NOTEINDX) VALUES ( @MJW_Transfer_Number, @MJW_Transfer_Date, @PERIODID, @MJW_Transfer_Reason, @MJW_Offering_ID, @MJW_Series_ID, @MJW_Transfer_From_Invest, @MJW_Transfer_To_Investor, @MJW_Transfer_Type, @MJW_Death_Date, @BSSI_Facility_ID, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510060SI] TO [DYNGRP]
GO
