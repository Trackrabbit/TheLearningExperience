SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE PROCEDURE [dbo].[E1_TLE_BS_UNITPost]
@I_vLOCNCODE CHAR(11),                                                     /* LOCNCODE */
@I_vB4640700_BSSI_PortfolioID CHAR(25),                                    /* BSSI_PortfolioID */
@I_vB4640700_SALSTERR CHAR(15),                                            /* SALSTERR */
@I_vB4640700_BSSI_Site_TypeID CHAR(25),                                    /* BSSI_Site_TypeID */
@I_vB4640700_BSSI_Structure_TypeID CHAR(25),                               /* BSSI_Structure_TypeID */
@I_vB4640700_BSSI_Site_Status SMALLINT,                                    /* BSSI_Site_Status */
@I_vB4640700_BSSI_Site_Class_ID CHAR(15),                                  /* BSSI_Site_Class_ID */
@I_vB4640700_BSSI_Site_Acquisition_Da DATETIME,                            /* BSSI_Site_Acquisition_Da */
@I_vB4640700_BSSI_Real_Estate_ID CHAR(25),                                 /* BSSI_Real_Estate_ID */
@I_vB4640700_BSSI_Latitude SMALLINT,                                       /* BSSI_Latitude */
@I_vB4640700_BSSI_Latitude_Degree_Dec NUMERIC(19,9),                       /* BSSI_Latitude_Degree_Dec */
@I_vB4640700_BSSI_Latitude_Min SMALLINT,                                   /* BSSI_Latitude_Min */
@I_vB4640700_BSSI_Latitude_Sec NUMERIC(19,5),                              /* BSSI_Latitude_Sec */
@I_vB4640700_BSSI_Longitude SMALLINT,                                      /* BSSI_Longitude */
@I_vB4640700_BSSI_Longitude_Degree_De NUMERIC(19,9),                       /* BSSI_Longitude_Degree_De */
@I_vB4640700_BSSI_longitudeMin SMALLINT,                                   /* BSSI_longitudeMin */
@I_vB4640700_BSSI_longitudeSec NUMERIC(19,5),                              /* BSSI_longitudeSec */
@I_vB4640700_BSSI_Rev_Share SMALLINT,                                      /* BSSI_Rev_Share */
@I_vB4640700_BSSI_Site_Class_Of_ID CHAR(25),                               /* BSSI_Site_Class_Of_ID */
@I_vB4640700_BSSI_Construction_Date DATETIME,                              /* BSSI_Construction_Date */
@I_vB4640700_BSSI_UnitClass_ID CHAR(25),                                   /* BSSI_UnitClass_ID */
@I_vB4640700_BSSI_WingID CHAR(25),                                         /* BSSI_WingID */
@I_vB4640700_BSSI_FloorID CHAR(25),                                        /* BSSI_FloorID */
@I_vB4640700_BSSI_OccupancyTypeID CHAR(25),                                /* BSSI_OccupancyTypeID */
@I_vB4640700_BSSI_IsInterior SMALLINT,                                     /* BSSI_IsInterior */
@I_vB4640700_BSSI_MasterSiteID CHAR(11),                                   /* BSSI_MasterSiteID */
@I_vB4640700_BSSI_BeginDate DATETIME,                                      /* BSSI_BeginDate */
@I_vB4640700_ENDDATE DATETIME,                                             /* ENDDATE */
@I_vB4640700_BSSI_Ground_Space VARCHAR(MAX),                               /* BSSI_Ground_Space */
@I_vB4640712_BSSI_Site_Reference CHAR(25),                                 /* BSSI_Site_Reference */
@I_vB4640712_BSSI_Site_Floor_Level CHAR(15),                               /* BSSI_Site_Floor_Level */
@I_vB4640712_BSSI_Occupancy_Type SMALLINT,                                 /* BSSI_Occupancy_Type */
@I_vB4640712_BSSI_Renovation_Date DATETIME,                                /* BSSI_Renovation_Date */
@I_vB4640712_BSSI_Total_Sq_Meters NUMERIC(19,5),                           /* BSSI_Total_Sq_Meters */
@I_vB4640712_BSSI_Total_Leasable_Sq_M NUMERIC(19,5),                       /* BSSI_Total_Leasable_Sq_M */
@I_vB4640712_BSSI_Rent_By_Sq_Meter NUMERIC(19,5),                          /* BSSI_Rent_By_Sq_Meter */
@I_vB4640712_BSSI_Total_Sq_Ft NUMERIC(19,5),                               /* BSSI_Total_Sq_Ft */
@I_vB4640712_BSSI_Total_Leasable_Sq_F NUMERIC(19,5),                       /* BSSI_Total_Leasable_Sq_F */
@I_vB4640712_BSSI_Rent_By_Sq_Feet NUMERIC(19,5),                           /* BSSI_Rent_By_Sq_Feet */
@I_vB4640712_BSSI_nMarketRent NUMERIC(19,5),                               /* BSSI_nMarketRent */
@I_vB4640712_NOTEINDX NUMERIC(19,5),                                       /* NOTEINDX */
@I_vIV40700_LOCNDSCR CHAR(31),                                             /* Location Description */
@I_vIV40700_NOTEINDX NUMERIC(19,5),                                        /* Note Index */
@I_vIV40700_ADDRESS1 CHAR(61),                                             /* Address 1 */
@I_vIV40700_ADDRESS2 CHAR(61),                                             /* Address 2 */
@I_vIV40700_ADDRESS3 CHAR(61),                                             /* Address 3 */
@I_vIV40700_CITY CHAR(35),                                                 /* City */
@I_vIV40700_STATE CHAR(29),                                                /* State */
@I_vIV40700_ZIPCODE CHAR(11),                                              /* Zip Code */
@I_vIV40700_COUNTRY CHAR(61),                                              /* Country */
@I_vIV40700_PHONE1 CHAR(21),                                               /* Phone 1 */
@I_vIV40700_PHONE2 CHAR(21),                                               /* Phone 2 */
@I_vIV40700_PHONE3 CHAR(21),                                               /* Phone 3 */
@I_vIV40700_FAXNUMBR CHAR(21),                                             /* Fax Number */
@I_vIV40700_Location_Segment CHAR(67),                                     /* Location Segment */
@I_vIV40700_STAXSCHD CHAR(15),                                             /* Sales Tax Schedule */
@I_vIV40700_PCTAXSCH CHAR(15),                                             /* Purchases Tax Schedule */
@I_vIV40700_INCLDDINPLNNNG TINYINT,                                        /* Included in Planning */
@I_vIV40700_PORECEIPTBIN CHAR(15),                                         /* Purchase Receipt Bin */
@I_vIV40700_PORETRNBIN CHAR(15),                                           /* Purchase Returns Bin */
@I_vIV40700_SOFULFILLMENTBIN CHAR(15),                                     /* SO Fulfillment Bin */
@I_vIV40700_SORETURNBIN CHAR(15),                                          /* SO Return Bin */
@I_vIV40700_BOMRCPTBIN CHAR(15),                                           /* BOM Receipt Bin */
@I_vIV40700_MATERIALISSUEBIN CHAR(15),                                     /* Material Issues Bin */
@I_vIV40700_MORECEIPTBIN CHAR(15),                                         /* MO Receipt Bin */
@I_vIV40700_REPAIRISSUESBIN CHAR(15),                                      /* Repair Issues Bin */
@I_vIV40700_WMSINT TINYINT,                                                /* WMS Integration */
@I_vIV40700_PICKTICKETSITEOPT SMALLINT,                                    /* Picking Ticket Site Option */
@I_vIV40700_BINBREAK SMALLINT,                                             /* Bin Break */
@I_vIV40700_CCode CHAR(7),                                                 /* Country Code */
@I_vIV40700_DECLID CHAR(15),                                               /* Declarant ID */
@I_vIV40700_INACTIVE TINYINT,                                              /* Inactive */
@I_vUpdateIfExists INT,                                                    /* Update if exists */
@O_iErrorState INT OUTPUT,                                                 /* Return value:  0=No Errors, 1=Error Occurred */
@oErrString VARCHAR(255) OUTPUT                                            /* Return Error Code List */

AS

SET NOCOUNT ON

SELECT @O_iErrorState = 0

/***** Create Custom Business Logic *****/


/***** End Create Custom Business Logic *****/

RETURN (@O_iErrorState)




GO
GRANT EXECUTE ON  [dbo].[E1_TLE_BS_UNITPost] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[E1_TLE_BS_UNITPost] TO [public]
GO
