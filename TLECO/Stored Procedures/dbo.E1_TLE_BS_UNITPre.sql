SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE PROCEDURE [dbo].[E1_TLE_BS_UNITPre]
@I_vLOCNCODE CHAR(11) OUTPUT,                                              /* LOCNCODE */
@I_vB4640700_BSSI_PortfolioID CHAR(25) OUTPUT,                             /* BSSI_PortfolioID */
@I_vB4640700_SALSTERR CHAR(15) OUTPUT,                                     /* SALSTERR */
@I_vB4640700_BSSI_Site_TypeID CHAR(25) OUTPUT,                             /* BSSI_Site_TypeID */
@I_vB4640700_BSSI_Structure_TypeID CHAR(25) OUTPUT,                        /* BSSI_Structure_TypeID */
@I_vB4640700_BSSI_Site_Status SMALLINT OUTPUT,                             /* BSSI_Site_Status */
@I_vB4640700_BSSI_Site_Class_ID CHAR(15) OUTPUT,                           /* BSSI_Site_Class_ID */
@I_vB4640700_BSSI_Site_Acquisition_Da DATETIME OUTPUT,                     /* BSSI_Site_Acquisition_Da */
@I_vB4640700_BSSI_Real_Estate_ID CHAR(25) OUTPUT,                          /* BSSI_Real_Estate_ID */
@I_vB4640700_BSSI_Latitude SMALLINT OUTPUT,                                /* BSSI_Latitude */
@I_vB4640700_BSSI_Latitude_Degree_Dec NUMERIC(19,9) OUTPUT,                /* BSSI_Latitude_Degree_Dec */
@I_vB4640700_BSSI_Latitude_Min SMALLINT OUTPUT,                            /* BSSI_Latitude_Min */
@I_vB4640700_BSSI_Latitude_Sec NUMERIC(19,5) OUTPUT,                       /* BSSI_Latitude_Sec */
@I_vB4640700_BSSI_Longitude SMALLINT OUTPUT,                               /* BSSI_Longitude */
@I_vB4640700_BSSI_Longitude_Degree_De NUMERIC(19,9) OUTPUT,                /* BSSI_Longitude_Degree_De */
@I_vB4640700_BSSI_longitudeMin SMALLINT OUTPUT,                            /* BSSI_longitudeMin */
@I_vB4640700_BSSI_longitudeSec NUMERIC(19,5) OUTPUT,                       /* BSSI_longitudeSec */
@I_vB4640700_BSSI_Rev_Share SMALLINT OUTPUT,                               /* BSSI_Rev_Share */
@I_vB4640700_BSSI_Site_Class_Of_ID CHAR(25) OUTPUT,                        /* BSSI_Site_Class_Of_ID */
@I_vB4640700_BSSI_Construction_Date DATETIME OUTPUT,                       /* BSSI_Construction_Date */
@I_vB4640700_BSSI_UnitClass_ID CHAR(25) OUTPUT,                            /* BSSI_UnitClass_ID */
@I_vB4640700_BSSI_WingID CHAR(25) OUTPUT,                                  /* BSSI_WingID */
@I_vB4640700_BSSI_FloorID CHAR(25) OUTPUT,                                 /* BSSI_FloorID */
@I_vB4640700_BSSI_OccupancyTypeID CHAR(25) OUTPUT,                         /* BSSI_OccupancyTypeID */
@I_vB4640700_BSSI_IsInterior SMALLINT OUTPUT,                              /* BSSI_IsInterior */
@I_vB4640700_BSSI_MasterSiteID CHAR(11) OUTPUT,                            /* BSSI_MasterSiteID */
@I_vB4640700_BSSI_BeginDate DATETIME OUTPUT,                               /* BSSI_BeginDate */
@I_vB4640700_ENDDATE DATETIME OUTPUT,                                      /* ENDDATE */
@I_vB4640700_BSSI_Ground_Space VARCHAR(MAX) OUTPUT,                        /* BSSI_Ground_Space */
@I_vB4640712_BSSI_Site_Reference CHAR(25) OUTPUT,                          /* BSSI_Site_Reference */
@I_vB4640712_BSSI_Site_Floor_Level CHAR(15) OUTPUT,                        /* BSSI_Site_Floor_Level */
@I_vB4640712_BSSI_Occupancy_Type SMALLINT OUTPUT,                          /* BSSI_Occupancy_Type */
@I_vB4640712_BSSI_Renovation_Date DATETIME OUTPUT,                         /* BSSI_Renovation_Date */
@I_vB4640712_BSSI_Total_Sq_Meters NUMERIC(19,5) OUTPUT,                    /* BSSI_Total_Sq_Meters */
@I_vB4640712_BSSI_Total_Leasable_Sq_M NUMERIC(19,5) OUTPUT,                /* BSSI_Total_Leasable_Sq_M */
@I_vB4640712_BSSI_Rent_By_Sq_Meter NUMERIC(19,5) OUTPUT,                   /* BSSI_Rent_By_Sq_Meter */
@I_vB4640712_BSSI_Total_Sq_Ft NUMERIC(19,5) OUTPUT,                        /* BSSI_Total_Sq_Ft */
@I_vB4640712_BSSI_Total_Leasable_Sq_F NUMERIC(19,5) OUTPUT,                /* BSSI_Total_Leasable_Sq_F */
@I_vB4640712_BSSI_Rent_By_Sq_Feet NUMERIC(19,5) OUTPUT,                    /* BSSI_Rent_By_Sq_Feet */
@I_vB4640712_BSSI_nMarketRent NUMERIC(19,5) OUTPUT,                        /* BSSI_nMarketRent */
@I_vB4640712_NOTEINDX NUMERIC(19,5) OUTPUT,                                /* NOTEINDX */
@I_vIV40700_LOCNDSCR CHAR(31) OUTPUT,                                      /* Location Description */
@I_vIV40700_NOTEINDX NUMERIC(19,5) OUTPUT,                                 /* Note Index */
@I_vIV40700_ADDRESS1 CHAR(61) OUTPUT,                                      /* Address 1 */
@I_vIV40700_ADDRESS2 CHAR(61) OUTPUT,                                      /* Address 2 */
@I_vIV40700_ADDRESS3 CHAR(61) OUTPUT,                                      /* Address 3 */
@I_vIV40700_CITY CHAR(35) OUTPUT,                                          /* City */
@I_vIV40700_STATE CHAR(29) OUTPUT,                                         /* State */
@I_vIV40700_ZIPCODE CHAR(11) OUTPUT,                                       /* Zip Code */
@I_vIV40700_COUNTRY CHAR(61) OUTPUT,                                       /* Country */
@I_vIV40700_PHONE1 CHAR(21) OUTPUT,                                        /* Phone 1 */
@I_vIV40700_PHONE2 CHAR(21) OUTPUT,                                        /* Phone 2 */
@I_vIV40700_PHONE3 CHAR(21) OUTPUT,                                        /* Phone 3 */
@I_vIV40700_FAXNUMBR CHAR(21) OUTPUT,                                      /* Fax Number */
@I_vIV40700_Location_Segment CHAR(67) OUTPUT,                              /* Location Segment */
@I_vIV40700_STAXSCHD CHAR(15) OUTPUT,                                      /* Sales Tax Schedule */
@I_vIV40700_PCTAXSCH CHAR(15) OUTPUT,                                      /* Purchases Tax Schedule */
@I_vIV40700_INCLDDINPLNNNG TINYINT OUTPUT,                                 /* Included in Planning */
@I_vIV40700_PORECEIPTBIN CHAR(15) OUTPUT,                                  /* Purchase Receipt Bin */
@I_vIV40700_PORETRNBIN CHAR(15) OUTPUT,                                    /* Purchase Returns Bin */
@I_vIV40700_SOFULFILLMENTBIN CHAR(15) OUTPUT,                              /* SO Fulfillment Bin */
@I_vIV40700_SORETURNBIN CHAR(15) OUTPUT,                                   /* SO Return Bin */
@I_vIV40700_BOMRCPTBIN CHAR(15) OUTPUT,                                    /* BOM Receipt Bin */
@I_vIV40700_MATERIALISSUEBIN CHAR(15) OUTPUT,                              /* Material Issues Bin */
@I_vIV40700_MORECEIPTBIN CHAR(15) OUTPUT,                                  /* MO Receipt Bin */
@I_vIV40700_REPAIRISSUESBIN CHAR(15) OUTPUT,                               /* Repair Issues Bin */
@I_vIV40700_WMSINT TINYINT OUTPUT,                                         /* WMS Integration */
@I_vIV40700_PICKTICKETSITEOPT SMALLINT OUTPUT,                             /* Picking Ticket Site Option */
@I_vIV40700_BINBREAK SMALLINT OUTPUT,                                      /* Bin Break */
@I_vIV40700_CCode CHAR(7) OUTPUT,                                          /* Country Code */
@I_vIV40700_DECLID CHAR(15) OUTPUT,                                        /* Declarant ID */
@I_vIV40700_INACTIVE TINYINT OUTPUT,                                       /* Inactive */
@I_vUpdateIfExists INT OUTPUT,                                             /* Update if exists */
@O_iErrorState INT OUTPUT,                                                 /* Return value:  0=No Errors, 1=Error Occurred */
@oErrString VARCHAR(255) OUTPUT                                            /* Return Error Code List */

AS

SET NOCOUNT ON

SELECT @O_iErrorState = 0

/***** Create Custom Business Logic *****/


/***** End Create Custom Business Logic *****/

RETURN (@O_iErrorState)




GO
GRANT EXECUTE ON  [dbo].[E1_TLE_BS_UNITPre] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[E1_TLE_BS_UNITPre] TO [public]
GO
