SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35000SS_1] (@RETDOCID char(15), @Return_Record_Type smallint) AS  set nocount on SELECT TOP 1  RETDOCID, Return_Record_Type, RMA_Status, Received, RETORIG, RETREF, RETSTAT, RETTYPE, ENTDTE, ENTTME, ETADTE, ETATME, RETUDATE, Return_Time, COMPDTE, COMPTME, USERID, OFFID, RTRNNAME, RETADDR1, RETADDR2, RETADDR3, RTRNCITY, SVC_Return_State, RTRNZIP, Return_Country, LOCNCODE, CUSTNMBR, ADRSCODE, CUSTNAME, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, NOTEINDX, CALLNBR, SRVRECTYPE, EQPLINE, LNITMSEQ, Bill_of_Lading, SHIPMTHD, SOPTYPE, SOPNUMBE, SOP_Line_Item_Sequence, CMPNTSEQ, Bill_To_Customer, SVC_Bill_To_Address_Code, Commit_Date, Commit_Time, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, CSTPONBR, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, SVC_RMA_From_Service, SVC_FO_ID, DEX_ROW_ID FROM .SVC35000 WHERE RETDOCID = @RETDOCID AND Return_Record_Type = @Return_Record_Type ORDER BY RETDOCID ASC, Return_Record_Type ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35000SS_1] TO [DYNGRP]
GO
