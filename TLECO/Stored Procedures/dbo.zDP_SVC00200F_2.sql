SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00200F_2] (@SRVRECTYPE_RS smallint, @TECHID_RS char(11), @SRVSTAT_RS char(3), @priorityLevel_RS smallint, @SRVRECTYPE_RE smallint, @TECHID_RE char(11), @SRVSTAT_RE char(3), @priorityLevel_RE smallint) AS  set nocount on IF @SRVRECTYPE_RS IS NULL BEGIN SELECT TOP 25  CALLNBR, SRVRECTYPE, SRVSTAT, SRVTYPE, SVCDESCR, priorityLevel, CUSTNMBR, Customer_Reference, ADRSCODE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, CNTCPRSN, PHONE1, OFFID, SVCAREA, TECHID, TIMEZONE, ENTDTE, ENTTME, Notify_Date, Notify_Time, ETADTE, ETATME, DISPDTE, DISPTME, ARRIVDTE, ARRIVTME, COMPDTE, COMPTME, Response_Date, Response_Time, PRICELVL, PYMTRMID, SLPRSNID, LABSTOTPRC, LABPCT, LABSTOTCST, PARSTOTPRC, PARTPCT, PARSTOTCST, MSCSTOTPRC, MISCPCT, MISSTOTCST, TAXSCHID, TAXEXMT1, TAXEXMT2, PRETAXTOT, TAXAMNT, TOTAL, Invoiced_Amount, METER1, METER2, METER3, PORDNMBR, NOTEINDX, NOTFYFLAG, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, MSTRRECTYPE, MSTRCALLNBR, ESCDATE, ESCTIME, Escalation_Level, SPLTTERMS, Callback, PROJCTID, ProjectRef1_1, ProjectRef1_2, ProjectRef1_3, ProjectRef1_4, CONSTS, CONTNBR, SVC_Contract_Line_SEQ, ETTR, SVC_On_Hold, Print_to_Web, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Meter_Internal_Uses_1, Meter_Internal_Uses_2, Meter_Internal_Uses_3, Meter_Internal_Uses_4, Meter_Internal_Uses_5, Bill_To_Customer, CURNCYID, SVC_Bill_To_Address_Code, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGMISSTOTCST, ORIGMSCSTOTPRC, ORIGLABSUBTOTCOST, ORIGLABSTOTPRC, ORIGPARSTOTCST, ORIGPARSTOTPRC, ORIGPRETAXTOT, ORTAXAMT, ORIGTOTAL, Orig_Invoiced_Amount, ADDRESS3, COUNTRY, SVC_Pre600, SVC_FO_ID, Replaces_1, Replaces_2, Replaces_3, Replaces_4, Replaces_5, Workflow_Approval_Status, Workflow_Priority, DEX_ROW_ID FROM .SVC00200 ORDER BY SRVRECTYPE ASC, TECHID ASC, SRVSTAT DESC, priorityLevel ASC, DEX_ROW_ID ASC END ELSE IF @SRVRECTYPE_RS = @SRVRECTYPE_RE BEGIN SELECT TOP 25  CALLNBR, SRVRECTYPE, SRVSTAT, SRVTYPE, SVCDESCR, priorityLevel, CUSTNMBR, Customer_Reference, ADRSCODE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, CNTCPRSN, PHONE1, OFFID, SVCAREA, TECHID, TIMEZONE, ENTDTE, ENTTME, Notify_Date, Notify_Time, ETADTE, ETATME, DISPDTE, DISPTME, ARRIVDTE, ARRIVTME, COMPDTE, COMPTME, Response_Date, Response_Time, PRICELVL, PYMTRMID, SLPRSNID, LABSTOTPRC, LABPCT, LABSTOTCST, PARSTOTPRC, PARTPCT, PARSTOTCST, MSCSTOTPRC, MISCPCT, MISSTOTCST, TAXSCHID, TAXEXMT1, TAXEXMT2, PRETAXTOT, TAXAMNT, TOTAL, Invoiced_Amount, METER1, METER2, METER3, PORDNMBR, NOTEINDX, NOTFYFLAG, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, MSTRRECTYPE, MSTRCALLNBR, ESCDATE, ESCTIME, Escalation_Level, SPLTTERMS, Callback, PROJCTID, ProjectRef1_1, ProjectRef1_2, ProjectRef1_3, ProjectRef1_4, CONSTS, CONTNBR, SVC_Contract_Line_SEQ, ETTR, SVC_On_Hold, Print_to_Web, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Meter_Internal_Uses_1, Meter_Internal_Uses_2, Meter_Internal_Uses_3, Meter_Internal_Uses_4, Meter_Internal_Uses_5, Bill_To_Customer, CURNCYID, SVC_Bill_To_Address_Code, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGMISSTOTCST, ORIGMSCSTOTPRC, ORIGLABSUBTOTCOST, ORIGLABSTOTPRC, ORIGPARSTOTCST, ORIGPARSTOTPRC, ORIGPRETAXTOT, ORTAXAMT, ORIGTOTAL, Orig_Invoiced_Amount, ADDRESS3, COUNTRY, SVC_Pre600, SVC_FO_ID, Replaces_1, Replaces_2, Replaces_3, Replaces_4, Replaces_5, Workflow_Approval_Status, Workflow_Priority, DEX_ROW_ID FROM .SVC00200 WHERE SRVRECTYPE = @SRVRECTYPE_RS AND TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND SRVSTAT BETWEEN @SRVSTAT_RE AND @SRVSTAT_RS AND priorityLevel BETWEEN @priorityLevel_RS AND @priorityLevel_RE ORDER BY SRVRECTYPE ASC, TECHID ASC, SRVSTAT DESC, priorityLevel ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CALLNBR, SRVRECTYPE, SRVSTAT, SRVTYPE, SVCDESCR, priorityLevel, CUSTNMBR, Customer_Reference, ADRSCODE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, CNTCPRSN, PHONE1, OFFID, SVCAREA, TECHID, TIMEZONE, ENTDTE, ENTTME, Notify_Date, Notify_Time, ETADTE, ETATME, DISPDTE, DISPTME, ARRIVDTE, ARRIVTME, COMPDTE, COMPTME, Response_Date, Response_Time, PRICELVL, PYMTRMID, SLPRSNID, LABSTOTPRC, LABPCT, LABSTOTCST, PARSTOTPRC, PARTPCT, PARSTOTCST, MSCSTOTPRC, MISCPCT, MISSTOTCST, TAXSCHID, TAXEXMT1, TAXEXMT2, PRETAXTOT, TAXAMNT, TOTAL, Invoiced_Amount, METER1, METER2, METER3, PORDNMBR, NOTEINDX, NOTFYFLAG, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, MSTRRECTYPE, MSTRCALLNBR, ESCDATE, ESCTIME, Escalation_Level, SPLTTERMS, Callback, PROJCTID, ProjectRef1_1, ProjectRef1_2, ProjectRef1_3, ProjectRef1_4, CONSTS, CONTNBR, SVC_Contract_Line_SEQ, ETTR, SVC_On_Hold, Print_to_Web, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Meter_Internal_Uses_1, Meter_Internal_Uses_2, Meter_Internal_Uses_3, Meter_Internal_Uses_4, Meter_Internal_Uses_5, Bill_To_Customer, CURNCYID, SVC_Bill_To_Address_Code, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGMISSTOTCST, ORIGMSCSTOTPRC, ORIGLABSUBTOTCOST, ORIGLABSTOTPRC, ORIGPARSTOTCST, ORIGPARSTOTPRC, ORIGPRETAXTOT, ORTAXAMT, ORIGTOTAL, Orig_Invoiced_Amount, ADDRESS3, COUNTRY, SVC_Pre600, SVC_FO_ID, Replaces_1, Replaces_2, Replaces_3, Replaces_4, Replaces_5, Workflow_Approval_Status, Workflow_Priority, DEX_ROW_ID FROM .SVC00200 WHERE SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND SRVSTAT BETWEEN @SRVSTAT_RE AND @SRVSTAT_RS AND priorityLevel BETWEEN @priorityLevel_RS AND @priorityLevel_RE ORDER BY SRVRECTYPE ASC, TECHID ASC, SRVSTAT DESC, priorityLevel ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00200F_2] TO [DYNGRP]
GO
