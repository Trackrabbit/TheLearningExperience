SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40200SI] (@DOCID char(15), @NOTEINDX numeric(19,5), @SOPTYPE smallint, @SETUPKEY smallint, @DOCTYABR char(3), @SOPNUMBE char(21), @COMMNTID char(15), @DOCUFORM smallint, @DAYTOEXP smallint, @ALLREPEA tinyint, @ALLOCABY smallint, @USEPROSP tinyint, @USNXTINV tinyint, @USPFULPR tinyint, @QUOTOINV tinyint, @QUOTOORD tinyint, @INVTOBAC tinyint, @BACTOINV tinyint, @BACTOORD tinyint, @ORDTOBAC tinyint, @ORDTOORD tinyint, @USDOCID1 char(15), @USDOCID2 char(15), @QTYDEFAU smallint, @SOPALLOW_1 tinyint, @SOPALLOW_2 tinyint, @SOPALLOW_3 tinyint, @SOPALLOW_4 tinyint, @SOPALLOW_5 tinyint, @SOPALLOW_6 tinyint, @SOPALLOW_7 tinyint, @SOPALLOW_8 tinyint, @SOPALLOW_9 tinyint, @SOPALLOW_10 tinyint, @SOPPSSWD_1 char(11), @SOPPSSWD_2 char(11), @SOPPSSWD_3 char(11), @SOPPSSWD_4 char(11), @SOPPSSWD_5 char(11), @SOPPSSWD_6 char(11), @SOPPSSWD_7 char(11), @SOPPSSWD_8 char(11), @SOPPSSWD_9 char(11), @SOPPSSWD_10 char(11), @SOPSEQNC_1 smallint, @SOPSEQNC_2 smallint, @SOPSEQNC_3 smallint, @SOPSEQNC_4 smallint, @SOPSEQNC_5 smallint, @SOPSEQNC_6 smallint, @SOPSEQNC_7 smallint, @SOPSEQNC_8 smallint, @USER2ENT char(15), @CREATDDT datetime, @MODIFDT datetime, @SHPPGDOC tinyint, @CORRCTN tinyint, @SIMPLIFD tinyint, @ALLBACKODPRT tinyint, @XORDINVC tinyint, @USDOCID3 char(15), @WORKFLOWENABLED tinyint, @UPDTONPRINT tinyint, @CREDITLIMITHOLDID char(15), @UPDTACTUALSHPDT tinyint, @WORKFLOWHOLDID char(15), @OVERRIDEIVCBILLQTY tinyint, @ENABLEBACKORDER tinyint, @ENABLECANCELED tinyint, @SOPSTATUSACTIVE_1 tinyint, @SOPSTATUSACTIVE_2 tinyint, @SOPSTATUSACTIVE_3 tinyint, @SOPSTATUSACTIVE_4 tinyint, @SOPSTATUSACTIVE_5 tinyint, @SOPSTATUSACTIVE_6 tinyint, @SOPSTATUSACTIVE_7 tinyint, @SOPSTATUSACTIVE_8 tinyint, @SOPSTATUSACTIVE_9 tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SOP40200 (DOCID, NOTEINDX, SOPTYPE, SETUPKEY, DOCTYABR, SOPNUMBE, COMMNTID, DOCUFORM, DAYTOEXP, ALLREPEA, ALLOCABY, USEPROSP, USNXTINV, USPFULPR, QUOTOINV, QUOTOORD, INVTOBAC, BACTOINV, BACTOORD, ORDTOBAC, ORDTOORD, USDOCID1, USDOCID2, QTYDEFAU, SOPALLOW_1, SOPALLOW_2, SOPALLOW_3, SOPALLOW_4, SOPALLOW_5, SOPALLOW_6, SOPALLOW_7, SOPALLOW_8, SOPALLOW_9, SOPALLOW_10, SOPPSSWD_1, SOPPSSWD_2, SOPPSSWD_3, SOPPSSWD_4, SOPPSSWD_5, SOPPSSWD_6, SOPPSSWD_7, SOPPSSWD_8, SOPPSSWD_9, SOPPSSWD_10, SOPSEQNC_1, SOPSEQNC_2, SOPSEQNC_3, SOPSEQNC_4, SOPSEQNC_5, SOPSEQNC_6, SOPSEQNC_7, SOPSEQNC_8, USER2ENT, CREATDDT, MODIFDT, SHPPGDOC, CORRCTN, SIMPLIFD, ALLBACKODPRT, XORDINVC, USDOCID3, WORKFLOWENABLED, UPDTONPRINT, CREDITLIMITHOLDID, UPDTACTUALSHPDT, WORKFLOWHOLDID, OVERRIDEIVCBILLQTY, ENABLEBACKORDER, ENABLECANCELED, SOPSTATUSACTIVE_1, SOPSTATUSACTIVE_2, SOPSTATUSACTIVE_3, SOPSTATUSACTIVE_4, SOPSTATUSACTIVE_5, SOPSTATUSACTIVE_6, SOPSTATUSACTIVE_7, SOPSTATUSACTIVE_8, SOPSTATUSACTIVE_9) VALUES ( @DOCID, @NOTEINDX, @SOPTYPE, @SETUPKEY, @DOCTYABR, @SOPNUMBE, @COMMNTID, @DOCUFORM, @DAYTOEXP, @ALLREPEA, @ALLOCABY, @USEPROSP, @USNXTINV, @USPFULPR, @QUOTOINV, @QUOTOORD, @INVTOBAC, @BACTOINV, @BACTOORD, @ORDTOBAC, @ORDTOORD, @USDOCID1, @USDOCID2, @QTYDEFAU, @SOPALLOW_1, @SOPALLOW_2, @SOPALLOW_3, @SOPALLOW_4, @SOPALLOW_5, @SOPALLOW_6, @SOPALLOW_7, @SOPALLOW_8, @SOPALLOW_9, @SOPALLOW_10, @SOPPSSWD_1, @SOPPSSWD_2, @SOPPSSWD_3, @SOPPSSWD_4, @SOPPSSWD_5, @SOPPSSWD_6, @SOPPSSWD_7, @SOPPSSWD_8, @SOPPSSWD_9, @SOPPSSWD_10, @SOPSEQNC_1, @SOPSEQNC_2, @SOPSEQNC_3, @SOPSEQNC_4, @SOPSEQNC_5, @SOPSEQNC_6, @SOPSEQNC_7, @SOPSEQNC_8, @USER2ENT, @CREATDDT, @MODIFDT, @SHPPGDOC, @CORRCTN, @SIMPLIFD, @ALLBACKODPRT, @XORDINVC, @USDOCID3, @WORKFLOWENABLED, @UPDTONPRINT, @CREDITLIMITHOLDID, @UPDTACTUALSHPDT, @WORKFLOWHOLDID, @OVERRIDEIVCBILLQTY, @ENABLEBACKORDER, @ENABLECANCELED, @SOPSTATUSACTIVE_1, @SOPSTATUSACTIVE_2, @SOPSTATUSACTIVE_3, @SOPSTATUSACTIVE_4, @SOPSTATUSACTIVE_5, @SOPSTATUSACTIVE_6, @SOPSTATUSACTIVE_7, @SOPSTATUSACTIVE_8, @SOPSTATUSACTIVE_9) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40200SI] TO [DYNGRP]
GO
