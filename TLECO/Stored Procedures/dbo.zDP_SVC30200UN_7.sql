SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30200UN_7] (@BS int, @Customer_Reference char(21), @CUSTNMBR char(15), @Customer_Reference_RS char(21), @CUSTNMBR_RS char(15), @Customer_Reference_RE char(21), @CUSTNMBR_RE char(15)) AS  set nocount on IF @Customer_Reference_RS IS NULL BEGIN SELECT TOP 25  CALLNBR, SRVRECTYPE, SRVSTAT, SRVTYPE, SVCDESCR, priorityLevel, CUSTNMBR, Customer_Reference, ADRSCODE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, CNTCPRSN, PHONE1, OFFID, SVCAREA, TECHID, TIMEZONE, ENTDTE, ENTTME, Notify_Date, Notify_Time, ETADTE, ETATME, DISPDTE, DISPTME, ARRIVDTE, ARRIVTME, COMPDTE, COMPTME, Response_Date, Response_Time, PRICELVL, PYMTRMID, SLPRSNID, LABSTOTPRC, LABPCT, LABSTOTCST, PARSTOTPRC, PARTPCT, PARSTOTCST, MSCSTOTPRC, MISCPCT, MISSTOTCST, TAXSCHID, TAXEXMT1, TAXEXMT2, PRETAXTOT, TAXAMNT, TOTAL, Invoiced_Amount, METER1, METER2, METER3, PORDNMBR, NOTEINDX, NOTFYFLAG, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, MSTRRECTYPE, MSTRCALLNBR, ESCDATE, ESCTIME, Escalation_Level, SPLTTERMS, Callback, PROJCTID, ProjectRef1_1, ProjectRef1_2, ProjectRef1_3, ProjectRef1_4, CONSTS, CONTNBR, SVC_Contract_Line_SEQ, ETTR, SVC_On_Hold, Print_to_Web, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Meter_Internal_Uses_1, Meter_Internal_Uses_2, Meter_Internal_Uses_3, Meter_Internal_Uses_4, Meter_Internal_Uses_5, Bill_To_Customer, CURNCYID, SVC_Bill_To_Address_Code, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGMISSTOTCST, ORIGMSCSTOTPRC, ORIGLABSUBTOTCOST, ORIGLABSTOTPRC, ORIGPARSTOTCST, ORIGPARSTOTPRC, ORIGPRETAXTOT, ORTAXAMT, ORIGTOTAL, Orig_Invoiced_Amount, ADDRESS3, COUNTRY, SVC_Pre600, SVC_FO_ID, Replaces_1, Replaces_2, Replaces_3, Replaces_4, Replaces_5, Workflow_Approval_Status, Workflow_Priority, DEX_ROW_ID FROM .SVC30200 WHERE ( Customer_Reference = @Customer_Reference AND CUSTNMBR > @CUSTNMBR OR Customer_Reference > @Customer_Reference ) ORDER BY Customer_Reference ASC, CUSTNMBR ASC, DEX_ROW_ID ASC END ELSE IF @Customer_Reference_RS = @Customer_Reference_RE BEGIN SELECT TOP 25  CALLNBR, SRVRECTYPE, SRVSTAT, SRVTYPE, SVCDESCR, priorityLevel, CUSTNMBR, Customer_Reference, ADRSCODE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, CNTCPRSN, PHONE1, OFFID, SVCAREA, TECHID, TIMEZONE, ENTDTE, ENTTME, Notify_Date, Notify_Time, ETADTE, ETATME, DISPDTE, DISPTME, ARRIVDTE, ARRIVTME, COMPDTE, COMPTME, Response_Date, Response_Time, PRICELVL, PYMTRMID, SLPRSNID, LABSTOTPRC, LABPCT, LABSTOTCST, PARSTOTPRC, PARTPCT, PARSTOTCST, MSCSTOTPRC, MISCPCT, MISSTOTCST, TAXSCHID, TAXEXMT1, TAXEXMT2, PRETAXTOT, TAXAMNT, TOTAL, Invoiced_Amount, METER1, METER2, METER3, PORDNMBR, NOTEINDX, NOTFYFLAG, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, MSTRRECTYPE, MSTRCALLNBR, ESCDATE, ESCTIME, Escalation_Level, SPLTTERMS, Callback, PROJCTID, ProjectRef1_1, ProjectRef1_2, ProjectRef1_3, ProjectRef1_4, CONSTS, CONTNBR, SVC_Contract_Line_SEQ, ETTR, SVC_On_Hold, Print_to_Web, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Meter_Internal_Uses_1, Meter_Internal_Uses_2, Meter_Internal_Uses_3, Meter_Internal_Uses_4, Meter_Internal_Uses_5, Bill_To_Customer, CURNCYID, SVC_Bill_To_Address_Code, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGMISSTOTCST, ORIGMSCSTOTPRC, ORIGLABSUBTOTCOST, ORIGLABSTOTPRC, ORIGPARSTOTCST, ORIGPARSTOTPRC, ORIGPRETAXTOT, ORTAXAMT, ORIGTOTAL, Orig_Invoiced_Amount, ADDRESS3, COUNTRY, SVC_Pre600, SVC_FO_ID, Replaces_1, Replaces_2, Replaces_3, Replaces_4, Replaces_5, Workflow_Approval_Status, Workflow_Priority, DEX_ROW_ID FROM .SVC30200 WHERE Customer_Reference = @Customer_Reference_RS AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ( Customer_Reference = @Customer_Reference AND CUSTNMBR > @CUSTNMBR OR Customer_Reference > @Customer_Reference ) ORDER BY Customer_Reference ASC, CUSTNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CALLNBR, SRVRECTYPE, SRVSTAT, SRVTYPE, SVCDESCR, priorityLevel, CUSTNMBR, Customer_Reference, ADRSCODE, CUSTNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, CNTCPRSN, PHONE1, OFFID, SVCAREA, TECHID, TIMEZONE, ENTDTE, ENTTME, Notify_Date, Notify_Time, ETADTE, ETATME, DISPDTE, DISPTME, ARRIVDTE, ARRIVTME, COMPDTE, COMPTME, Response_Date, Response_Time, PRICELVL, PYMTRMID, SLPRSNID, LABSTOTPRC, LABPCT, LABSTOTCST, PARSTOTPRC, PARTPCT, PARSTOTCST, MSCSTOTPRC, MISCPCT, MISSTOTCST, TAXSCHID, TAXEXMT1, TAXEXMT2, PRETAXTOT, TAXAMNT, TOTAL, Invoiced_Amount, METER1, METER2, METER3, PORDNMBR, NOTEINDX, NOTFYFLAG, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, MSTRRECTYPE, MSTRCALLNBR, ESCDATE, ESCTIME, Escalation_Level, SPLTTERMS, Callback, PROJCTID, ProjectRef1_1, ProjectRef1_2, ProjectRef1_3, ProjectRef1_4, CONSTS, CONTNBR, SVC_Contract_Line_SEQ, ETTR, SVC_On_Hold, Print_to_Web, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Meter_Internal_Uses_1, Meter_Internal_Uses_2, Meter_Internal_Uses_3, Meter_Internal_Uses_4, Meter_Internal_Uses_5, Bill_To_Customer, CURNCYID, SVC_Bill_To_Address_Code, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGMISSTOTCST, ORIGMSCSTOTPRC, ORIGLABSUBTOTCOST, ORIGLABSTOTPRC, ORIGPARSTOTCST, ORIGPARSTOTPRC, ORIGPRETAXTOT, ORTAXAMT, ORIGTOTAL, Orig_Invoiced_Amount, ADDRESS3, COUNTRY, SVC_Pre600, SVC_FO_ID, Replaces_1, Replaces_2, Replaces_3, Replaces_4, Replaces_5, Workflow_Approval_Status, Workflow_Priority, DEX_ROW_ID FROM .SVC30200 WHERE Customer_Reference BETWEEN @Customer_Reference_RS AND @Customer_Reference_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ( Customer_Reference = @Customer_Reference AND CUSTNMBR > @CUSTNMBR OR Customer_Reference > @Customer_Reference ) ORDER BY Customer_Reference ASC, CUSTNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30200UN_7] TO [DYNGRP]
GO
