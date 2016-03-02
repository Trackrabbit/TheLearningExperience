SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_W200006SI] (@RPTNGYR smallint, @CMPANYID smallint, @CMPNYNAM char(65), @Location_Address char(23), @Delivery_Address char(23), @CITY char(35), @STATECD char(3), @ZIPCODE char(11), @Foreign_Address tinyint, @Foreign_StateProvince char(23), @Foreign_Postal_Code char(15), @CCode char(7), @EPRIDNBR char(9), @Establishment_Number char(5), @Employment_Code smallint, @Terminated_Business tinyint, @Agent_Indicator_Code smallint, @Agent_ID_Number char(9), @Agent_for_EIN char(9), @WAGEFILE char(3), @DATE1 datetime, @TIME1 datetime, @INCLUDCO tinyint, @EMPW2TOT int, @EMPWTOC numeric(19,5), @EMPFEDTX numeric(19,5), @EMPSSWGS numeric(19,5), @EMPSSTIP numeric(19,5), @EMPSSTAX numeric(19,5), @EMPMEDWG numeric(19,5), @EMPMEDTX numeric(19,5), @Employer_EIC_Payments numeric(19,5), @Employer_Allocated_Tips numeric(19,5), @EmployerKind smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .W200006 (RPTNGYR, CMPANYID, CMPNYNAM, Location_Address, Delivery_Address, CITY, STATECD, ZIPCODE, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, EPRIDNBR, Establishment_Number, Employment_Code, Terminated_Business, Agent_Indicator_Code, Agent_ID_Number, Agent_for_EIN, WAGEFILE, DATE1, TIME1, INCLUDCO, EMPW2TOT, EMPWTOC, EMPFEDTX, EMPSSWGS, EMPSSTIP, EMPSSTAX, EMPMEDWG, EMPMEDTX, Employer_EIC_Payments, Employer_Allocated_Tips, EmployerKind) VALUES ( @RPTNGYR, @CMPANYID, @CMPNYNAM, @Location_Address, @Delivery_Address, @CITY, @STATECD, @ZIPCODE, @Foreign_Address, @Foreign_StateProvince, @Foreign_Postal_Code, @CCode, @EPRIDNBR, @Establishment_Number, @Employment_Code, @Terminated_Business, @Agent_Indicator_Code, @Agent_ID_Number, @Agent_for_EIN, @WAGEFILE, @DATE1, @TIME1, @INCLUDCO, @EMPW2TOT, @EMPWTOC, @EMPFEDTX, @EMPSSWGS, @EMPSSTIP, @EMPSSTAX, @EMPMEDWG, @EMPMEDTX, @Employer_EIC_Payments, @Employer_Allocated_Tips, @EmployerKind) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_W200006SI] TO [DYNGRP]
GO