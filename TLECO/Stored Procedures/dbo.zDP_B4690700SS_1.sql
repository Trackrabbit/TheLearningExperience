SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4690700SS_1] (@BSSI_PortfolioID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, NOTEINDX, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, CNTCPRSN, EMail, PHONE1, PHONE2, FAXNUMBR, BSSI_Occupancy_Type, BSSI_Total_Sq_Ft, BSSI_Total_Sq_Meters, BSSI_Total_Leasable_Sq_F, BSSI_Total_Leasable_Sq_M, BSSI_Total_Floors, BSSI_Total_Units, BSSI_Total_Garages, BSSI_Total_Hectures, DEX_ROW_ID FROM .B4690700 WHERE BSSI_PortfolioID = @BSSI_PortfolioID ORDER BY BSSI_PortfolioID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4690700SS_1] TO [DYNGRP]
GO
