SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2NJ01N_4] (@BS int, @INCIDENTDATE_I datetime, @EMPID_I char(15), @DEX_ROW_ID int, @INCIDENTDATE_I_RS datetime, @EMPID_I_RS char(15), @INCIDENTDATE_I_RE datetime, @EMPID_I_RE char(15)) AS  set nocount on IF @INCIDENTDATE_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, INJURYNUMBER_I, INCIDENTDATE_I, INCIDENTTIME_I, NOTIFYDATE_I, GBILLINJ_I, EMPLOYEEDIEDCB_I, OSHARECORDABLE_I, O7S_I, INJURYTYPE_I, INJURYBODYPART_I, INJURYOBJECTCAUSIN_I, INJURYLOCATION_I, ONSITECB_I, INJURYTASK_I, PERSONNOTIFIED_I, WITNESSNAME_I, WITNESSADDRESS_I, WITNESSPHONE_I, TIMEARRIVED_I, DATEOFDEATH_I, DATERETURN_I, HOSPITALIZEDCB_I, OUTPATIENT_I, EMERGENCYROOM_I, INHOUSETREATMENT_I, FIRSTAID_I, SAFEGUARDSPROVDCB_I, SAFEGUARDSUSEDCB_I, SAFEGUARDDESCRIPT_I, FIRSTAIDDATE_I, FIRSTAIDNAME_I, FIRSTAIDDESCRIPT_I, INJURYDOCTOR_I, INJURYDOCTORPHONE_I, INJURYDOCTORSPECIA_I, INJURYDOCTORDATEFI_I, INJURYDOCTORTREATM_I, INJURYHOSPITAL_I, INJURYHOSPITALPHON_I, INJHOSPLENGTHOFSTA_I, INJURYHOSPITALDATE_I, INJURYHOSPITALTREA_I, CLAIMNUMBER_I, DATEFILED_I, DATECLOSED_I, DAYSMISSED_I, DAYSRESTRICTED_I, DOLLARTIMELOST_I, DOLLARMEDICALCOST_I, INJURYCAUSE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NOTESINDEX2_I, NOTESINDEX3_I, NOTESINDEX4_I, NOTESINDEX5_I, NOTESINDEX6_I, CONFIDENTIAL_I, DEPRTMNT, DIVISIONCODE_I, Date_Case_Closed, Case_Status, DEX_ROW_ID FROM .HR2NJ01 WHERE ( INCIDENTDATE_I = @INCIDENTDATE_I AND EMPID_I = @EMPID_I AND DEX_ROW_ID > @DEX_ROW_ID OR INCIDENTDATE_I = @INCIDENTDATE_I AND EMPID_I > @EMPID_I OR INCIDENTDATE_I < @INCIDENTDATE_I ) ORDER BY INCIDENTDATE_I DESC, EMPID_I ASC, DEX_ROW_ID ASC END ELSE IF @INCIDENTDATE_I_RS = @INCIDENTDATE_I_RE BEGIN SELECT TOP 25  EMPID_I, INJURYNUMBER_I, INCIDENTDATE_I, INCIDENTTIME_I, NOTIFYDATE_I, GBILLINJ_I, EMPLOYEEDIEDCB_I, OSHARECORDABLE_I, O7S_I, INJURYTYPE_I, INJURYBODYPART_I, INJURYOBJECTCAUSIN_I, INJURYLOCATION_I, ONSITECB_I, INJURYTASK_I, PERSONNOTIFIED_I, WITNESSNAME_I, WITNESSADDRESS_I, WITNESSPHONE_I, TIMEARRIVED_I, DATEOFDEATH_I, DATERETURN_I, HOSPITALIZEDCB_I, OUTPATIENT_I, EMERGENCYROOM_I, INHOUSETREATMENT_I, FIRSTAID_I, SAFEGUARDSPROVDCB_I, SAFEGUARDSUSEDCB_I, SAFEGUARDDESCRIPT_I, FIRSTAIDDATE_I, FIRSTAIDNAME_I, FIRSTAIDDESCRIPT_I, INJURYDOCTOR_I, INJURYDOCTORPHONE_I, INJURYDOCTORSPECIA_I, INJURYDOCTORDATEFI_I, INJURYDOCTORTREATM_I, INJURYHOSPITAL_I, INJURYHOSPITALPHON_I, INJHOSPLENGTHOFSTA_I, INJURYHOSPITALDATE_I, INJURYHOSPITALTREA_I, CLAIMNUMBER_I, DATEFILED_I, DATECLOSED_I, DAYSMISSED_I, DAYSRESTRICTED_I, DOLLARTIMELOST_I, DOLLARMEDICALCOST_I, INJURYCAUSE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NOTESINDEX2_I, NOTESINDEX3_I, NOTESINDEX4_I, NOTESINDEX5_I, NOTESINDEX6_I, CONFIDENTIAL_I, DEPRTMNT, DIVISIONCODE_I, Date_Case_Closed, Case_Status, DEX_ROW_ID FROM .HR2NJ01 WHERE INCIDENTDATE_I = @INCIDENTDATE_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( INCIDENTDATE_I = @INCIDENTDATE_I AND EMPID_I = @EMPID_I AND DEX_ROW_ID > @DEX_ROW_ID OR INCIDENTDATE_I = @INCIDENTDATE_I AND EMPID_I > @EMPID_I OR INCIDENTDATE_I < @INCIDENTDATE_I ) ORDER BY INCIDENTDATE_I DESC, EMPID_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, INJURYNUMBER_I, INCIDENTDATE_I, INCIDENTTIME_I, NOTIFYDATE_I, GBILLINJ_I, EMPLOYEEDIEDCB_I, OSHARECORDABLE_I, O7S_I, INJURYTYPE_I, INJURYBODYPART_I, INJURYOBJECTCAUSIN_I, INJURYLOCATION_I, ONSITECB_I, INJURYTASK_I, PERSONNOTIFIED_I, WITNESSNAME_I, WITNESSADDRESS_I, WITNESSPHONE_I, TIMEARRIVED_I, DATEOFDEATH_I, DATERETURN_I, HOSPITALIZEDCB_I, OUTPATIENT_I, EMERGENCYROOM_I, INHOUSETREATMENT_I, FIRSTAID_I, SAFEGUARDSPROVDCB_I, SAFEGUARDSUSEDCB_I, SAFEGUARDDESCRIPT_I, FIRSTAIDDATE_I, FIRSTAIDNAME_I, FIRSTAIDDESCRIPT_I, INJURYDOCTOR_I, INJURYDOCTORPHONE_I, INJURYDOCTORSPECIA_I, INJURYDOCTORDATEFI_I, INJURYDOCTORTREATM_I, INJURYHOSPITAL_I, INJURYHOSPITALPHON_I, INJHOSPLENGTHOFSTA_I, INJURYHOSPITALDATE_I, INJURYHOSPITALTREA_I, CLAIMNUMBER_I, DATEFILED_I, DATECLOSED_I, DAYSMISSED_I, DAYSRESTRICTED_I, DOLLARTIMELOST_I, DOLLARMEDICALCOST_I, INJURYCAUSE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NOTESINDEX2_I, NOTESINDEX3_I, NOTESINDEX4_I, NOTESINDEX5_I, NOTESINDEX6_I, CONFIDENTIAL_I, DEPRTMNT, DIVISIONCODE_I, Date_Case_Closed, Case_Status, DEX_ROW_ID FROM .HR2NJ01 WHERE INCIDENTDATE_I BETWEEN @INCIDENTDATE_I_RE AND @INCIDENTDATE_I_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( INCIDENTDATE_I = @INCIDENTDATE_I AND EMPID_I = @EMPID_I AND DEX_ROW_ID > @DEX_ROW_ID OR INCIDENTDATE_I = @INCIDENTDATE_I AND EMPID_I > @EMPID_I OR INCIDENTDATE_I < @INCIDENTDATE_I ) ORDER BY INCIDENTDATE_I DESC, EMPID_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2NJ01N_4] TO [DYNGRP]
GO
