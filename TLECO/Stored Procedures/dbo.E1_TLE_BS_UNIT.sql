SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROCEDURE [dbo].[E1_TLE_BS_UNIT]
@I_vLOCNCODE CHAR(11) = NULL,                                              /* LOCNCODE */
@I_vB4640700_BSSI_PortfolioID CHAR(25) = NULL,                             /* BSSI_PortfolioID */
@I_vB4640700_SALSTERR CHAR(15) = NULL,                                     /* SALSTERR */
@I_vB4640700_BSSI_Site_TypeID CHAR(25) = NULL,                             /* BSSI_Site_TypeID */
@I_vB4640700_BSSI_Structure_TypeID CHAR(25) = NULL,                        /* BSSI_Structure_TypeID */
@I_vB4640700_BSSI_Site_Status SMALLINT = NULL,                             /* BSSI_Site_Status */
@I_vB4640700_BSSI_Site_Class_ID CHAR(15) = NULL,                           /* BSSI_Site_Class_ID */
@I_vB4640700_BSSI_Site_Acquisition_Da DATETIME = NULL,                     /* BSSI_Site_Acquisition_Da */
@I_vB4640700_BSSI_Real_Estate_ID CHAR(25) = NULL,                          /* BSSI_Real_Estate_ID */
@I_vB4640700_BSSI_Latitude SMALLINT = NULL,                                /* BSSI_Latitude */
@I_vB4640700_BSSI_Latitude_Degree_Dec NUMERIC(19,9) = NULL,                /* BSSI_Latitude_Degree_Dec */
@I_vB4640700_BSSI_Latitude_Min SMALLINT = NULL,                            /* BSSI_Latitude_Min */
@I_vB4640700_BSSI_Latitude_Sec NUMERIC(19,5) = NULL,                       /* BSSI_Latitude_Sec */
@I_vB4640700_BSSI_Longitude SMALLINT = NULL,                               /* BSSI_Longitude */
@I_vB4640700_BSSI_Longitude_Degree_De NUMERIC(19,9) = NULL,                /* BSSI_Longitude_Degree_De */
@I_vB4640700_BSSI_longitudeMin SMALLINT = NULL,                            /* BSSI_longitudeMin */
@I_vB4640700_BSSI_longitudeSec NUMERIC(19,5) = NULL,                       /* BSSI_longitudeSec */
@I_vB4640700_BSSI_Rev_Share SMALLINT = NULL,                               /* BSSI_Rev_Share */
@I_vB4640700_BSSI_Site_Class_Of_ID CHAR(25) = NULL,                        /* BSSI_Site_Class_Of_ID */
@I_vB4640700_BSSI_Construction_Date DATETIME = NULL,                       /* BSSI_Construction_Date */
@I_vB4640700_BSSI_UnitClass_ID CHAR(25) = NULL,                            /* BSSI_UnitClass_ID */
@I_vB4640700_BSSI_WingID CHAR(25) = NULL,                                  /* BSSI_WingID */
@I_vB4640700_BSSI_FloorID CHAR(25) = NULL,                                 /* BSSI_FloorID */
@I_vB4640700_BSSI_OccupancyTypeID CHAR(25) = NULL,                         /* BSSI_OccupancyTypeID */
@I_vB4640700_BSSI_IsInterior SMALLINT = NULL,                              /* BSSI_IsInterior */
@I_vB4640700_BSSI_MasterSiteID CHAR(11) = NULL,                            /* BSSI_MasterSiteID */
@I_vB4640700_BSSI_BeginDate DATETIME = NULL,                               /* BSSI_BeginDate */
@I_vB4640700_ENDDATE DATETIME = NULL,                                      /* ENDDATE */
@I_vB4640700_BSSI_Ground_Space VARCHAR(MAX) = NULL,                        /* BSSI_Ground_Space */
@I_vB4640712_BSSI_Site_Reference CHAR(25) = NULL,                          /* BSSI_Site_Reference */
@I_vB4640712_BSSI_Site_Floor_Level CHAR(15) = NULL,                        /* BSSI_Site_Floor_Level */
@I_vB4640712_BSSI_Occupancy_Type SMALLINT = NULL,                          /* BSSI_Occupancy_Type */
@I_vB4640712_BSSI_Renovation_Date DATETIME = NULL,                         /* BSSI_Renovation_Date */
@I_vB4640712_BSSI_Total_Sq_Meters NUMERIC(19,5) = NULL,                    /* BSSI_Total_Sq_Meters */
@I_vB4640712_BSSI_Total_Leasable_Sq_M NUMERIC(19,5) = NULL,                /* BSSI_Total_Leasable_Sq_M */
@I_vB4640712_BSSI_Rent_By_Sq_Meter NUMERIC(19,5) = NULL,                   /* BSSI_Rent_By_Sq_Meter */
@I_vB4640712_BSSI_Total_Sq_Ft NUMERIC(19,5) = NULL,                        /* BSSI_Total_Sq_Ft */
@I_vB4640712_BSSI_Total_Leasable_Sq_F NUMERIC(19,5) = NULL,                /* BSSI_Total_Leasable_Sq_F */
@I_vB4640712_BSSI_Rent_By_Sq_Feet NUMERIC(19,5) = NULL,                    /* BSSI_Rent_By_Sq_Feet */
@I_vB4640712_BSSI_nMarketRent NUMERIC(19,5) = NULL,                        /* BSSI_nMarketRent */
@I_vB4640712_NOTEINDX NUMERIC(19,5) = NULL,                                /* NOTEINDX */
@I_vIV40700_LOCNDSCR CHAR(31) = NULL,                                      /* Location Description */
@I_vIV40700_NOTEINDX NUMERIC(19,5) = NULL,                                 /* Note Index */
@I_vIV40700_ADDRESS1 CHAR(61) = NULL,                                      /* Address 1 */
@I_vIV40700_ADDRESS2 CHAR(61) = NULL,                                      /* Address 2 */
@I_vIV40700_ADDRESS3 CHAR(61) = NULL,                                      /* Address 3 */
@I_vIV40700_CITY CHAR(35) = NULL,                                          /* City */
@I_vIV40700_STATE CHAR(29) = NULL,                                         /* State */
@I_vIV40700_ZIPCODE CHAR(11) = NULL,                                       /* Zip Code */
@I_vIV40700_COUNTRY CHAR(61) = NULL,                                       /* Country */
@I_vIV40700_PHONE1 CHAR(21) = NULL,                                        /* Phone 1 */
@I_vIV40700_PHONE2 CHAR(21) = NULL,                                        /* Phone 2 */
@I_vIV40700_PHONE3 CHAR(21) = NULL,                                        /* Phone 3 */
@I_vIV40700_FAXNUMBR CHAR(21) = NULL,                                      /* Fax Number */
@I_vIV40700_Location_Segment CHAR(67) = NULL,                              /* Location Segment */
@I_vIV40700_STAXSCHD CHAR(15) = NULL,                                      /* Sales Tax Schedule */
@I_vIV40700_PCTAXSCH CHAR(15) = NULL,                                      /* Purchases Tax Schedule */
@I_vIV40700_INCLDDINPLNNNG TINYINT = NULL,                                 /* Included in Planning */
@I_vIV40700_PORECEIPTBIN CHAR(15) = NULL,                                  /* Purchase Receipt Bin */
@I_vIV40700_PORETRNBIN CHAR(15) = NULL,                                    /* Purchase Returns Bin */
@I_vIV40700_SOFULFILLMENTBIN CHAR(15) = NULL,                              /* SO Fulfillment Bin */
@I_vIV40700_SORETURNBIN CHAR(15) = NULL,                                   /* SO Return Bin */
@I_vIV40700_BOMRCPTBIN CHAR(15) = NULL,                                    /* BOM Receipt Bin */
@I_vIV40700_MATERIALISSUEBIN CHAR(15) = NULL,                              /* Material Issues Bin */
@I_vIV40700_MORECEIPTBIN CHAR(15) = NULL,                                  /* MO Receipt Bin */
@I_vIV40700_REPAIRISSUESBIN CHAR(15) = NULL,                               /* Repair Issues Bin */
@I_vIV40700_WMSINT TINYINT = NULL,                                         /* WMS Integration */
@I_vIV40700_PICKTICKETSITEOPT SMALLINT = NULL,                             /* Picking Ticket Site Option */
@I_vIV40700_BINBREAK SMALLINT = NULL,                                      /* Bin Break */
@I_vIV40700_CCode CHAR(7) = NULL,                                          /* Country Code */
@I_vIV40700_DECLID CHAR(15) = NULL,                                        /* Declarant ID */
@I_vIV40700_INACTIVE TINYINT = NULL,                                       /* Inactive */
@I_vUpdateIfExists INT = NULL,                                             /* Update if exists */
@O_iErrorState INT OUTPUT,                                                 /* Return value:  0=No Errors, 1=Error Occurred */
@oErrString VARCHAR(255) OUTPUT                                            /* Return Error Code List */

AS

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET NOCOUNT ON

DECLARE
     @B4640700_LOCNCODE CHAR(11),
     @B4640700_BSSI_PortfolioID CHAR(25),
     @B4640700_SALSTERR CHAR(15),
     @B4640700_BSSI_Site_TypeID CHAR(25),
     @B4640700_BSSI_Structure_TypeID CHAR(25),
     @B4640700_BSSI_Site_Status SMALLINT,
     @B4640700_BSSI_Site_Class_ID CHAR(15),
     @B4640700_BSSI_Site_Acquisition_Da DATETIME,
     @B4640700_BSSI_Real_Estate_ID CHAR(25),
     @B4640700_BSSI_Latitude SMALLINT,
     @B4640700_BSSI_Latitude_Degree_Dec NUMERIC(19,9),
     @B4640700_BSSI_Latitude_Min SMALLINT,
     @B4640700_BSSI_Latitude_Sec NUMERIC(19,5),
     @B4640700_BSSI_Longitude SMALLINT,
     @B4640700_BSSI_Longitude_Degree_De NUMERIC(19,9),
     @B4640700_BSSI_longitudeMin SMALLINT,
     @B4640700_BSSI_longitudeSec NUMERIC(19,5),
     @B4640700_BSSI_Rev_Share SMALLINT,
     @B4640700_BSSI_Site_Class_Of_ID CHAR(25),
     @B4640700_BSSI_Construction_Date DATETIME,
     @B4640700_BSSI_UnitClass_ID CHAR(25),
     @B4640700_BSSI_WingID CHAR(25),
     @B4640700_BSSI_FloorID CHAR(25),
     @B4640700_BSSI_OccupancyTypeID CHAR(25),
     @B4640700_BSSI_IsInterior SMALLINT,
     @B4640700_BSSI_MasterSiteID CHAR(11),
     @B4640700_BSSI_BeginDate DATETIME,
     @B4640700_ENDDATE DATETIME,
     @B4640700_BSSI_Ground_Space VARCHAR(MAX),
     @B4640712_LOCNCODE CHAR(11),
     @B4640712_BSSI_Site_Reference CHAR(25),
     @B4640712_BSSI_Site_Floor_Level CHAR(15),
     @B4640712_BSSI_Occupancy_Type SMALLINT,
     @B4640712_BSSI_Renovation_Date DATETIME,
     @B4640712_BSSI_Total_Sq_Meters NUMERIC(19,5),
     @B4640712_BSSI_Total_Leasable_Sq_M NUMERIC(19,5),
     @B4640712_BSSI_Rent_By_Sq_Meter NUMERIC(19,5),
     @B4640712_BSSI_Total_Sq_Ft NUMERIC(19,5),
     @B4640712_BSSI_Total_Leasable_Sq_F NUMERIC(19,5),
     @B4640712_BSSI_Rent_By_Sq_Feet NUMERIC(19,5),
     @B4640712_BSSI_nMarketRent NUMERIC(19,5),
     @B4640712_NOTEINDX NUMERIC(19,5),
     @IV40700_LOCNCODE CHAR(11),
     @IV40700_LOCNDSCR CHAR(31),
     @IV40700_NOTEINDX NUMERIC(19,5),
     @IV40700_ADDRESS1 CHAR(61),
     @IV40700_ADDRESS2 CHAR(61),
     @IV40700_ADDRESS3 CHAR(61),
     @IV40700_CITY CHAR(35),
     @IV40700_STATE CHAR(29),
     @IV40700_ZIPCODE CHAR(11),
     @IV40700_COUNTRY CHAR(61),
     @IV40700_PHONE1 CHAR(21),
     @IV40700_PHONE2 CHAR(21),
     @IV40700_PHONE3 CHAR(21),
     @IV40700_FAXNUMBR CHAR(21),
     @IV40700_Location_Segment CHAR(67),
     @IV40700_STAXSCHD CHAR(15),
     @IV40700_PCTAXSCH CHAR(15),
     @IV40700_INCLDDINPLNNNG TINYINT,
     @IV40700_PORECEIPTBIN CHAR(15),
     @IV40700_PORETRNBIN CHAR(15),
     @IV40700_SOFULFILLMENTBIN CHAR(15),
     @IV40700_SORETURNBIN CHAR(15),
     @IV40700_BOMRCPTBIN CHAR(15),
     @IV40700_MATERIALISSUEBIN CHAR(15),
     @IV40700_MORECEIPTBIN CHAR(15),
     @IV40700_REPAIRISSUESBIN CHAR(15),
     @IV40700_WMSINT TINYINT,
     @IV40700_PICKTICKETSITEOPT SMALLINT,
     @IV40700_BINBREAK SMALLINT,
     @IV40700_CCode CHAR(7),
     @IV40700_DECLID CHAR(15),
     @IV40700_INACTIVE TINYINT,
     @iStatus INT,
     @O_oErrorState INT,
     @iCustomState INT,
     @iError INT,
     @E1_noAction INT,
     @UpdateIfExists INT
/***** Initialize locals *****/
SELECT @B4640700_LOCNCODE = '',
     @B4640700_BSSI_PortfolioID = '',
     @B4640700_SALSTERR = '',
     @B4640700_BSSI_Site_TypeID = '',
     @B4640700_BSSI_Structure_TypeID = '',
     @B4640700_BSSI_Site_Status = 0,
     @B4640700_BSSI_Site_Class_ID = '',
     @B4640700_BSSI_Site_Acquisition_Da = '1/1/1900 00:00:00',
     @B4640700_BSSI_Real_Estate_ID = '',
     @B4640700_BSSI_Latitude = 0,
     @B4640700_BSSI_Latitude_Degree_Dec = 0,
     @B4640700_BSSI_Latitude_Min = 0,
     @B4640700_BSSI_Latitude_Sec = 0,
     @B4640700_BSSI_Longitude = 0,
     @B4640700_BSSI_Longitude_Degree_De = 0,
     @B4640700_BSSI_longitudeMin = 0,
     @B4640700_BSSI_longitudeSec = 0,
     @B4640700_BSSI_Rev_Share = 0,
     @B4640700_BSSI_Site_Class_Of_ID = '',
     @B4640700_BSSI_Construction_Date = '1/1/1900 00:00:00',
     @B4640700_BSSI_UnitClass_ID = '',
     @B4640700_BSSI_WingID = '',
     @B4640700_BSSI_FloorID = '',
     @B4640700_BSSI_OccupancyTypeID = '',
     @B4640700_BSSI_IsInterior = 0,
     @B4640700_BSSI_MasterSiteID = '',
     @B4640700_BSSI_BeginDate = '1/1/1900 00:00:00',
     @B4640700_ENDDATE = '1/1/1900 00:00:00',
     @B4640700_BSSI_Ground_Space = '',
     @B4640712_LOCNCODE = '',
     @B4640712_BSSI_Site_Reference = '',
     @B4640712_BSSI_Site_Floor_Level = '',
     @B4640712_BSSI_Occupancy_Type = 0,
     @B4640712_BSSI_Renovation_Date = '1/1/1900 00:00:00',
     @B4640712_BSSI_Total_Sq_Meters = 0,
     @B4640712_BSSI_Total_Leasable_Sq_M = 0,
     @B4640712_BSSI_Rent_By_Sq_Meter = 0,
     @B4640712_BSSI_Total_Sq_Ft = 0,
     @B4640712_BSSI_Total_Leasable_Sq_F = 0,
     @B4640712_BSSI_Rent_By_Sq_Feet = 0,
     @B4640712_BSSI_nMarketRent = 0,
     @B4640712_NOTEINDX = 0,
     @IV40700_LOCNCODE = '',
     @IV40700_LOCNDSCR = '',
     @IV40700_NOTEINDX = 0,
     @IV40700_ADDRESS1 = '',
     @IV40700_ADDRESS2 = '',
     @IV40700_ADDRESS3 = '',
     @IV40700_CITY = '',
     @IV40700_STATE = '',
     @IV40700_ZIPCODE = '',
     @IV40700_COUNTRY = '',
     @IV40700_PHONE1 = '',
     @IV40700_PHONE2 = '',
     @IV40700_PHONE3 = '',
     @IV40700_FAXNUMBR = '',
     @IV40700_Location_Segment = '',
     @IV40700_STAXSCHD = '',
     @IV40700_PCTAXSCH = '',
     @IV40700_INCLDDINPLNNNG = 0,
     @IV40700_PORECEIPTBIN = '',
     @IV40700_PORETRNBIN = '',
     @IV40700_SOFULFILLMENTBIN = '',
     @IV40700_SORETURNBIN = '',
     @IV40700_BOMRCPTBIN = '',
     @IV40700_MATERIALISSUEBIN = '',
     @IV40700_MORECEIPTBIN = '',
     @IV40700_REPAIRISSUESBIN = '',
     @IV40700_WMSINT = 0,
     @IV40700_PICKTICKETSITEOPT = 0,
     @IV40700_BINBREAK = 0,
     @IV40700_CCode = '',
     @IV40700_DECLID = '',
     @IV40700_INACTIVE = 0,
     @iStatus = 0,
     @O_iErrorState = 0,
     @O_oErrorState = 0,
     @iCustomState = 0,
     @iError = 0,
     @E1_noAction = 0,
     @UpdateIfExists = 0
/***** Set Existing *****/
IF EXISTS(SELECT 1 FROM [B4640700] (NOLOCK) WHERE [LOCNCODE] = @I_vLOCNCODE)
BEGIN
  SELECT @B4640700_LOCNCODE = [LOCNCODE],
     @B4640700_BSSI_PortfolioID = [BSSI_PortfolioID],
     @B4640700_SALSTERR = [SALSTERR],
     @B4640700_BSSI_Site_TypeID = [BSSI_Site_TypeID],
     @B4640700_BSSI_Structure_TypeID = [BSSI_Structure_TypeID],
     @B4640700_BSSI_Site_Status = [BSSI_Site_Status],
     @B4640700_BSSI_Site_Class_ID = [BSSI_Site_Class_ID],
     @B4640700_BSSI_Site_Acquisition_Da = [BSSI_Site_Acquisition_Da],
     @B4640700_BSSI_Real_Estate_ID = [BSSI_Real_Estate_ID],
     @B4640700_BSSI_Latitude = [BSSI_Latitude],
     @B4640700_BSSI_Latitude_Degree_Dec = [BSSI_Latitude_Degree_Dec],
     @B4640700_BSSI_Latitude_Min = [BSSI_Latitude_Min],
     @B4640700_BSSI_Latitude_Sec = [BSSI_Latitude_Sec],
     @B4640700_BSSI_Longitude = [BSSI_Longitude],
     @B4640700_BSSI_Longitude_Degree_De = [BSSI_Longitude_Degree_De],
     @B4640700_BSSI_longitudeMin = [BSSI_longitudeMin],
     @B4640700_BSSI_longitudeSec = [BSSI_longitudeSec],
     @B4640700_BSSI_Rev_Share = [BSSI_Rev_Share],
     @B4640700_BSSI_Site_Class_Of_ID = [BSSI_Site_Class_Of_ID],
     @B4640700_BSSI_Construction_Date = [BSSI_Construction_Date],
     @B4640700_BSSI_UnitClass_ID = [BSSI_UnitClass_ID],
     @B4640700_BSSI_WingID = [BSSI_WingID],
     @B4640700_BSSI_FloorID = [BSSI_FloorID],
     @B4640700_BSSI_OccupancyTypeID = [BSSI_OccupancyTypeID],
     @B4640700_BSSI_IsInterior = [BSSI_IsInterior],
     @B4640700_BSSI_MasterSiteID = [BSSI_MasterSiteID],
     @B4640700_BSSI_BeginDate = [BSSI_BeginDate],
     @B4640700_ENDDATE = [ENDDATE],
     @B4640700_BSSI_Ground_Space = [BSSI_Ground_Space]
 FROM [B4640700] (NOLOCK)
 WHERE [LOCNCODE] = @I_vLOCNCODE
END

/***** Set Existing *****/
IF EXISTS(SELECT 1 FROM [B4640712] (NOLOCK) WHERE [LOCNCODE] = @I_vLOCNCODE)
BEGIN
  SELECT @B4640712_LOCNCODE = [LOCNCODE],
     @B4640712_BSSI_Site_Reference = [BSSI_Site_Reference],
     @B4640712_BSSI_Site_Floor_Level = [BSSI_Site_Floor_Level],
     @B4640712_BSSI_Occupancy_Type = [BSSI_Occupancy_Type],
     @B4640712_BSSI_Renovation_Date = [BSSI_Renovation_Date],
     @B4640712_BSSI_Total_Sq_Meters = [BSSI_Total_Sq_Meters],
     @B4640712_BSSI_Total_Leasable_Sq_M = [BSSI_Total_Leasable_Sq_M],
     @B4640712_BSSI_Rent_By_Sq_Meter = [BSSI_Rent_By_Sq_Meter],
     @B4640712_BSSI_Total_Sq_Ft = [BSSI_Total_Sq_Ft],
     @B4640712_BSSI_Total_Leasable_Sq_F = [BSSI_Total_Leasable_Sq_F],
     @B4640712_BSSI_Rent_By_Sq_Feet = [BSSI_Rent_By_Sq_Feet],
     @B4640712_BSSI_nMarketRent = [BSSI_nMarketRent],
     @B4640712_NOTEINDX = [NOTEINDX]
 FROM [B4640712] (NOLOCK)
 WHERE [LOCNCODE] = @I_vLOCNCODE
END

/***** Set Existing *****/
IF EXISTS(SELECT 1 FROM [IV40700] (NOLOCK) WHERE [LOCNCODE] = @I_vLOCNCODE)
BEGIN
  SELECT @IV40700_LOCNCODE = [LOCNCODE],
     @IV40700_LOCNDSCR = [LOCNDSCR],
     @IV40700_NOTEINDX = [NOTEINDX],
     @IV40700_ADDRESS1 = [ADDRESS1],
     @IV40700_ADDRESS2 = [ADDRESS2],
     @IV40700_ADDRESS3 = [ADDRESS3],
     @IV40700_CITY = [CITY],
     @IV40700_STATE = [STATE],
     @IV40700_ZIPCODE = [ZIPCODE],
     @IV40700_COUNTRY = [COUNTRY],
     @IV40700_PHONE1 = [PHONE1],
     @IV40700_PHONE2 = [PHONE2],
     @IV40700_PHONE3 = [PHONE3],
     @IV40700_FAXNUMBR = [FAXNUMBR],
     @IV40700_Location_Segment = [Location_Segment],
     @IV40700_STAXSCHD = [STAXSCHD],
     @IV40700_PCTAXSCH = [PCTAXSCH],
     @IV40700_INCLDDINPLNNNG = [INCLDDINPLNNNG],
     @IV40700_PORECEIPTBIN = [PORECEIPTBIN],
     @IV40700_PORETRNBIN = [PORETRNBIN],
     @IV40700_SOFULFILLMENTBIN = [SOFULFILLMENTBIN],
     @IV40700_SORETURNBIN = [SORETURNBIN],
     @IV40700_BOMRCPTBIN = [BOMRCPTBIN],
     @IV40700_MATERIALISSUEBIN = [MATERIALISSUEBIN],
     @IV40700_MORECEIPTBIN = [MORECEIPTBIN],
     @IV40700_REPAIRISSUESBIN = [REPAIRISSUESBIN],
     @IV40700_WMSINT = [WMSINT],
     @IV40700_PICKTICKETSITEOPT = [PICKTICKETSITEOPT],
     @IV40700_BINBREAK = [BINBREAK],
     @IV40700_CCode = [CCode],
     @IV40700_DECLID = [DECLID],
     @IV40700_INACTIVE = [INACTIVE]
 FROM [IV40700] (NOLOCK)
 WHERE [LOCNCODE] = @I_vLOCNCODE
END

/***** Set Fields with Defaults *****/
SELECT @UpdateIfExists = 0

/***** Call Pre Proc *****/
EXEC @iStatus = E1_TLE_BS_UNITPre
     @I_vLOCNCODE OUTPUT,
     @I_vB4640700_BSSI_PortfolioID OUTPUT,
     @I_vB4640700_SALSTERR OUTPUT,
     @I_vB4640700_BSSI_Site_TypeID OUTPUT,
     @I_vB4640700_BSSI_Structure_TypeID OUTPUT,
     @I_vB4640700_BSSI_Site_Status OUTPUT,
     @I_vB4640700_BSSI_Site_Class_ID OUTPUT,
     @I_vB4640700_BSSI_Site_Acquisition_Da OUTPUT,
     @I_vB4640700_BSSI_Real_Estate_ID OUTPUT,
     @I_vB4640700_BSSI_Latitude OUTPUT,
     @I_vB4640700_BSSI_Latitude_Degree_Dec OUTPUT,
     @I_vB4640700_BSSI_Latitude_Min OUTPUT,
     @I_vB4640700_BSSI_Latitude_Sec OUTPUT,
     @I_vB4640700_BSSI_Longitude OUTPUT,
     @I_vB4640700_BSSI_Longitude_Degree_De OUTPUT,
     @I_vB4640700_BSSI_longitudeMin OUTPUT,
     @I_vB4640700_BSSI_longitudeSec OUTPUT,
     @I_vB4640700_BSSI_Rev_Share OUTPUT,
     @I_vB4640700_BSSI_Site_Class_Of_ID OUTPUT,
     @I_vB4640700_BSSI_Construction_Date OUTPUT,
     @I_vB4640700_BSSI_UnitClass_ID OUTPUT,
     @I_vB4640700_BSSI_WingID OUTPUT,
     @I_vB4640700_BSSI_FloorID OUTPUT,
     @I_vB4640700_BSSI_OccupancyTypeID OUTPUT,
     @I_vB4640700_BSSI_IsInterior OUTPUT,
     @I_vB4640700_BSSI_MasterSiteID OUTPUT,
     @I_vB4640700_BSSI_BeginDate OUTPUT,
     @I_vB4640700_ENDDATE OUTPUT,
     @I_vB4640700_BSSI_Ground_Space OUTPUT,
     @I_vB4640712_BSSI_Site_Reference OUTPUT,
     @I_vB4640712_BSSI_Site_Floor_Level OUTPUT,
     @I_vB4640712_BSSI_Occupancy_Type OUTPUT,
     @I_vB4640712_BSSI_Renovation_Date OUTPUT,
     @I_vB4640712_BSSI_Total_Sq_Meters OUTPUT,
     @I_vB4640712_BSSI_Total_Leasable_Sq_M OUTPUT,
     @I_vB4640712_BSSI_Rent_By_Sq_Meter OUTPUT,
     @I_vB4640712_BSSI_Total_Sq_Ft OUTPUT,
     @I_vB4640712_BSSI_Total_Leasable_Sq_F OUTPUT,
     @I_vB4640712_BSSI_Rent_By_Sq_Feet OUTPUT,
     @I_vB4640712_BSSI_nMarketRent OUTPUT,
     @I_vB4640712_NOTEINDX OUTPUT,
     @I_vIV40700_LOCNDSCR OUTPUT,
     @I_vIV40700_NOTEINDX OUTPUT,
     @I_vIV40700_ADDRESS1 OUTPUT,
     @I_vIV40700_ADDRESS2 OUTPUT,
     @I_vIV40700_ADDRESS3 OUTPUT,
     @I_vIV40700_CITY OUTPUT,
     @I_vIV40700_STATE OUTPUT,
     @I_vIV40700_ZIPCODE OUTPUT,
     @I_vIV40700_COUNTRY OUTPUT,
     @I_vIV40700_PHONE1 OUTPUT,
     @I_vIV40700_PHONE2 OUTPUT,
     @I_vIV40700_PHONE3 OUTPUT,
     @I_vIV40700_FAXNUMBR OUTPUT,
     @I_vIV40700_Location_Segment OUTPUT,
     @I_vIV40700_STAXSCHD OUTPUT,
     @I_vIV40700_PCTAXSCH OUTPUT,
     @I_vIV40700_INCLDDINPLNNNG OUTPUT,
     @I_vIV40700_PORECEIPTBIN OUTPUT,
     @I_vIV40700_PORETRNBIN OUTPUT,
     @I_vIV40700_SOFULFILLMENTBIN OUTPUT,
     @I_vIV40700_SORETURNBIN OUTPUT,
     @I_vIV40700_BOMRCPTBIN OUTPUT,
     @I_vIV40700_MATERIALISSUEBIN OUTPUT,
     @I_vIV40700_MORECEIPTBIN OUTPUT,
     @I_vIV40700_REPAIRISSUESBIN OUTPUT,
     @I_vIV40700_WMSINT OUTPUT,
     @I_vIV40700_PICKTICKETSITEOPT OUTPUT,
     @I_vIV40700_BINBREAK OUTPUT,
     @I_vIV40700_CCode OUTPUT,
     @I_vIV40700_DECLID OUTPUT,
     @I_vIV40700_INACTIVE OUTPUT,
     @I_vUpdateIfExists OUTPUT,
     @O_iErrorState = @iCustomState OUTPUT,
     @oErrString = @oErrString OUTPUT

SELECT @iError = @@error

IF @iStatus = 0 AND @iError <> 0
BEGIN
     SELECT @iStatus = @iError
END

IF (@iStatus <> 0) or (@iCustomState <> 0)
BEGIN
     SELECT @O_iErrorState = 42510/* Pre Custom Business Logic for E1_TLE_BS_UNITPre returned an error value */
     EXEC @iStatus = taUpdateString
          @O_iErrorState,
          @oErrString,
          @oErrString OUTPUT,
          @O_oErrorState OUTPUT
     RETURN (@O_iErrorState)

END

/***** Set Input Values *****/
IF @I_vLOCNCODE IS NOT NULL
     BEGIN
          SELECT @B4640700_LOCNCODE = @I_vLOCNCODE
     END
IF @I_vB4640700_BSSI_PortfolioID IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_PortfolioID = @I_vB4640700_BSSI_PortfolioID
     END
IF @I_vB4640700_SALSTERR IS NOT NULL
     BEGIN
          SELECT @B4640700_SALSTERR = @I_vB4640700_SALSTERR
     END
IF @I_vB4640700_BSSI_Site_TypeID IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Site_TypeID = @I_vB4640700_BSSI_Site_TypeID
     END
IF @I_vB4640700_BSSI_Structure_TypeID IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Structure_TypeID = @I_vB4640700_BSSI_Structure_TypeID
     END
IF @I_vB4640700_BSSI_Site_Status IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Site_Status = @I_vB4640700_BSSI_Site_Status
     END
IF @I_vB4640700_BSSI_Site_Class_ID IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Site_Class_ID = @I_vB4640700_BSSI_Site_Class_ID
     END
IF @I_vB4640700_BSSI_Site_Acquisition_Da IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Site_Acquisition_Da = @I_vB4640700_BSSI_Site_Acquisition_Da
     END
IF @I_vB4640700_BSSI_Real_Estate_ID IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Real_Estate_ID = @I_vB4640700_BSSI_Real_Estate_ID
     END
IF @I_vB4640700_BSSI_Latitude IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Latitude = @I_vB4640700_BSSI_Latitude
     END
IF @I_vB4640700_BSSI_Latitude_Degree_Dec IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Latitude_Degree_Dec = @I_vB4640700_BSSI_Latitude_Degree_Dec
     END
IF @I_vB4640700_BSSI_Latitude_Min IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Latitude_Min = @I_vB4640700_BSSI_Latitude_Min
     END
IF @I_vB4640700_BSSI_Latitude_Sec IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Latitude_Sec = @I_vB4640700_BSSI_Latitude_Sec
     END
IF @I_vB4640700_BSSI_Longitude IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Longitude = @I_vB4640700_BSSI_Longitude
     END
IF @I_vB4640700_BSSI_Longitude_Degree_De IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Longitude_Degree_De = @I_vB4640700_BSSI_Longitude_Degree_De
     END
IF @I_vB4640700_BSSI_longitudeMin IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_longitudeMin = @I_vB4640700_BSSI_longitudeMin
     END
IF @I_vB4640700_BSSI_longitudeSec IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_longitudeSec = @I_vB4640700_BSSI_longitudeSec
     END
IF @I_vB4640700_BSSI_Rev_Share IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Rev_Share = @I_vB4640700_BSSI_Rev_Share
     END
IF @I_vB4640700_BSSI_Site_Class_Of_ID IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Site_Class_Of_ID = @I_vB4640700_BSSI_Site_Class_Of_ID
     END
IF @I_vB4640700_BSSI_Construction_Date IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Construction_Date = @I_vB4640700_BSSI_Construction_Date
     END
IF @I_vB4640700_BSSI_UnitClass_ID IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_UnitClass_ID = @I_vB4640700_BSSI_UnitClass_ID
     END
IF @I_vB4640700_BSSI_WingID IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_WingID = @I_vB4640700_BSSI_WingID
     END
IF @I_vB4640700_BSSI_FloorID IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_FloorID = @I_vB4640700_BSSI_FloorID
     END
IF @I_vB4640700_BSSI_OccupancyTypeID IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_OccupancyTypeID = @I_vB4640700_BSSI_OccupancyTypeID
     END
IF @I_vB4640700_BSSI_IsInterior IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_IsInterior = @I_vB4640700_BSSI_IsInterior
     END
IF @I_vB4640700_BSSI_MasterSiteID IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_MasterSiteID = @I_vB4640700_BSSI_MasterSiteID
     END
IF @I_vB4640700_BSSI_BeginDate IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_BeginDate = @I_vB4640700_BSSI_BeginDate
     END
IF @I_vB4640700_ENDDATE IS NOT NULL
     BEGIN
          SELECT @B4640700_ENDDATE = @I_vB4640700_ENDDATE
     END
IF @I_vB4640700_BSSI_Ground_Space IS NOT NULL
     BEGIN
          SELECT @B4640700_BSSI_Ground_Space = @I_vB4640700_BSSI_Ground_Space
     END
IF @I_vLOCNCODE IS NOT NULL
     BEGIN
          SELECT @B4640712_LOCNCODE = @I_vLOCNCODE
     END
IF @I_vB4640712_BSSI_Site_Reference IS NOT NULL
     BEGIN
          SELECT @B4640712_BSSI_Site_Reference = @I_vB4640712_BSSI_Site_Reference
     END
IF @I_vB4640712_BSSI_Site_Floor_Level IS NOT NULL
     BEGIN
          SELECT @B4640712_BSSI_Site_Floor_Level = @I_vB4640712_BSSI_Site_Floor_Level
     END
IF @I_vB4640712_BSSI_Occupancy_Type IS NOT NULL
     BEGIN
          SELECT @B4640712_BSSI_Occupancy_Type = @I_vB4640712_BSSI_Occupancy_Type
     END
IF @I_vB4640712_BSSI_Renovation_Date IS NOT NULL
     BEGIN
          SELECT @B4640712_BSSI_Renovation_Date = @I_vB4640712_BSSI_Renovation_Date
     END
IF @I_vB4640712_BSSI_Total_Sq_Meters IS NOT NULL
     BEGIN
          SELECT @B4640712_BSSI_Total_Sq_Meters = @I_vB4640712_BSSI_Total_Sq_Meters
     END
IF @I_vB4640712_BSSI_Total_Leasable_Sq_M IS NOT NULL
     BEGIN
          SELECT @B4640712_BSSI_Total_Leasable_Sq_M = @I_vB4640712_BSSI_Total_Leasable_Sq_M
     END
IF @I_vB4640712_BSSI_Rent_By_Sq_Meter IS NOT NULL
     BEGIN
          SELECT @B4640712_BSSI_Rent_By_Sq_Meter = @I_vB4640712_BSSI_Rent_By_Sq_Meter
     END
IF @I_vB4640712_BSSI_Total_Sq_Ft IS NOT NULL
     BEGIN
          SELECT @B4640712_BSSI_Total_Sq_Ft = @I_vB4640712_BSSI_Total_Sq_Ft
     END
IF @I_vB4640712_BSSI_Total_Leasable_Sq_F IS NOT NULL
     BEGIN
          SELECT @B4640712_BSSI_Total_Leasable_Sq_F = @I_vB4640712_BSSI_Total_Leasable_Sq_F
     END
IF @I_vB4640712_BSSI_Rent_By_Sq_Feet IS NOT NULL
     BEGIN
          SELECT @B4640712_BSSI_Rent_By_Sq_Feet = @I_vB4640712_BSSI_Rent_By_Sq_Feet
     END
IF @I_vB4640712_BSSI_nMarketRent IS NOT NULL
     BEGIN
          SELECT @B4640712_BSSI_nMarketRent = @I_vB4640712_BSSI_nMarketRent
     END
IF @I_vB4640712_NOTEINDX IS NOT NULL
     BEGIN
          SELECT @B4640712_NOTEINDX = @I_vB4640712_NOTEINDX
     END
IF @I_vLOCNCODE IS NOT NULL
     BEGIN
          SELECT @IV40700_LOCNCODE = @I_vLOCNCODE
     END
IF @I_vIV40700_LOCNDSCR IS NOT NULL
     BEGIN
          SELECT @IV40700_LOCNDSCR = @I_vIV40700_LOCNDSCR
     END
IF @I_vIV40700_NOTEINDX IS NOT NULL
     BEGIN
          SELECT @IV40700_NOTEINDX = @I_vIV40700_NOTEINDX
     END
IF @I_vIV40700_ADDRESS1 IS NOT NULL
     BEGIN
          SELECT @IV40700_ADDRESS1 = @I_vIV40700_ADDRESS1
     END
IF @I_vIV40700_ADDRESS2 IS NOT NULL
     BEGIN
          SELECT @IV40700_ADDRESS2 = @I_vIV40700_ADDRESS2
     END
IF @I_vIV40700_ADDRESS3 IS NOT NULL
     BEGIN
          SELECT @IV40700_ADDRESS3 = @I_vIV40700_ADDRESS3
     END
IF @I_vIV40700_CITY IS NOT NULL
     BEGIN
          SELECT @IV40700_CITY = @I_vIV40700_CITY
     END
IF @I_vIV40700_STATE IS NOT NULL
     BEGIN
          SELECT @IV40700_STATE = @I_vIV40700_STATE
     END
IF @I_vIV40700_ZIPCODE IS NOT NULL
     BEGIN
          SELECT @IV40700_ZIPCODE = @I_vIV40700_ZIPCODE
     END
IF @I_vIV40700_COUNTRY IS NOT NULL
     BEGIN
          SELECT @IV40700_COUNTRY = @I_vIV40700_COUNTRY
     END
IF @I_vIV40700_PHONE1 IS NOT NULL
     BEGIN
          SELECT @IV40700_PHONE1 = @I_vIV40700_PHONE1
     END
IF @I_vIV40700_PHONE2 IS NOT NULL
     BEGIN
          SELECT @IV40700_PHONE2 = @I_vIV40700_PHONE2
     END
IF @I_vIV40700_PHONE3 IS NOT NULL
     BEGIN
          SELECT @IV40700_PHONE3 = @I_vIV40700_PHONE3
     END
IF @I_vIV40700_FAXNUMBR IS NOT NULL
     BEGIN
          SELECT @IV40700_FAXNUMBR = @I_vIV40700_FAXNUMBR
     END
IF @I_vIV40700_Location_Segment IS NOT NULL
     BEGIN
          SELECT @IV40700_Location_Segment = @I_vIV40700_Location_Segment
     END
IF @I_vIV40700_STAXSCHD IS NOT NULL
     BEGIN
          SELECT @IV40700_STAXSCHD = @I_vIV40700_STAXSCHD
     END
IF @I_vIV40700_PCTAXSCH IS NOT NULL
     BEGIN
          SELECT @IV40700_PCTAXSCH = @I_vIV40700_PCTAXSCH
     END
IF @I_vIV40700_INCLDDINPLNNNG IS NOT NULL
     BEGIN
          SELECT @IV40700_INCLDDINPLNNNG = @I_vIV40700_INCLDDINPLNNNG
     END
IF @I_vIV40700_PORECEIPTBIN IS NOT NULL
     BEGIN
          SELECT @IV40700_PORECEIPTBIN = @I_vIV40700_PORECEIPTBIN
     END
IF @I_vIV40700_PORETRNBIN IS NOT NULL
     BEGIN
          SELECT @IV40700_PORETRNBIN = @I_vIV40700_PORETRNBIN
     END
IF @I_vIV40700_SOFULFILLMENTBIN IS NOT NULL
     BEGIN
          SELECT @IV40700_SOFULFILLMENTBIN = @I_vIV40700_SOFULFILLMENTBIN
     END
IF @I_vIV40700_SORETURNBIN IS NOT NULL
     BEGIN
          SELECT @IV40700_SORETURNBIN = @I_vIV40700_SORETURNBIN
     END
IF @I_vIV40700_BOMRCPTBIN IS NOT NULL
     BEGIN
          SELECT @IV40700_BOMRCPTBIN = @I_vIV40700_BOMRCPTBIN
     END
IF @I_vIV40700_MATERIALISSUEBIN IS NOT NULL
     BEGIN
          SELECT @IV40700_MATERIALISSUEBIN = @I_vIV40700_MATERIALISSUEBIN
     END
IF @I_vIV40700_MORECEIPTBIN IS NOT NULL
     BEGIN
          SELECT @IV40700_MORECEIPTBIN = @I_vIV40700_MORECEIPTBIN
     END
IF @I_vIV40700_REPAIRISSUESBIN IS NOT NULL
     BEGIN
          SELECT @IV40700_REPAIRISSUESBIN = @I_vIV40700_REPAIRISSUESBIN
     END
IF @I_vIV40700_WMSINT IS NOT NULL
     BEGIN
          SELECT @IV40700_WMSINT = @I_vIV40700_WMSINT
     END
IF @I_vIV40700_PICKTICKETSITEOPT IS NOT NULL
     BEGIN
          SELECT @IV40700_PICKTICKETSITEOPT = @I_vIV40700_PICKTICKETSITEOPT
     END
IF @I_vIV40700_BINBREAK IS NOT NULL
     BEGIN
          SELECT @IV40700_BINBREAK = @I_vIV40700_BINBREAK
     END
IF @I_vIV40700_CCode IS NOT NULL
     BEGIN
          SELECT @IV40700_CCode = @I_vIV40700_CCode
     END
IF @I_vIV40700_DECLID IS NOT NULL
     BEGIN
          SELECT @IV40700_DECLID = @I_vIV40700_DECLID
     END
IF @I_vIV40700_INACTIVE IS NOT NULL
     BEGIN
          SELECT @IV40700_INACTIVE = @I_vIV40700_INACTIVE
     END
IF @I_vUpdateIfExists IS NOT NULL
     BEGIN
          SELECT @UpdateIfExists = @I_vUpdateIfExists
     END

/***** Calculations *****/
IF ((@UpdateIfExists = '1'))
BEGIN
     IF (((SELECT TOP 1 1 FROM [B4640700] (NOLOCK) WHERE ([LOCNCODE] = @B4640700_LOCNCODE) ) IS NULL OR (SELECT TOP 1 1 FROM [B4640700] (NOLOCK) WHERE ([LOCNCODE] = @B4640700_LOCNCODE) ) = ''))
     BEGIN
               INSERT [B4640700]
                    (
                    [LOCNCODE],
                    [BSSI_PortfolioID],
                    [SALSTERR],
                    [BSSI_Site_TypeID],
                    [BSSI_Structure_TypeID],
                    [BSSI_Site_Status],
                    [BSSI_Site_Class_ID],
                    [BSSI_Site_Acquisition_Da],
                    [BSSI_Real_Estate_ID],
                    [BSSI_Latitude],
                    [BSSI_Latitude_Degree_Dec],
                    [BSSI_Latitude_Min],
                    [BSSI_Latitude_Sec],
                    [BSSI_Longitude],
                    [BSSI_Longitude_Degree_De],
                    [BSSI_longitudeMin],
                    [BSSI_longitudeSec],
                    [BSSI_Rev_Share],
                    [BSSI_Site_Class_Of_ID],
                    [BSSI_Construction_Date],
                    [BSSI_UnitClass_ID],
                    [BSSI_WingID],
                    [BSSI_FloorID],
                    [BSSI_OccupancyTypeID],
                    [BSSI_IsInterior],
                    [BSSI_MasterSiteID],
                    [BSSI_BeginDate],
                    [ENDDATE],
                    [BSSI_Ground_Space]
                    )
                    SELECT
                         @B4640700_LOCNCODE,
                         @B4640700_BSSI_PortfolioID,
                         @B4640700_SALSTERR,
                         @B4640700_BSSI_Site_TypeID,
                         @B4640700_BSSI_Structure_TypeID,
                         @B4640700_BSSI_Site_Status,
                         @B4640700_BSSI_Site_Class_ID,
                         @B4640700_BSSI_Site_Acquisition_Da,
                         @B4640700_BSSI_Real_Estate_ID,
                         @B4640700_BSSI_Latitude,
                         @B4640700_BSSI_Latitude_Degree_Dec,
                         @B4640700_BSSI_Latitude_Min,
                         @B4640700_BSSI_Latitude_Sec,
                         @B4640700_BSSI_Longitude,
                         @B4640700_BSSI_Longitude_Degree_De,
                         @B4640700_BSSI_longitudeMin,
                         @B4640700_BSSI_longitudeSec,
                         @B4640700_BSSI_Rev_Share,
                         @B4640700_BSSI_Site_Class_Of_ID,
                         @B4640700_BSSI_Construction_Date,
                         @B4640700_BSSI_UnitClass_ID,
                         @B4640700_BSSI_WingID,
                         @B4640700_BSSI_FloorID,
                         @B4640700_BSSI_OccupancyTypeID,
                         @B4640700_BSSI_IsInterior,
                         @B4640700_BSSI_MasterSiteID,
                         @B4640700_BSSI_BeginDate,
                         @B4640700_ENDDATE,
                         @B4640700_BSSI_Ground_Space
     END
     ELSE 
     BEGIN
               UPDATE [B4640700] SET
                    [BSSI_PortfolioID] = @B4640700_BSSI_PortfolioID,
                    [SALSTERR] = @B4640700_SALSTERR,
                    [BSSI_Site_TypeID] = @B4640700_BSSI_Site_TypeID,
                    [BSSI_Structure_TypeID] = @B4640700_BSSI_Structure_TypeID,
                    [BSSI_Site_Status] = @B4640700_BSSI_Site_Status,
                    [BSSI_Site_Class_ID] = @B4640700_BSSI_Site_Class_ID,
                    [BSSI_Site_Acquisition_Da] = @B4640700_BSSI_Site_Acquisition_Da,
                    [BSSI_Real_Estate_ID] = @B4640700_BSSI_Real_Estate_ID,
                    [BSSI_Latitude] = @B4640700_BSSI_Latitude,
                    [BSSI_Latitude_Degree_Dec] = @B4640700_BSSI_Latitude_Degree_Dec,
                    [BSSI_Latitude_Min] = @B4640700_BSSI_Latitude_Min,
                    [BSSI_Latitude_Sec] = @B4640700_BSSI_Latitude_Sec,
                    [BSSI_Longitude] = @B4640700_BSSI_Longitude,
                    [BSSI_Longitude_Degree_De] = @B4640700_BSSI_Longitude_Degree_De,
                    [BSSI_longitudeMin] = @B4640700_BSSI_longitudeMin,
                    [BSSI_longitudeSec] = @B4640700_BSSI_longitudeSec,
                    [BSSI_Rev_Share] = @B4640700_BSSI_Rev_Share,
                    [BSSI_Site_Class_Of_ID] = @B4640700_BSSI_Site_Class_Of_ID,
                    [BSSI_Construction_Date] = @B4640700_BSSI_Construction_Date,
                    [BSSI_UnitClass_ID] = @B4640700_BSSI_UnitClass_ID,
                    [BSSI_WingID] = @B4640700_BSSI_WingID,
                    [BSSI_FloorID] = @B4640700_BSSI_FloorID,
                    [BSSI_OccupancyTypeID] = @B4640700_BSSI_OccupancyTypeID,
                    [BSSI_IsInterior] = @B4640700_BSSI_IsInterior,
                    [BSSI_MasterSiteID] = @B4640700_BSSI_MasterSiteID,
                    [BSSI_BeginDate] = @B4640700_BSSI_BeginDate,
                    [ENDDATE] = @B4640700_ENDDATE,
                    [BSSI_Ground_Space] = @B4640700_BSSI_Ground_Space
                    WHERE [LOCNCODE] = @B4640700_LOCNCODE
     END
     IF (((SELECT TOP 1 1 FROM [B4640712] (NOLOCK) WHERE ([LOCNCODE] = @B4640712_LOCNCODE) ) IS NULL OR (SELECT TOP 1 1 FROM [B4640712] (NOLOCK) WHERE ([LOCNCODE] = @B4640712_LOCNCODE) ) = ''))
     BEGIN
               INSERT [B4640712]
                    (
                    [LOCNCODE],
                    [BSSI_Site_Reference],
                    [BSSI_Site_Floor_Level],
                    [BSSI_Occupancy_Type],
                    [BSSI_Renovation_Date],
                    [BSSI_Total_Sq_Meters],
                    [BSSI_Total_Leasable_Sq_M],
                    [BSSI_Rent_By_Sq_Meter],
                    [BSSI_Total_Sq_Ft],
                    [BSSI_Total_Leasable_Sq_F],
                    [BSSI_Rent_By_Sq_Feet],
                    [BSSI_nMarketRent],
                    [NOTEINDX]
                    )
                    SELECT
                         @B4640712_LOCNCODE,
                         @B4640712_BSSI_Site_Reference,
                         @B4640712_BSSI_Site_Floor_Level,
                         @B4640712_BSSI_Occupancy_Type,
                         @B4640712_BSSI_Renovation_Date,
                         @B4640712_BSSI_Total_Sq_Meters,
                         @B4640712_BSSI_Total_Leasable_Sq_M,
                         @B4640712_BSSI_Rent_By_Sq_Meter,
                         @B4640712_BSSI_Total_Sq_Ft,
                         @B4640712_BSSI_Total_Leasable_Sq_F,
                         @B4640712_BSSI_Rent_By_Sq_Feet,
                         @B4640712_BSSI_nMarketRent,
                         @B4640712_NOTEINDX
     END
     ELSE 
     BEGIN
               UPDATE [B4640712] SET
                    [BSSI_Site_Reference] = @B4640712_BSSI_Site_Reference,
                    [BSSI_Site_Floor_Level] = @B4640712_BSSI_Site_Floor_Level,
                    [BSSI_Occupancy_Type] = @B4640712_BSSI_Occupancy_Type,
                    [BSSI_Renovation_Date] = @B4640712_BSSI_Renovation_Date,
                    [BSSI_Total_Sq_Meters] = @B4640712_BSSI_Total_Sq_Meters,
                    [BSSI_Total_Leasable_Sq_M] = @B4640712_BSSI_Total_Leasable_Sq_M,
                    [BSSI_Rent_By_Sq_Meter] = @B4640712_BSSI_Rent_By_Sq_Meter,
                    [BSSI_Total_Sq_Ft] = @B4640712_BSSI_Total_Sq_Ft,
                    [BSSI_Total_Leasable_Sq_F] = @B4640712_BSSI_Total_Leasable_Sq_F,
                    [BSSI_Rent_By_Sq_Feet] = @B4640712_BSSI_Rent_By_Sq_Feet,
                    [BSSI_nMarketRent] = @B4640712_BSSI_nMarketRent,
                    [NOTEINDX] = @B4640712_NOTEINDX
                    WHERE [LOCNCODE] = @B4640712_LOCNCODE
     END
     IF (((SELECT TOP 1 1 FROM [IV40700] (NOLOCK) WHERE ([LOCNCODE] = @IV40700_LOCNCODE) ) IS NULL OR (SELECT TOP 1 1 FROM [IV40700] (NOLOCK) WHERE ([LOCNCODE] = @IV40700_LOCNCODE) ) = ''))
     BEGIN
               INSERT [IV40700]
                    (
                    [LOCNCODE],
                    [LOCNDSCR],
                    [NOTEINDX],
                    [ADDRESS1],
                    [ADDRESS2],
                    [ADDRESS3],
                    [CITY],
                    [STATE],
                    [ZIPCODE],
                    [COUNTRY],
                    [PHONE1],
                    [PHONE2],
                    [PHONE3],
                    [FAXNUMBR],
                    [Location_Segment],
                    [STAXSCHD],
                    [PCTAXSCH],
                    [INCLDDINPLNNNG],
                    [PORECEIPTBIN],
                    [PORETRNBIN],
                    [SOFULFILLMENTBIN],
                    [SORETURNBIN],
                    [BOMRCPTBIN],
                    [MATERIALISSUEBIN],
                    [MORECEIPTBIN],
                    [REPAIRISSUESBIN],
                    [WMSINT],
                    [PICKTICKETSITEOPT],
                    [BINBREAK],
                    [CCode],
                    [DECLID],
                    [INACTIVE]
                    )
                    SELECT
                         @IV40700_LOCNCODE,
                         @IV40700_LOCNDSCR,
                         @IV40700_NOTEINDX,
                         @IV40700_ADDRESS1,
                         @IV40700_ADDRESS2,
                         @IV40700_ADDRESS3,
                         @IV40700_CITY,
                         @IV40700_STATE,
                         @IV40700_ZIPCODE,
                         @IV40700_COUNTRY,
                         @IV40700_PHONE1,
                         @IV40700_PHONE2,
                         @IV40700_PHONE3,
                         @IV40700_FAXNUMBR,
                         @IV40700_Location_Segment,
                         @IV40700_STAXSCHD,
                         @IV40700_PCTAXSCH,
                         @IV40700_INCLDDINPLNNNG,
                         @IV40700_PORECEIPTBIN,
                         @IV40700_PORETRNBIN,
                         @IV40700_SOFULFILLMENTBIN,
                         @IV40700_SORETURNBIN,
                         @IV40700_BOMRCPTBIN,
                         @IV40700_MATERIALISSUEBIN,
                         @IV40700_MORECEIPTBIN,
                         @IV40700_REPAIRISSUESBIN,
                         @IV40700_WMSINT,
                         @IV40700_PICKTICKETSITEOPT,
                         @IV40700_BINBREAK,
                         @IV40700_CCode,
                         @IV40700_DECLID,
                         @IV40700_INACTIVE
     END
     ELSE 
     BEGIN
               UPDATE [IV40700] SET
                    [LOCNDSCR] = @IV40700_LOCNDSCR,
                    [NOTEINDX] = @IV40700_NOTEINDX,
                    [ADDRESS1] = @IV40700_ADDRESS1,
                    [ADDRESS2] = @IV40700_ADDRESS2,
                    [ADDRESS3] = @IV40700_ADDRESS3,
                    [CITY] = @IV40700_CITY,
                    [STATE] = @IV40700_STATE,
                    [ZIPCODE] = @IV40700_ZIPCODE,
                    [COUNTRY] = @IV40700_COUNTRY,
                    [PHONE1] = @IV40700_PHONE1,
                    [PHONE2] = @IV40700_PHONE2,
                    [PHONE3] = @IV40700_PHONE3,
                    [FAXNUMBR] = @IV40700_FAXNUMBR,
                    [Location_Segment] = @IV40700_Location_Segment,
                    [STAXSCHD] = @IV40700_STAXSCHD,
                    [PCTAXSCH] = @IV40700_PCTAXSCH,
                    [INCLDDINPLNNNG] = @IV40700_INCLDDINPLNNNG,
                    [PORECEIPTBIN] = @IV40700_PORECEIPTBIN,
                    [PORETRNBIN] = @IV40700_PORETRNBIN,
                    [SOFULFILLMENTBIN] = @IV40700_SOFULFILLMENTBIN,
                    [SORETURNBIN] = @IV40700_SORETURNBIN,
                    [BOMRCPTBIN] = @IV40700_BOMRCPTBIN,
                    [MATERIALISSUEBIN] = @IV40700_MATERIALISSUEBIN,
                    [MORECEIPTBIN] = @IV40700_MORECEIPTBIN,
                    [REPAIRISSUESBIN] = @IV40700_REPAIRISSUESBIN,
                    [WMSINT] = @IV40700_WMSINT,
                    [PICKTICKETSITEOPT] = @IV40700_PICKTICKETSITEOPT,
                    [BINBREAK] = @IV40700_BINBREAK,
                    [CCode] = @IV40700_CCode,
                    [DECLID] = @IV40700_DECLID,
                    [INACTIVE] = @IV40700_INACTIVE
                    WHERE [LOCNCODE] = @IV40700_LOCNCODE
     END
END
ELSE 
BEGIN
     IF (((SELECT TOP 1 1 FROM [B4640700] (NOLOCK) WHERE ([LOCNCODE] = @B4640700_LOCNCODE) ) IS NULL OR (SELECT TOP 1 1 FROM [B4640700] (NOLOCK) WHERE ([LOCNCODE] = @B4640700_LOCNCODE) ) = '') AND ((SELECT TOP 1 1 FROM [B4640712] (NOLOCK) WHERE ([LOCNCODE] = @B4640712_LOCNCODE) ) IS NULL OR (SELECT TOP 1 1 FROM [B4640712] (NOLOCK) WHERE ([LOCNCODE] = @B4640712_LOCNCODE) ) = '') AND ((SELECT TOP 1 1 FROM [IV40700] (NOLOCK) WHERE ([LOCNCODE] = @IV40700_LOCNCODE) ) IS NULL OR (SELECT TOP 1 1 FROM [IV40700] (NOLOCK) WHERE ([LOCNCODE] = @IV40700_LOCNCODE) ) = ''))
     BEGIN
               INSERT [B4640700]
                    (
                    [LOCNCODE],
                    [BSSI_PortfolioID],
                    [SALSTERR],
                    [BSSI_Site_TypeID],
                    [BSSI_Structure_TypeID],
                    [BSSI_Site_Status],
                    [BSSI_Site_Class_ID],
                    [BSSI_Site_Acquisition_Da],
                    [BSSI_Real_Estate_ID],
                    [BSSI_Latitude],
                    [BSSI_Latitude_Degree_Dec],
                    [BSSI_Latitude_Min],
                    [BSSI_Latitude_Sec],
                    [BSSI_Longitude],
                    [BSSI_Longitude_Degree_De],
                    [BSSI_longitudeMin],
                    [BSSI_longitudeSec],
                    [BSSI_Rev_Share],
                    [BSSI_Site_Class_Of_ID],
                    [BSSI_Construction_Date],
                    [BSSI_UnitClass_ID],
                    [BSSI_WingID],
                    [BSSI_FloorID],
                    [BSSI_OccupancyTypeID],
                    [BSSI_IsInterior],
                    [BSSI_MasterSiteID],
                    [BSSI_BeginDate],
                    [ENDDATE],
                    [BSSI_Ground_Space]
                    )
                    SELECT
                         @B4640700_LOCNCODE,
                         @B4640700_BSSI_PortfolioID,
                         @B4640700_SALSTERR,
                         @B4640700_BSSI_Site_TypeID,
                         @B4640700_BSSI_Structure_TypeID,
                         @B4640700_BSSI_Site_Status,
                         @B4640700_BSSI_Site_Class_ID,
                         @B4640700_BSSI_Site_Acquisition_Da,
                         @B4640700_BSSI_Real_Estate_ID,
                         @B4640700_BSSI_Latitude,
                         @B4640700_BSSI_Latitude_Degree_Dec,
                         @B4640700_BSSI_Latitude_Min,
                         @B4640700_BSSI_Latitude_Sec,
                         @B4640700_BSSI_Longitude,
                         @B4640700_BSSI_Longitude_Degree_De,
                         @B4640700_BSSI_longitudeMin,
                         @B4640700_BSSI_longitudeSec,
                         @B4640700_BSSI_Rev_Share,
                         @B4640700_BSSI_Site_Class_Of_ID,
                         @B4640700_BSSI_Construction_Date,
                         @B4640700_BSSI_UnitClass_ID,
                         @B4640700_BSSI_WingID,
                         @B4640700_BSSI_FloorID,
                         @B4640700_BSSI_OccupancyTypeID,
                         @B4640700_BSSI_IsInterior,
                         @B4640700_BSSI_MasterSiteID,
                         @B4640700_BSSI_BeginDate,
                         @B4640700_ENDDATE,
                         @B4640700_BSSI_Ground_Space

               INSERT [B4640712]
                    (
                    [LOCNCODE],
                    [BSSI_Site_Reference],
                    [BSSI_Site_Floor_Level],
                    [BSSI_Occupancy_Type],
                    [BSSI_Renovation_Date],
                    [BSSI_Total_Sq_Meters],
                    [BSSI_Total_Leasable_Sq_M],
                    [BSSI_Rent_By_Sq_Meter],
                    [BSSI_Total_Sq_Ft],
                    [BSSI_Total_Leasable_Sq_F],
                    [BSSI_Rent_By_Sq_Feet],
                    [BSSI_nMarketRent],
                    [NOTEINDX]
                    )
                    SELECT
                         @B4640712_LOCNCODE,
                         @B4640712_BSSI_Site_Reference,
                         @B4640712_BSSI_Site_Floor_Level,
                         @B4640712_BSSI_Occupancy_Type,
                         @B4640712_BSSI_Renovation_Date,
                         @B4640712_BSSI_Total_Sq_Meters,
                         @B4640712_BSSI_Total_Leasable_Sq_M,
                         @B4640712_BSSI_Rent_By_Sq_Meter,
                         @B4640712_BSSI_Total_Sq_Ft,
                         @B4640712_BSSI_Total_Leasable_Sq_F,
                         @B4640712_BSSI_Rent_By_Sq_Feet,
                         @B4640712_BSSI_nMarketRent,
                         @B4640712_NOTEINDX

               INSERT [IV40700]
                    (
                    [LOCNCODE],
                    [LOCNDSCR],
                    [NOTEINDX],
                    [ADDRESS1],
                    [ADDRESS2],
                    [ADDRESS3],
                    [CITY],
                    [STATE],
                    [ZIPCODE],
                    [COUNTRY],
                    [PHONE1],
                    [PHONE2],
                    [PHONE3],
                    [FAXNUMBR],
                    [Location_Segment],
                    [STAXSCHD],
                    [PCTAXSCH],
                    [INCLDDINPLNNNG],
                    [PORECEIPTBIN],
                    [PORETRNBIN],
                    [SOFULFILLMENTBIN],
                    [SORETURNBIN],
                    [BOMRCPTBIN],
                    [MATERIALISSUEBIN],
                    [MORECEIPTBIN],
                    [REPAIRISSUESBIN],
                    [WMSINT],
                    [PICKTICKETSITEOPT],
                    [BINBREAK],
                    [CCode],
                    [DECLID],
                    [INACTIVE]
                    )
                    SELECT
                         @IV40700_LOCNCODE,
                         @IV40700_LOCNDSCR,
                         @IV40700_NOTEINDX,
                         @IV40700_ADDRESS1,
                         @IV40700_ADDRESS2,
                         @IV40700_ADDRESS3,
                         @IV40700_CITY,
                         @IV40700_STATE,
                         @IV40700_ZIPCODE,
                         @IV40700_COUNTRY,
                         @IV40700_PHONE1,
                         @IV40700_PHONE2,
                         @IV40700_PHONE3,
                         @IV40700_FAXNUMBR,
                         @IV40700_Location_Segment,
                         @IV40700_STAXSCHD,
                         @IV40700_PCTAXSCH,
                         @IV40700_INCLDDINPLNNNG,
                         @IV40700_PORECEIPTBIN,
                         @IV40700_PORETRNBIN,
                         @IV40700_SOFULFILLMENTBIN,
                         @IV40700_SORETURNBIN,
                         @IV40700_BOMRCPTBIN,
                         @IV40700_MATERIALISSUEBIN,
                         @IV40700_MORECEIPTBIN,
                         @IV40700_REPAIRISSUESBIN,
                         @IV40700_WMSINT,
                         @IV40700_PICKTICKETSITEOPT,
                         @IV40700_BINBREAK,
                         @IV40700_CCode,
                         @IV40700_DECLID,
                         @IV40700_INACTIVE

     END
     ELSE 
     BEGIN
          select @O_iErrorState = 42509
          exec @iStatus = taUpdateString
               @O_iErrorState,
               @oErrString,
               @oErrString output,
               @O_oErrorState output
     END
END

/***** Call Post Proc *****/
EXEC @iStatus = E1_TLE_BS_UNITPost
     @I_vLOCNCODE,
     @I_vB4640700_BSSI_PortfolioID,
     @I_vB4640700_SALSTERR,
     @I_vB4640700_BSSI_Site_TypeID,
     @I_vB4640700_BSSI_Structure_TypeID,
     @I_vB4640700_BSSI_Site_Status,
     @I_vB4640700_BSSI_Site_Class_ID,
     @I_vB4640700_BSSI_Site_Acquisition_Da,
     @I_vB4640700_BSSI_Real_Estate_ID,
     @I_vB4640700_BSSI_Latitude,
     @I_vB4640700_BSSI_Latitude_Degree_Dec,
     @I_vB4640700_BSSI_Latitude_Min,
     @I_vB4640700_BSSI_Latitude_Sec,
     @I_vB4640700_BSSI_Longitude,
     @I_vB4640700_BSSI_Longitude_Degree_De,
     @I_vB4640700_BSSI_longitudeMin,
     @I_vB4640700_BSSI_longitudeSec,
     @I_vB4640700_BSSI_Rev_Share,
     @I_vB4640700_BSSI_Site_Class_Of_ID,
     @I_vB4640700_BSSI_Construction_Date,
     @I_vB4640700_BSSI_UnitClass_ID,
     @I_vB4640700_BSSI_WingID,
     @I_vB4640700_BSSI_FloorID,
     @I_vB4640700_BSSI_OccupancyTypeID,
     @I_vB4640700_BSSI_IsInterior,
     @I_vB4640700_BSSI_MasterSiteID,
     @I_vB4640700_BSSI_BeginDate,
     @I_vB4640700_ENDDATE,
     @I_vB4640700_BSSI_Ground_Space,
     @I_vB4640712_BSSI_Site_Reference,
     @I_vB4640712_BSSI_Site_Floor_Level,
     @I_vB4640712_BSSI_Occupancy_Type,
     @I_vB4640712_BSSI_Renovation_Date,
     @I_vB4640712_BSSI_Total_Sq_Meters,
     @I_vB4640712_BSSI_Total_Leasable_Sq_M,
     @I_vB4640712_BSSI_Rent_By_Sq_Meter,
     @I_vB4640712_BSSI_Total_Sq_Ft,
     @I_vB4640712_BSSI_Total_Leasable_Sq_F,
     @I_vB4640712_BSSI_Rent_By_Sq_Feet,
     @I_vB4640712_BSSI_nMarketRent,
     @I_vB4640712_NOTEINDX,
     @I_vIV40700_LOCNDSCR,
     @I_vIV40700_NOTEINDX,
     @I_vIV40700_ADDRESS1,
     @I_vIV40700_ADDRESS2,
     @I_vIV40700_ADDRESS3,
     @I_vIV40700_CITY,
     @I_vIV40700_STATE,
     @I_vIV40700_ZIPCODE,
     @I_vIV40700_COUNTRY,
     @I_vIV40700_PHONE1,
     @I_vIV40700_PHONE2,
     @I_vIV40700_PHONE3,
     @I_vIV40700_FAXNUMBR,
     @I_vIV40700_Location_Segment,
     @I_vIV40700_STAXSCHD,
     @I_vIV40700_PCTAXSCH,
     @I_vIV40700_INCLDDINPLNNNG,
     @I_vIV40700_PORECEIPTBIN,
     @I_vIV40700_PORETRNBIN,
     @I_vIV40700_SOFULFILLMENTBIN,
     @I_vIV40700_SORETURNBIN,
     @I_vIV40700_BOMRCPTBIN,
     @I_vIV40700_MATERIALISSUEBIN,
     @I_vIV40700_MORECEIPTBIN,
     @I_vIV40700_REPAIRISSUESBIN,
     @I_vIV40700_WMSINT,
     @I_vIV40700_PICKTICKETSITEOPT,
     @I_vIV40700_BINBREAK,
     @I_vIV40700_CCode,
     @I_vIV40700_DECLID,
     @I_vIV40700_INACTIVE,
     @I_vUpdateIfExists,
     @O_iErrorState = @iCustomState OUTPUT,
     @oErrString = @oErrString OUTPUT

SELECT @iError = @@error

IF @iStatus = 0 AND @iError <> 0
BEGIN
     SELECT @iStatus = @iError
END

IF (@iStatus <> 0) or (@iCustomState <> 0)
BEGIN
     SELECT @O_iErrorState = 42511 /* Post Custom Business Logic for E1_TLE_BS_UNITPost returned an error value */
     EXEC @iStatus = taUpdateString
          @O_iErrorState,
          @oErrString,
          @oErrString OUTPUT,
          @O_oErrorState OUTPUT
     RETURN (@O_iErrorState)

END

RETURN (@O_iErrorState)


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

GO
GRANT EXECUTE ON  [dbo].[E1_TLE_BS_UNIT] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[E1_TLE_BS_UNIT] TO [public]
GO
