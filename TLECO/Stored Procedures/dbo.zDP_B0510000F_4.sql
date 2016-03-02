SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510000F_4] (@ENDDATE_RS datetime, @ENDDATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @ENDDATE_RS IS NULL BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_Offering_Name, MJW_Offering_Type, MJWOfferingAddressCode, MJW_FEIN_Number, MJW_Social_Security, STRTDATE, ENDDATE, MJW_Units_Offered, NOTEINDX, INACTIVE, USERDEF1, USERDEF2, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, FAXNUMBR, MJW_Email1, MJW_Broker_Commission, MJW_Salesperson_Commissi, IMS_CheckBook_ID_Escrow, IMS_CheckBook_ID_Operati, MJW_Actual_Name, MJW_Offering_Project_Num, MJW_Preferred_Returns, MJW_K1_Name, BSSI_Bank_Rec_Acct_Index, BSSI_Facility_ID, BSSI_Fund_Owner_ID, BSSI_CC_Offering, BSSI_ExgMrkt, BSSI_Symbol, BSSI_Skip_Request, DEX_ROW_ID, MJW_Offering_Description FROM .B0510000 ORDER BY ENDDATE ASC, DEX_ROW_ID ASC END ELSE IF @ENDDATE_RS = @ENDDATE_RE BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_Offering_Name, MJW_Offering_Type, MJWOfferingAddressCode, MJW_FEIN_Number, MJW_Social_Security, STRTDATE, ENDDATE, MJW_Units_Offered, NOTEINDX, INACTIVE, USERDEF1, USERDEF2, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, FAXNUMBR, MJW_Email1, MJW_Broker_Commission, MJW_Salesperson_Commissi, IMS_CheckBook_ID_Escrow, IMS_CheckBook_ID_Operati, MJW_Actual_Name, MJW_Offering_Project_Num, MJW_Preferred_Returns, MJW_K1_Name, BSSI_Bank_Rec_Acct_Index, BSSI_Facility_ID, BSSI_Fund_Owner_ID, BSSI_CC_Offering, BSSI_ExgMrkt, BSSI_Symbol, BSSI_Skip_Request, DEX_ROW_ID, MJW_Offering_Description FROM .B0510000 WHERE ENDDATE = @ENDDATE_RS ORDER BY ENDDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_Offering_Name, MJW_Offering_Type, MJWOfferingAddressCode, MJW_FEIN_Number, MJW_Social_Security, STRTDATE, ENDDATE, MJW_Units_Offered, NOTEINDX, INACTIVE, USERDEF1, USERDEF2, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, FAXNUMBR, MJW_Email1, MJW_Broker_Commission, MJW_Salesperson_Commissi, IMS_CheckBook_ID_Escrow, IMS_CheckBook_ID_Operati, MJW_Actual_Name, MJW_Offering_Project_Num, MJW_Preferred_Returns, MJW_K1_Name, BSSI_Bank_Rec_Acct_Index, BSSI_Facility_ID, BSSI_Fund_Owner_ID, BSSI_CC_Offering, BSSI_ExgMrkt, BSSI_Symbol, BSSI_Skip_Request, DEX_ROW_ID, MJW_Offering_Description FROM .B0510000 WHERE ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE ORDER BY ENDDATE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510000F_4] TO [DYNGRP]
GO
