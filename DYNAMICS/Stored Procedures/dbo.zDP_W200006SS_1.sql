SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_W200006SS_1] (@RPTNGYR smallint, @CMPANYID smallint, @Employment_Code smallint) AS  set nocount on SELECT TOP 1  RPTNGYR, CMPANYID, CMPNYNAM, Location_Address, Delivery_Address, CITY, STATECD, ZIPCODE, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, EPRIDNBR, Establishment_Number, Employment_Code, Terminated_Business, Agent_Indicator_Code, Agent_ID_Number, Agent_for_EIN, WAGEFILE, DATE1, TIME1, INCLUDCO, EMPW2TOT, EMPWTOC, EMPFEDTX, EMPSSWGS, EMPSSTIP, EMPSSTAX, EMPMEDWG, EMPMEDTX, Employer_EIC_Payments, Employer_Allocated_Tips, EmployerKind, DEX_ROW_ID FROM .W200006 WHERE RPTNGYR = @RPTNGYR AND CMPANYID = @CMPANYID AND Employment_Code = @Employment_Code ORDER BY RPTNGYR ASC, CMPANYID ASC, Employment_Code ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_W200006SS_1] TO [DYNGRP]
GO
