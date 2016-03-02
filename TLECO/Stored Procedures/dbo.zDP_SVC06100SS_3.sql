SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06100SS_3] (@WORECTYPE smallint, @WOSTAT char(3), @SVC_Depot_Priority numeric(19,5)) AS  set nocount on SELECT TOP 1  WORECTYPE, WORKORDNUM, WOSTAT, WOTYPE, SVC_Depot_Priority, PARWORECTYPE, PARWONUM, ORIGIN, REFRENCE, TIMEZONE, ENTDTE, ENTTME, ETADTE, ETATME, ECOMPDT, EComp_Time, RETUDATE, Return_Time, COMPDTE, COMPTME, BIN, USERID, OFFID, CUSTNMBR, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, RETDOCID, LNSEQNBR, SRVRECTYPE, CALLNBR, SERVLITEMSEQ, IBITEMNUM, IBSERIAL, IBEQUIPID, OBITEMNUM, OBSERIAL, OBEQUIPID, QUANTITY, STATIONID, ROUTEID, SEQUENCE1, LOCNCODE, IBANALCODE, OBANALCODE, CUSTOWN, ORDDOCID, TRANSLINESEQ, NOTEINDX, FACTSEAL, LABSTOTCST, PARSTOTCST, TOTLABHRS, PRICELVL, NUMRESCHED, Commit_Date, Commit_Time, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, ADDRESS3, COUNTRY, SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, SVC_Process_SEQ_Number, svcRMAComponentSeq, QTYTYPE, DEX_ROW_ID FROM .SVC06100 WHERE WORECTYPE = @WORECTYPE AND WOSTAT = @WOSTAT AND SVC_Depot_Priority = @SVC_Depot_Priority ORDER BY WORECTYPE ASC, WOSTAT ASC, SVC_Depot_Priority ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06100SS_3] TO [DYNGRP]
GO
