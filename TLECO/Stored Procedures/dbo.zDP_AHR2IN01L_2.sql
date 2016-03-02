SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2IN01L_2] (@EMPID_I_RS char(15), @INJURYNUMBER_I_RS char(11), @EMPID_I_RE char(15), @INJURYNUMBER_I_RE char(11)) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, INJURYNUMBER_I, INCIDENTDATE_I, INCIDENTTIME_I, NOTIFYDATE_I, GBILLINJ_I, EMPLOYEEDIEDCB_I, OSHARECORDABLE_I, O7S_I, INJURYTYPE_I, INJURYBODYPART_I, INJURYOBJECTCAUSIN_I, INJURYLOCATION_I, ONSITECB_I, INJURYTASK_I, PERSONNOTIFIED_I, WITNESSNAME_I, WITNESSADDRESS_I, WITNESSPHONE_I, TIMEARRIVED_I, DATEOFDEATH_I, DATERETURN_I, HOSPITALIZEDCB_I, OUTPATIENT_I, EMERGENCYROOM_I, INHOUSETREATMENT_I, FIRSTAID_I, SAFEGUARDSPROVDCB_I, SAFEGUARDSUSEDCB_I, SAFEGUARDDESCRIPT_I, FIRSTAIDDATE_I, FIRSTAIDNAME_I, FIRSTAIDDESCRIPT_I, INJURYDOCTOR_I, INJURYDOCTORPHONE_I, INJURYDOCTORSPECIA_I, INJURYDOCTORDATEFI_I, INJURYDOCTORTREATM_I, INJURYHOSPITAL_I, INJURYHOSPITALPHON_I, INJHOSPLENGTHOFSTA_I, INJURYHOSPITALDATE_I, INJURYHOSPITALTREA_I, CLAIMNUMBER_I, DATEFILED_I, DATECLOSED_I, DAYSMISSED_I, DAYSRESTRICTED_I, DOLLARTIMELOST_I, DOLLARMEDICALCOST_I, INJURYCAUSE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NOTESINDEX2_I, NOTESINDEX3_I, NOTESINDEX4_I, NOTESINDEX5_I, NOTESINDEX6_I, DEX_ROW_ID FROM .AHR2IN01 ORDER BY EMPID_I DESC, INJURYNUMBER_I DESC, DEX_ROW_ID DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, INJURYNUMBER_I, INCIDENTDATE_I, INCIDENTTIME_I, NOTIFYDATE_I, GBILLINJ_I, EMPLOYEEDIEDCB_I, OSHARECORDABLE_I, O7S_I, INJURYTYPE_I, INJURYBODYPART_I, INJURYOBJECTCAUSIN_I, INJURYLOCATION_I, ONSITECB_I, INJURYTASK_I, PERSONNOTIFIED_I, WITNESSNAME_I, WITNESSADDRESS_I, WITNESSPHONE_I, TIMEARRIVED_I, DATEOFDEATH_I, DATERETURN_I, HOSPITALIZEDCB_I, OUTPATIENT_I, EMERGENCYROOM_I, INHOUSETREATMENT_I, FIRSTAID_I, SAFEGUARDSPROVDCB_I, SAFEGUARDSUSEDCB_I, SAFEGUARDDESCRIPT_I, FIRSTAIDDATE_I, FIRSTAIDNAME_I, FIRSTAIDDESCRIPT_I, INJURYDOCTOR_I, INJURYDOCTORPHONE_I, INJURYDOCTORSPECIA_I, INJURYDOCTORDATEFI_I, INJURYDOCTORTREATM_I, INJURYHOSPITAL_I, INJURYHOSPITALPHON_I, INJHOSPLENGTHOFSTA_I, INJURYHOSPITALDATE_I, INJURYHOSPITALTREA_I, CLAIMNUMBER_I, DATEFILED_I, DATECLOSED_I, DAYSMISSED_I, DAYSRESTRICTED_I, DOLLARTIMELOST_I, DOLLARMEDICALCOST_I, INJURYCAUSE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NOTESINDEX2_I, NOTESINDEX3_I, NOTESINDEX4_I, NOTESINDEX5_I, NOTESINDEX6_I, DEX_ROW_ID FROM .AHR2IN01 WHERE EMPID_I = @EMPID_I_RS AND INJURYNUMBER_I BETWEEN @INJURYNUMBER_I_RS AND @INJURYNUMBER_I_RE ORDER BY EMPID_I DESC, INJURYNUMBER_I DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, INJURYNUMBER_I, INCIDENTDATE_I, INCIDENTTIME_I, NOTIFYDATE_I, GBILLINJ_I, EMPLOYEEDIEDCB_I, OSHARECORDABLE_I, O7S_I, INJURYTYPE_I, INJURYBODYPART_I, INJURYOBJECTCAUSIN_I, INJURYLOCATION_I, ONSITECB_I, INJURYTASK_I, PERSONNOTIFIED_I, WITNESSNAME_I, WITNESSADDRESS_I, WITNESSPHONE_I, TIMEARRIVED_I, DATEOFDEATH_I, DATERETURN_I, HOSPITALIZEDCB_I, OUTPATIENT_I, EMERGENCYROOM_I, INHOUSETREATMENT_I, FIRSTAID_I, SAFEGUARDSPROVDCB_I, SAFEGUARDSUSEDCB_I, SAFEGUARDDESCRIPT_I, FIRSTAIDDATE_I, FIRSTAIDNAME_I, FIRSTAIDDESCRIPT_I, INJURYDOCTOR_I, INJURYDOCTORPHONE_I, INJURYDOCTORSPECIA_I, INJURYDOCTORDATEFI_I, INJURYDOCTORTREATM_I, INJURYHOSPITAL_I, INJURYHOSPITALPHON_I, INJHOSPLENGTHOFSTA_I, INJURYHOSPITALDATE_I, INJURYHOSPITALTREA_I, CLAIMNUMBER_I, DATEFILED_I, DATECLOSED_I, DAYSMISSED_I, DAYSRESTRICTED_I, DOLLARTIMELOST_I, DOLLARMEDICALCOST_I, INJURYCAUSE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NOTESINDEX2_I, NOTESINDEX3_I, NOTESINDEX4_I, NOTESINDEX5_I, NOTESINDEX6_I, DEX_ROW_ID FROM .AHR2IN01 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND INJURYNUMBER_I BETWEEN @INJURYNUMBER_I_RS AND @INJURYNUMBER_I_RE ORDER BY EMPID_I DESC, INJURYNUMBER_I DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2IN01L_2] TO [DYNGRP]
GO