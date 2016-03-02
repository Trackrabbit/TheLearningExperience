SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06100F_7] (@WORECTYPE_RS smallint, @BIN_RS char(15), @WORECTYPE_RE smallint, @BIN_RE char(15)) AS  set nocount on IF @WORECTYPE_RS IS NULL BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, WOSTAT, WOTYPE, SVC_Depot_Priority, PARWORECTYPE, PARWONUM, ORIGIN, REFRENCE, TIMEZONE, ENTDTE, ENTTME, ETADTE, ETATME, ECOMPDT, EComp_Time, RETUDATE, Return_Time, COMPDTE, COMPTME, BIN, USERID, OFFID, CUSTNMBR, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, RETDOCID, LNSEQNBR, SRVRECTYPE, CALLNBR, SERVLITEMSEQ, IBITEMNUM, IBSERIAL, IBEQUIPID, OBITEMNUM, OBSERIAL, OBEQUIPID, QUANTITY, STATIONID, ROUTEID, SEQUENCE1, LOCNCODE, IBANALCODE, OBANALCODE, CUSTOWN, ORDDOCID, TRANSLINESEQ, NOTEINDX, FACTSEAL, LABSTOTCST, PARSTOTCST, TOTLABHRS, PRICELVL, NUMRESCHED, Commit_Date, Commit_Time, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, ADDRESS3, COUNTRY, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, SVC_Process_SEQ_Number, svcRMAComponentSeq, QTYTYPE, DEX_ROW_ID FROM .SVC06100 ORDER BY WORECTYPE ASC, BIN ASC, DEX_ROW_ID ASC END ELSE IF @WORECTYPE_RS = @WORECTYPE_RE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, WOSTAT, WOTYPE, SVC_Depot_Priority, PARWORECTYPE, PARWONUM, ORIGIN, REFRENCE, TIMEZONE, ENTDTE, ENTTME, ETADTE, ETATME, ECOMPDT, EComp_Time, RETUDATE, Return_Time, COMPDTE, COMPTME, BIN, USERID, OFFID, CUSTNMBR, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, RETDOCID, LNSEQNBR, SRVRECTYPE, CALLNBR, SERVLITEMSEQ, IBITEMNUM, IBSERIAL, IBEQUIPID, OBITEMNUM, OBSERIAL, OBEQUIPID, QUANTITY, STATIONID, ROUTEID, SEQUENCE1, LOCNCODE, IBANALCODE, OBANALCODE, CUSTOWN, ORDDOCID, TRANSLINESEQ, NOTEINDX, FACTSEAL, LABSTOTCST, PARSTOTCST, TOTLABHRS, PRICELVL, NUMRESCHED, Commit_Date, Commit_Time, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, ADDRESS3, COUNTRY, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, SVC_Process_SEQ_Number, svcRMAComponentSeq, QTYTYPE, DEX_ROW_ID FROM .SVC06100 WHERE WORECTYPE = @WORECTYPE_RS AND BIN BETWEEN @BIN_RS AND @BIN_RE ORDER BY WORECTYPE ASC, BIN ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, WOSTAT, WOTYPE, SVC_Depot_Priority, PARWORECTYPE, PARWONUM, ORIGIN, REFRENCE, TIMEZONE, ENTDTE, ENTTME, ETADTE, ETATME, ECOMPDT, EComp_Time, RETUDATE, Return_Time, COMPDTE, COMPTME, BIN, USERID, OFFID, CUSTNMBR, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, RETDOCID, LNSEQNBR, SRVRECTYPE, CALLNBR, SERVLITEMSEQ, IBITEMNUM, IBSERIAL, IBEQUIPID, OBITEMNUM, OBSERIAL, OBEQUIPID, QUANTITY, STATIONID, ROUTEID, SEQUENCE1, LOCNCODE, IBANALCODE, OBANALCODE, CUSTOWN, ORDDOCID, TRANSLINESEQ, NOTEINDX, FACTSEAL, LABSTOTCST, PARSTOTCST, TOTLABHRS, PRICELVL, NUMRESCHED, Commit_Date, Commit_Time, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, ADDRESS3, COUNTRY, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, SVC_Process_SEQ_Number, svcRMAComponentSeq, QTYTYPE, DEX_ROW_ID FROM .SVC06100 WHERE WORECTYPE BETWEEN @WORECTYPE_RS AND @WORECTYPE_RE AND BIN BETWEEN @BIN_RS AND @BIN_RE ORDER BY WORECTYPE ASC, BIN ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06100F_7] TO [DYNGRP]
GO
