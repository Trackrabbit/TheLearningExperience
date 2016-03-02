SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05000L_6] (@CUSTNAME_RS char(65), @Return_Record_Type_RS smallint, @RETDOCID_RS char(15), @CUSTNAME_RE char(65), @Return_Record_Type_RE smallint, @RETDOCID_RE char(15)) AS  set nocount on IF @CUSTNAME_RS IS NULL BEGIN SELECT TOP 25  RETDOCID, Return_Record_Type, RMA_Status, Received, RETORIG, RETREF, RETSTAT, RETTYPE, ENTDTE, ENTTME, ETADTE, ETATME, RETUDATE, Return_Time, COMPDTE, COMPTME, USERID, OFFID, RTRNNAME, RETADDR1, RETADDR2, RETADDR3, RTRNCITY, SVC_Return_State, RTRNZIP, Return_Country, LOCNCODE, CUSTNMBR, ADRSCODE, CUSTNAME, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, NOTEINDX, CALLNBR, SRVRECTYPE, EQPLINE, LNITMSEQ, Bill_of_Lading, SHIPMTHD, SOPTYPE, SOPNUMBE, SOP_Line_Item_Sequence, CMPNTSEQ, Bill_To_Customer, SVC_Bill_To_Address_Code, Commit_Date, Commit_Time, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, CSTPONBR, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, SVC_RMA_From_Service, SVC_FO_ID, DEX_ROW_ID FROM .SVC05000 ORDER BY CUSTNAME DESC, Return_Record_Type DESC, RETDOCID DESC END ELSE IF @CUSTNAME_RS = @CUSTNAME_RE BEGIN SELECT TOP 25  RETDOCID, Return_Record_Type, RMA_Status, Received, RETORIG, RETREF, RETSTAT, RETTYPE, ENTDTE, ENTTME, ETADTE, ETATME, RETUDATE, Return_Time, COMPDTE, COMPTME, USERID, OFFID, RTRNNAME, RETADDR1, RETADDR2, RETADDR3, RTRNCITY, SVC_Return_State, RTRNZIP, Return_Country, LOCNCODE, CUSTNMBR, ADRSCODE, CUSTNAME, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, NOTEINDX, CALLNBR, SRVRECTYPE, EQPLINE, LNITMSEQ, Bill_of_Lading, SHIPMTHD, SOPTYPE, SOPNUMBE, SOP_Line_Item_Sequence, CMPNTSEQ, Bill_To_Customer, SVC_Bill_To_Address_Code, Commit_Date, Commit_Time, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, CSTPONBR, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, SVC_RMA_From_Service, SVC_FO_ID, DEX_ROW_ID FROM .SVC05000 WHERE CUSTNAME = @CUSTNAME_RS AND Return_Record_Type BETWEEN @Return_Record_Type_RS AND @Return_Record_Type_RE AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE ORDER BY CUSTNAME DESC, Return_Record_Type DESC, RETDOCID DESC END ELSE BEGIN SELECT TOP 25  RETDOCID, Return_Record_Type, RMA_Status, Received, RETORIG, RETREF, RETSTAT, RETTYPE, ENTDTE, ENTTME, ETADTE, ETATME, RETUDATE, Return_Time, COMPDTE, COMPTME, USERID, OFFID, RTRNNAME, RETADDR1, RETADDR2, RETADDR3, RTRNCITY, SVC_Return_State, RTRNZIP, Return_Country, LOCNCODE, CUSTNMBR, ADRSCODE, CUSTNAME, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, NOTEINDX, CALLNBR, SRVRECTYPE, EQPLINE, LNITMSEQ, Bill_of_Lading, SHIPMTHD, SOPTYPE, SOPNUMBE, SOP_Line_Item_Sequence, CMPNTSEQ, Bill_To_Customer, SVC_Bill_To_Address_Code, Commit_Date, Commit_Time, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, CSTPONBR, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, SVC_RMA_From_Service, SVC_FO_ID, DEX_ROW_ID FROM .SVC05000 WHERE CUSTNAME BETWEEN @CUSTNAME_RS AND @CUSTNAME_RE AND Return_Record_Type BETWEEN @Return_Record_Type_RS AND @Return_Record_Type_RE AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE ORDER BY CUSTNAME DESC, Return_Record_Type DESC, RETDOCID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05000L_6] TO [DYNGRP]
GO
