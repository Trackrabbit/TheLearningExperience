SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_W200005SS_1] (@RPTNGYR smallint) AS  set nocount on SELECT TOP 1  RPTNGYR, CMPNYNAM, Location_Address, Delivery_Address, CITY, STATECD, ZIPCODE, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, Submitter_Name, Submitter_Location_Addre, Submitter_Delivery_Addre, Submitter_City, Submitter_State_Code, Submitter_Zip_Code, Submitter_Foreign_Addres, Submitter_Foreign_StateP, Submitter_Foreign_Postal, Submitter_Country_Code, Submitter_EIN, Method_of_Notification, Preparer_Code, CNTCPRSN, PHONNAME, FAXNUMBR, EMail, MMREFPIN, DEX_ROW_ID FROM .W200005 WHERE RPTNGYR = @RPTNGYR ORDER BY RPTNGYR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_W200005SS_1] TO [DYNGRP]
GO
