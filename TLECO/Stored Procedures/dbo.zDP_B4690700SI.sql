SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4690700SI] (@BSSI_PortfolioID char(25), @NOTEINDX numeric(19,5), @ADDRESS1 char(61), @ADDRESS2 char(61), @ADDRESS3 char(61), @CITY char(35), @STATE char(29), @ZIPCODE char(11), @COUNTRY char(61), @CNTCPRSN char(61), @EMail char(255), @PHONE1 char(21), @PHONE2 char(21), @FAXNUMBR char(21), @BSSI_Occupancy_Type smallint, @BSSI_Total_Sq_Ft numeric(19,5), @BSSI_Total_Sq_Meters numeric(19,5), @BSSI_Total_Leasable_Sq_F numeric(19,5), @BSSI_Total_Leasable_Sq_M numeric(19,5), @BSSI_Total_Floors int, @BSSI_Total_Units int, @BSSI_Total_Garages int, @BSSI_Total_Hectures numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4690700 (BSSI_PortfolioID, NOTEINDX, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, CNTCPRSN, EMail, PHONE1, PHONE2, FAXNUMBR, BSSI_Occupancy_Type, BSSI_Total_Sq_Ft, BSSI_Total_Sq_Meters, BSSI_Total_Leasable_Sq_F, BSSI_Total_Leasable_Sq_M, BSSI_Total_Floors, BSSI_Total_Units, BSSI_Total_Garages, BSSI_Total_Hectures) VALUES ( @BSSI_PortfolioID, @NOTEINDX, @ADDRESS1, @ADDRESS2, @ADDRESS3, @CITY, @STATE, @ZIPCODE, @COUNTRY, @CNTCPRSN, @EMail, @PHONE1, @PHONE2, @FAXNUMBR, @BSSI_Occupancy_Type, @BSSI_Total_Sq_Ft, @BSSI_Total_Sq_Meters, @BSSI_Total_Leasable_Sq_F, @BSSI_Total_Leasable_Sq_M, @BSSI_Total_Floors, @BSSI_Total_Units, @BSSI_Total_Garages, @BSSI_Total_Hectures) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4690700SI] TO [DYNGRP]
GO
