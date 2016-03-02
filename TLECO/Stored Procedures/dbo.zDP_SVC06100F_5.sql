SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06100F_5] (@IBEQUIPID_RS int, @IBEQUIPID_RE int) AS  set nocount on IF @IBEQUIPID_RS IS NULL BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, WOSTAT, WOTYPE, SVC_Depot_Priority, PARWORECTYPE, PARWONUM, ORIGIN, REFRENCE, TIMEZONE, ENTDTE, ENTTME, ETADTE, ETATME, ECOMPDT, EComp_Time, RETUDATE, Return_Time, COMPDTE, COMPTME, BIN, USERID, OFFID, CUSTNMBR, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, RETDOCID, LNSEQNBR, SRVRECTYPE, CALLNBR, SERVLITEMSEQ, IBITEMNUM, IBSERIAL, IBEQUIPID, OBITEMNUM, OBSERIAL, OBEQUIPID, QUANTITY, STATIONID, ROUTEID, SEQUENCE1, LOCNCODE, IBANALCODE, OBANALCODE, CUSTOWN, ORDDOCID, TRANSLINESEQ, NOTEINDX, FACTSEAL, LABSTOTCST, PARSTOTCST, TOTLABHRS, PRICELVL, NUMRESCHED, Commit_Date, Commit_Time, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, ADDRESS3, COUNTRY, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, SVC_Process_SEQ_Number, svcRMAComponentSeq, QTYTYPE, DEX_ROW_ID FROM .SVC06100 ORDER BY IBEQUIPID ASC, DEX_ROW_ID ASC END ELSE IF @IBEQUIPID_RS = @IBEQUIPID_RE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, WOSTAT, WOTYPE, SVC_Depot_Priority, PARWORECTYPE, PARWONUM, ORIGIN, REFRENCE, TIMEZONE, ENTDTE, ENTTME, ETADTE, ETATME, ECOMPDT, EComp_Time, RETUDATE, Return_Time, COMPDTE, COMPTME, BIN, USERID, OFFID, CUSTNMBR, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, RETDOCID, LNSEQNBR, SRVRECTYPE, CALLNBR, SERVLITEMSEQ, IBITEMNUM, IBSERIAL, IBEQUIPID, OBITEMNUM, OBSERIAL, OBEQUIPID, QUANTITY, STATIONID, ROUTEID, SEQUENCE1, LOCNCODE, IBANALCODE, OBANALCODE, CUSTOWN, ORDDOCID, TRANSLINESEQ, NOTEINDX, FACTSEAL, LABSTOTCST, PARSTOTCST, TOTLABHRS, PRICELVL, NUMRESCHED, Commit_Date, Commit_Time, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, ADDRESS3, COUNTRY, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, SVC_Process_SEQ_Number, svcRMAComponentSeq, QTYTYPE, DEX_ROW_ID FROM .SVC06100 WHERE IBEQUIPID = @IBEQUIPID_RS ORDER BY IBEQUIPID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, WOSTAT, WOTYPE, SVC_Depot_Priority, PARWORECTYPE, PARWONUM, ORIGIN, REFRENCE, TIMEZONE, ENTDTE, ENTTME, ETADTE, ETATME, ECOMPDT, EComp_Time, RETUDATE, Return_Time, COMPDTE, COMPTME, BIN, USERID, OFFID, CUSTNMBR, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, RETDOCID, LNSEQNBR, SRVRECTYPE, CALLNBR, SERVLITEMSEQ, IBITEMNUM, IBSERIAL, IBEQUIPID, OBITEMNUM, OBSERIAL, OBEQUIPID, QUANTITY, STATIONID, ROUTEID, SEQUENCE1, LOCNCODE, IBANALCODE, OBANALCODE, CUSTOWN, ORDDOCID, TRANSLINESEQ, NOTEINDX, FACTSEAL, LABSTOTCST, PARSTOTCST, TOTLABHRS, PRICELVL, NUMRESCHED, Commit_Date, Commit_Time, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, ADDRESS3, COUNTRY, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, SVC_Process_SEQ_Number, svcRMAComponentSeq, QTYTYPE, DEX_ROW_ID FROM .SVC06100 WHERE IBEQUIPID BETWEEN @IBEQUIPID_RS AND @IBEQUIPID_RE ORDER BY IBEQUIPID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06100F_5] TO [DYNGRP]
GO
