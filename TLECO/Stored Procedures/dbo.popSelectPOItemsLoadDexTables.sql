SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[popSelectPOItemsLoadDexTables]  @I_vTableName varchar(25) = NULL,  @I_vMarkedItemsList varchar(25) = NULL,  @I_vVendorID varchar(15) = NULL,  @I_vPONumber varchar(17) = NULL,  @I_vRcptCurrencyID varchar(15) = NULL,  @I_vFunctionalCurrency varchar(15) = NULL,  @I_sPOPType smallint = NULL,  @I_iAmountToPost int   = NULL,  @I_vReceiptID varchar(20) = NULL,  @I_iCompanyID int   = NULL,  @I_vUserID varchar(15) = NULL,  @I_dtUserDate datetime = NULL,  @O_nUnpostedShipCount int   = NULL output,  @O_iAmountToPost int   = NULL output,  @O_iErrorState          int      = NULL output  as  declare @iStatus int,  @iError int,  @iCounter int,  @sPOP_POSTATUSGROUP_ACTIVE smallint,  @sPOP_POSTATUS_CLOSED smallint,  @sPOP_POSTATUS_CANCELED smallint,  @sPOP_DOCTYPE_INVOICE smallint,  @sPOP_DOCTYPE_SHIPMENT smallint,  @sPOP_DOCTYPE_SHIPMENT_INVOICE smallint,  @sPOP_DOCTYPE_STANDARD smallint,  @sPOP_DOCTYPE_DROPSHIP smallint,  @sPOP_DOCTYPE_BLANKET_DROPSHIP smallint,  @sPOP_PONOTEID_PO smallint,  @sPOP_POLINESTATUS_CLOSED smallint,  @sPOP_POLINESTATUS_CANCELED smallint,  @sPOP_RECEIPT_POSTED smallint,  @sPOP_RECEIPT_UNPOSTED smallint,  @sRES_RECEIVE smallint,  @sRULE_POSTATE smallint,  @tHOLD tinyint,  @iContractCheck int,  @sPOP_BLANKET_PARENT_LINE smallint,  @sPONUMBER char(17),  @sWF_STATUS_NOTSUBMITTED smallint,  @sWF_STATUS_NOACTIONNEEDED smallint,  @sWF_STATUS_PENDINGACTION smallint,  @sWF_STATUS_RECALLED smallint,  @sWF_STATUS_COMPLETED smallint,  @sWF_STATUS_REJECTED smallint,  @sWF_STATUS_NOTACTIVATED smallint,  @NONIVUseQtyOverageTolerance tinyint,  @NonIVQtyOverTolerancePercent int  select @sPOP_POSTATUSGROUP_ACTIVE = 1,  @sPOP_POSTATUS_CLOSED = 5,  @sPOP_POSTATUS_CANCELED = 6,  @sPOP_DOCTYPE_INVOICE = 2,  @sPOP_DOCTYPE_SHIPMENT = 1,  @sPOP_DOCTYPE_SHIPMENT_INVOICE = 3,  @sPOP_DOCTYPE_STANDARD   = 1,  @sPOP_DOCTYPE_DROPSHIP   = 2,  @sPOP_DOCTYPE_BLANKET_DROPSHIP = 4,  @sPOP_PONOTEID_PO   = 1,  @sPOP_POLINESTATUS_CLOSED = 5,  @sPOP_POLINESTATUS_CANCELED = 6,  @sPOP_RECEIPT_POSTED  = 1,  @sPOP_RECEIPT_UNPOSTED  = 0,  @iStatus  = 0,  @sRES_RECEIVE = 1104,  @sRULE_POSTATE = 1001,  @sPOP_BLANKET_PARENT_LINE = 0,  @sWF_STATUS_NOTSUBMITTED = 1,  @sWF_STATUS_NOACTIONNEEDED = 3,  @sWF_STATUS_PENDINGACTION = 4,  @sWF_STATUS_RECALLED = 5,  @sWF_STATUS_COMPLETED = 6,  @sWF_STATUS_REJECTED = 7,  @sWF_STATUS_NOTACTIVATED = 9  select @O_iErrorState   = 0,  @O_nUnpostedShipCount  = 0,  @O_iAmountToPost  = 0  select @NONIVUseQtyOverageTolerance = isnull(UseQtyOverageTolerance, 0),  @NonIVQtyOverTolerancePercent = isnull(QtyOverTolerancePercent,0)  from POP40100  if( @I_vTableName is NULL or  @I_vVendorID is NULL or  @I_vPONumber is NULL or  @I_vRcptCurrencyID is NULL or  @I_vFunctionalCurrency is NULL or  @I_iAmountToPost is NULL or  @I_vReceiptID is NULL or  @I_iCompanyID is NULL or  @I_vUserID is NULL or  @I_sPOPType is NULL or  @I_dtUserDate is NULL ) begin  select          @O_iErrorState = 21022  return end  create table #Quantities  (  PONUMBER char(17)   not null,  POLNENUM int     not null,  QtyShippedPosted numeric(19,5) not null,  QtyInvoicedPosted numeric(19,5) not null,  QtyRejectedPosted numeric(19,5) not null,  QtyMatchedPosted numeric(19,5) not null,  QtyShippedUnPst numeric(19,5) not null,  QtyInvoicedUnPosted numeric(19,5) not null,  QtyRejectedUnPosted numeric(19,5) not null,  QtyMatchedUnPosted numeric(19,5) not null,  QtyReplaced numeric(19,5) not null,   QtyInvAdj numeric(19,5) not null,  ) CREATE INDEX AK2#Quantities ON #Quantities (PONUMBER, POLNENUM)   create table #QuantitiesPOP10500  (  PONUMBER char(17)    not null,  POLNENUM int     not null,  QtyShipped numeric(19,5) not null,  QtyInvoiced numeric(19,5) not null,  QtyRejected numeric(19,5) not null,  QtyMatched numeric(19,5) not null,  QtyReplaced numeric(19,5) not null,   QtyInvAdj numeric(19,5) not null,  ) CREATE INDEX AK2#QuantitiesPOP10500 ON #QuantitiesPOP10500 (PONUMBER, POLNENUM)   create table #QtyRem  (  PONUMBER char(17)   not null,  POLNENUM int     not null,  QtyRemShip numeric(19,5) not null,  QtyRemIvc numeric(19,5) not null,  QtyRemMatch numeric(19,5) not null,  QtyReplaced numeric(19,5) not null,  Net_QTY_Ordered numeric(19,5) not null,   ) CREATE INDEX AK2#QtyRem ON #QtyRem (PONUMBER, POLNENUM)   CREATE TABLE #PODetailed  (  PONUMBER   char(17)    NOT NULL,   ORD     int            NOT NULL,   ITEMNMBR   char(31)    NOT NULL,   VNDITNUM   char(31)    NOT NULL,   QTYSHPPD   numeric(19,5)  NOT NULL,   QTYINVCD   numeric(19,5)  NOT NULL,   LOCNCODE   char(11)    NOT NULL,   UOFM       char(9)        NOT NULL,   QTYORDER   numeric(19,5)  NOT NULL,   QTYCANCE   numeric(19,5)  NOT NULL,   ITEMDESC   char(101)      NOT NULL,   VNDITDSC   char(101)      NOT NULL,   ORUNTCST   numeric(19,5)  NOT NULL,   UNITCOST   numeric(19,5)  NOT NULL,   DECPLCUR   smallint       NOT NULL,   DECPLQTY   smallint       NOT NULL,   ODECPLCU   smallint       NOT NULL,   MARKED     tinyint        NOT NULL,   CURNCYID   char(15)       NOT NULL,   CURRNIDX   smallint       NOT NULL,   XCHGRATE   numeric(19,7)  NOT NULL,   RATECALC   smallint       NOT NULL,   DENXRATE   numeric(19,7)  NOT NULL,   POTYPE     smallint       NOT NULL,   HOLD       tinyint        NOT NULL,   NONINVEN   smallint       NOT NULL,   NOTEINDX   numeric(19,5)  NOT NULL,  LineNumber int            NOT NULL,  CONTENDDTE datetime       NOT NULL,  POLNESTA   int            NOT NULL,  UnpostedQTYShipped numeric(19,5) NOT NULL,   UnpostedQTYInvoiced numeric(19,5) NOT NULL,   PostedQTYShipped numeric(19,5) NOT NULL,   PostedQTYInvoiced numeric(19,5) NOT NULL,  ProjNum char(15)    NOT NULL,  CostCatID char(15)    NOT NULL,  Workflow_Approval_Status smallint   NOT NULL,   Workflow_Priority        smallint   NOT NULL,   Workflow_Status    smallint NOT NULL,  UseQtyOverageTolerance  tinyint NOT NULL,  QtyOverTolerancePercent  int NOT NULL,  Net_QTY_Ordered numeric(19,5)  NOT NULL,  QtyRemShip numeric(19,5)   NOT NULL,  DEX_ROW_ID int identity NOT NULL  )  CREATE INDEX AK2#PODetailed ON #PODetailed (PONUMBER, ORD)   if @I_vMarkedItemsList = ''  begin  insert #Quantities (PONUMBER, POLNENUM,  QtyShippedPosted, QtyInvoicedPosted, QtyRejectedPosted, QtyMatchedPosted,  QtyShippedUnPst, QtyInvoicedUnPosted, QtyRejectedUnPosted, QtyMatchedUnPosted, QtyReplaced, QtyInvAdj)  select d.PONUMBER,d.ORD, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  from POP10100 h, POP10110 d  where  h.PONUMBER = d.PONUMBER and  h.STATGRP = @sPOP_POSTATUSGROUP_ACTIVE and  h.VENDORID = @I_vVendorID and  (h.POSTATUS <> @sPOP_POSTATUS_CLOSED and h.POSTATUS <> @sPOP_POSTATUS_CANCELED) and  ((@I_vRcptCurrencyID = h.CURNCYID) or (@I_vRcptCurrencyID = '' and h.CURNCYID = @I_vFunctionalCurrency)  or (h.CURNCYID = '' and @I_vRcptCurrencyID = @I_vFunctionalCurrency)) and  ((@I_sPOPType = @sPOP_DOCTYPE_INVOICE) or (h.POTYPE <> @sPOP_DOCTYPE_DROPSHIP and h.POTYPE <> @sPOP_DOCTYPE_BLANKET_DROPSHIP)) and  d.POLNESTA <> @sPOP_POLINESTATUS_CLOSED and  d.POLNESTA <> @sPOP_POLINESTATUS_CANCELED and  (not exists(select PSTGSTUS from POP10170 pay where pay.PONUMBER = d.PONUMBER and pay.PSTGSTUS <> 80))  end else  begin   create table #MarkedItems  (  PONUMBER char(17) not null,  MKTOPROC int not null  )  CREATE INDEX POs ON #MarkedItems (PONUMBER)    exec ('insert #MarkedItems (PONUMBER,MKTOPROC) select DOCNUMBR, MKTOPROC from ' + @I_vMarkedItemsList )   insert #Quantities (PONUMBER, POLNENUM,  QtyShippedPosted, QtyInvoicedPosted, QtyRejectedPosted, QtyMatchedPosted,  QtyShippedUnPst, QtyInvoicedUnPosted, QtyRejectedUnPosted, QtyMatchedUnPosted, QtyReplaced, QtyInvAdj)  select d.PONUMBER,d.ORD, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  from POP10100 h, POP10110 d, #MarkedItems  where  h.PONUMBER = d.PONUMBER and  h.PONUMBER = #MarkedItems.PONUMBER and  h.STATGRP  = @sPOP_POSTATUSGROUP_ACTIVE and  h.VENDORID = @I_vVendorID and  (h.POSTATUS <> @sPOP_POSTATUS_CLOSED and h.POSTATUS <> @sPOP_POSTATUS_CANCELED) and  ((@I_vRcptCurrencyID = h.CURNCYID) or (@I_vRcptCurrencyID = '' and h.CURNCYID = @I_vFunctionalCurrency)  or (h.CURNCYID = '' and @I_vRcptCurrencyID = @I_vFunctionalCurrency)) and  ((@I_sPOPType = @sPOP_DOCTYPE_INVOICE) or (h.POTYPE <> @sPOP_DOCTYPE_DROPSHIP and h.POTYPE <> @sPOP_DOCTYPE_BLANKET_DROPSHIP)) and  d.POLNESTA <> @sPOP_POLINESTATUS_CLOSED and  d.POLNESTA <> @sPOP_POLINESTATUS_CANCELED and  (not exists(select PSTGSTUS from POP10170 pay where pay.PONUMBER = d.PONUMBER and pay.PSTGSTUS <> 80))   end  insert #QuantitiesPOP10500 (PONUMBER, POLNENUM, QtyShipped, QtyInvoiced, QtyRejected, QtyMatched, QtyReplaced, QtyInvAdj) select r.PONUMBER,r.POLNENUM, sum(r.QTYSHPPD), sum(r.QTYINVCD), sum(r.QTYREJ), sum(r.QTYMATCH), sum(r.QTYREPLACED), sum(r.QTYINVADJ)  from #Quantities t, POP10500 r  where t.PONUMBER = r.PONUMBER and  t.POLNENUM = r.POLNENUM and  (r.Status = @sPOP_RECEIPT_POSTED)  group by r.PONUMBER, r.POLNENUM, r.Status  update t  set  t.QtyShippedPosted=p.QtyShipped, t.QtyInvoicedPosted=p.QtyInvoiced,  t.QtyRejectedPosted=p.QtyRejected, t.QtyMatchedPosted=p.QtyMatched, t.QtyReplaced=p.QtyReplaced, t.QtyInvAdj=p.QtyInvAdj  from #Quantities t, #QuantitiesPOP10500 p  where t.PONUMBER = p.PONUMBER and  t.POLNENUM = p.POLNENUM  truncate table #QuantitiesPOP10500  insert #QuantitiesPOP10500 (PONUMBER, POLNENUM, QtyShipped, QtyInvoiced, QtyRejected, QtyMatched, QtyReplaced, QtyInvAdj) select r.PONUMBER,r.POLNENUM, sum(r.QTYSHPPD), sum(r.QTYINVCD), sum(r.QTYREJ), sum(r.QTYMATCH), 0, 0  from #Quantities t, POP10500 r  where t.PONUMBER = r.PONUMBER and  t.POLNENUM = r.POLNENUM and  (r.Status = @sPOP_RECEIPT_UNPOSTED)  group by r.PONUMBER, r.POLNENUM, r.Status  update t  set  t.QtyShippedUnPst=p.QtyShipped, t.QtyInvoicedUnPosted=p.QtyInvoiced, t.QtyRejectedUnPosted=p.QtyRejected, t.QtyMatchedUnPosted=p.QtyMatched  from #Quantities t, #QuantitiesPOP10500 p  where t.PONUMBER = p.PONUMBER and  t.POLNENUM = p.POLNENUM  insert #QtyRem (PONUMBER, POLNENUM, QtyRemShip, QtyRemIvc, QtyRemMatch, QtyReplaced, Net_QTY_Ordered) select d.PONUMBER, d.ORD,  d.QTYORDER - d.QTYCANCE - ((p.QtyShippedUnPst - p.QtyRejectedUnPosted) + (p.QtyShippedPosted - p.QtyRejectedPosted) - p.QtyReplaced),  d.QTYORDER - d.QTYCANCE - p.QtyInvoicedPosted - p.QtyInvoicedUnPosted + p.QtyReplaced - p.QtyInvAdj,  (p.QtyShippedPosted - p.QtyRejectedPosted) - (p.QtyMatchedUnPosted + p.QtyMatchedPosted), p.QtyReplaced,  (d.QTYORDER - d.QTYCANCE)  from POP10110 d, #Quantities p  where d.PONUMBER = p.PONUMBER and  d.ORD = p.POLNENUM  if (@I_sPOPType <> @sPOP_DOCTYPE_INVOICE)  begin  select @O_nUnpostedShipCount = 0  end else  begin  select @O_nUnpostedShipCount = count(*)  from #QtyRem t, POP10100 h  where t.PONUMBER = h.PONUMBER and  t.PONUMBER = @I_vPONumber and  t.QtyRemIvc > 0 and  t.QtyRemMatch <=0 and  h.POTYPE <> @sPOP_DOCTYPE_DROPSHIP and  h.POTYPE <> @sPOP_DOCTYPE_BLANKET_DROPSHIP  end  insert #PODetailed  (PONUMBER, ORD, ITEMNMBR, VNDITNUM, QTYSHPPD, QTYINVCD, LOCNCODE, UOFM, QTYORDER, QTYCANCE, ITEMDESC, VNDITDSC, ORUNTCST, UNITCOST,  DECPLCUR, DECPLQTY, ODECPLCU, MARKED, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, POTYPE, HOLD, NONINVEN, NOTEINDX, LineNumber, CONTENDDTE, POLNESTA,  UnpostedQTYShipped, UnpostedQTYInvoiced, PostedQTYShipped, PostedQTYInvoiced, ProjNum, CostCatID, Workflow_Approval_Status, Workflow_Priority, Workflow_Status,  UseQtyOverageTolerance, QtyOverTolerancePercent, Net_QTY_Ordered, QtyRemShip)  select d.PONUMBER,d.ORD,d.ITEMNMBR,d.VNDITNUM, 0,0,d.LOCNCODE,d.UOFM,d.QTYORDER,d.QTYCANCE,d.ITEMDESC,d.VNDITDSC,d.ORUNTCST,d.UNITCOST,  d.DECPLCUR,d.DECPLQTY,d.ODECPLCU,0,d.CURNCYID,d.CURRNIDX,d.XCHGRATE,d.RATECALC,d.DENXRATE,h.POTYPE,h.HOLD,d.NONINVEN,h.PONOTIDS_1, d.LineNumber, h.CONTENDDTE, d.POLNESTA,  p.QtyShippedUnPst - p.QtyRejectedUnPosted, p.QtyInvoicedUnPosted,   p.QtyShippedPosted - p.QtyRejectedPosted, p.QtyInvoicedPosted, d.ProjNum, d.CostCatID, h.Workflow_Approval_Status, h.Workflow_Priority, h.Workflow_Status,  case d.NONINVEN  when 0 then (select isnull(i.UseQtyOverageTolerance, 0) from IV00101 i where d.ITEMNMBR = i.ITEMNMBR)  when 1 then @NONIVUseQtyOverageTolerance  end,  case d.NONINVEN  when 0 then (select isnull(i.QtyOverTolerancePercent, 0) from IV00101 i where d.ITEMNMBR = i.ITEMNMBR)  when 1 then @NonIVQtyOverTolerancePercent  end,  t.Net_QTY_Ordered,   t.QtyRemShip   from #QtyRem t, POP10110 d, POP10100 h, #Quantities p  where d.LineNumber <> @sPOP_BLANKET_PARENT_LINE and  d.PONUMBER = h.PONUMBER and  d.PONUMBER = t.PONUMBER and  d.PONUMBER = p.PONUMBER and  d.ORD = t.POLNENUM and  d.ORD = p.POLNENUM and  ( ((@I_sPOPType = @sPOP_DOCTYPE_SHIPMENT or @I_sPOPType = @sPOP_DOCTYPE_SHIPMENT_INVOICE) and t.QtyRemShip > 0)  or  (@I_sPOPType = @sPOP_DOCTYPE_INVOICE and (t.QtyRemMatch > 0 or (t.QtyRemIvc > 0 and (h.POTYPE = @sPOP_DOCTYPE_DROPSHIP or h.POTYPE = @sPOP_DOCTYPE_BLANKET_DROPSHIP)))) )   if @I_vMarkedItemsList = ''  begin  if ((@I_vPONumber <> '') and (exists (select 1 from #PODetailed where PONUMBER = @I_vPONumber)))  begin   if (not exists(select 1 from DYNAMICS..SY00801   where RULEID = @sRULE_POSTATE and CMPANYID = @I_iCompanyID and RSRCID = @I_vPONumber and RSCSTATE <> @sRES_RECEIVE))  begin   select @tHOLD = HOLD from POP10100 where PONUMBER = @I_vPONumber  if (@tHOLD = 0)   begin   select @iCounter = count(*) from #PODetailed where  (PONUMBER = @I_vPONumber) and  ((POLNESTA <> 1) or  (POLNESTA = 1 and  ((POTYPE = @sPOP_DOCTYPE_STANDARD or  POTYPE = @sPOP_DOCTYPE_DROPSHIP) and  (CONTENDDTE >= @I_dtUserDate or  CONTENDDTE = '1900-01-01 00:00:00.000'))))   if @iCounter > 0  begin   if (exists (select 1 from DYNAMICS..SY00801 where RULEID = @sRULE_POSTATE and  CMPANYID = @I_iCompanyID and  RSRCID = @I_vPONumber and  RSRCSBID = @I_vReceiptID and  USERID = @I_vUserID))  begin  update a set USECT = USECT + @iCounter  from DYNAMICS..SY00801 a   where a.RULEID = @sRULE_POSTATE and  a.CMPANYID = @I_iCompanyID and  a.RSRCID = @I_vPONumber and  a.RSRCSBID = @I_vReceiptID and  a.USERID = @I_vUserID  end  else  begin  insert DYNAMICS..SY00801 (RULEID, RSRCID, RSRCSBID, CMPANYID, USERID, RSCSTATE, RSRDESC, USECT)  select @sRULE_POSTATE, @I_vPONumber, @I_vReceiptID, @I_iCompanyID, @I_vUserID, @sRES_RECEIVE, '', @iCounter  end   update #PODetailed set MARKED = 1 where (PONUMBER = @I_vPONumber) and  ((POLNESTA <> 1) or  (POLNESTA = 1 and  ((POTYPE = @sPOP_DOCTYPE_STANDARD or  POTYPE = @sPOP_DOCTYPE_DROPSHIP) and  (CONTENDDTE >= @I_dtUserDate or  CONTENDDTE = '1900-01-01 00:00:00.000'))))   select @O_iAmountToPost = @I_iAmountToPost + @iCounter   update p  set p.QTYSHPPD = q.QtyRemShip   from #PODetailed p, #QtyRem q  where p.PONUMBER = q.PONUMBER and  p.ORD = q.POLNENUM and  p.QTYSHPPD = 0 and  @I_sPOPType <> @sPOP_DOCTYPE_INVOICE and  p.PONUMBER = @I_vPONumber and  p.MARKED = 1  update p  set p.QTYINVCD = q.QtyRemShip   from #PODetailed p, #QtyRem q  where p.PONUMBER = q.PONUMBER and  p.ORD = q.POLNENUM and  p.QTYINVCD = 0 and  @I_sPOPType <> @sPOP_DOCTYPE_SHIPMENT and  q.QtyRemShip < QtyRemIvc and  @I_sPOPType = @sPOP_DOCTYPE_SHIPMENT_INVOICE and  p.PONUMBER = @I_vPONumber and  p.MARKED = 1  update p  set p.QTYINVCD = q.QtyRemIvc  from #PODetailed p, #QtyRem q  where p.PONUMBER = q.PONUMBER and  p.ORD = q.POLNENUM and  @I_sPOPType <> @sPOP_DOCTYPE_SHIPMENT and  p.QTYINVCD = 0 and  QtyRemIvc > 0 and  @I_sPOPType = @sPOP_DOCTYPE_SHIPMENT_INVOICE and  p.PONUMBER = @I_vPONumber and  p.MARKED = 1  update p  set p.QTYINVCD = q.QtyRemIvc  from #PODetailed p, #QtyRem q  where p.PONUMBER = q.PONUMBER and  p.ORD = q.POLNENUM and  @I_sPOPType <> @sPOP_DOCTYPE_SHIPMENT and  p.QTYINVCD = 0 and  @I_sPOPType = @sPOP_DOCTYPE_INVOICE and  (p.POTYPE = @sPOP_DOCTYPE_DROPSHIP or p.POTYPE = @sPOP_DOCTYPE_BLANKET_DROPSHIP) and  p.PONUMBER = @I_vPONumber and  p.MARKED = 1   update p  set p.QTYINVCD = q.QtyRemMatch  from #PODetailed p, #QtyRem q  where p.PONUMBER = q.PONUMBER and  p.ORD = q.POLNENUM and  @I_sPOPType <> @sPOP_DOCTYPE_SHIPMENT and  p.QTYINVCD = 0 and  @I_sPOPType = @sPOP_DOCTYPE_INVOICE and  p.PONUMBER = @I_vPONumber and  p.MARKED = 1  end   end   end   end   end  else  BEGIN  DECLARE scMarkedItems SCROLL CURSOR FOR   SELECT PONUMBER  FROM #MarkedItems   OPEN scMarkedItems   FETCH NEXT FROM scMarkedItems  INTO @sPONUMBER   IF @@FETCH_STATUS <> 0  BEGIN  CLOSE scMarkedItems  DEALLOCATE scMarkedItems  END  ELSE  BEGIN  while @@FETCH_STATUS = 0   begin  if exists (select 1 from #PODetailed where PONUMBER = @sPONUMBER)  begin  if (not exists(select 1 from DYNAMICS..SY00801   where RULEID = @sRULE_POSTATE and CMPANYID = @I_iCompanyID and RSRCID = @sPONUMBER and RSCSTATE <> @sRES_RECEIVE))  begin  select @tHOLD = HOLD from POP10100 where PONUMBER = @sPONUMBER   if (@tHOLD = 0)   begin   select @iCounter = count(*) from #PODetailed where  (PONUMBER = @sPONUMBER) and  ((POLNESTA <> 1) or  (POLNESTA = 1 and  ((POTYPE = @sPOP_DOCTYPE_STANDARD or  POTYPE = @sPOP_DOCTYPE_DROPSHIP) and  (CONTENDDTE >= @I_dtUserDate or  CONTENDDTE = '1900-01-01 00:00:00.000')))  and Workflow_Status in (@sWF_STATUS_NOACTIONNEEDED, @sWF_STATUS_COMPLETED,@sWF_STATUS_NOTACTIVATED))   if @iCounter > 0  begin   if (exists (select 1 from DYNAMICS..SY00801 where RULEID = @sRULE_POSTATE and  CMPANYID = @I_iCompanyID and  RSRCID = @sPONUMBER and  RSRCSBID = @I_vReceiptID and  USERID = @I_vUserID))  begin  update a set USECT = USECT + @iCounter  from DYNAMICS..SY00801 a   where a.RULEID = @sRULE_POSTATE and  a.CMPANYID = @I_iCompanyID and  a.RSRCID = @sPONUMBER and  a.RSRCSBID = @I_vReceiptID and  a.USERID = @I_vUserID  end  else  begin  insert DYNAMICS..SY00801 (RULEID, RSRCID, RSRCSBID, CMPANYID, USERID, RSCSTATE, RSRDESC, USECT)  select @sRULE_POSTATE, @sPONUMBER, @I_vReceiptID, @I_iCompanyID, @I_vUserID, @sRES_RECEIVE, '', @iCounter  end   update #PODetailed set MARKED = 1 where (PONUMBER = @sPONUMBER) and  ((POLNESTA <> 1) or  (POLNESTA = 1 and  ((POTYPE = @sPOP_DOCTYPE_STANDARD or  POTYPE = @sPOP_DOCTYPE_DROPSHIP) and  (CONTENDDTE >= @I_dtUserDate or  CONTENDDTE = '1900-01-01 00:00:00.000')))  and Workflow_Status in (@sWF_STATUS_NOACTIONNEEDED,   @sWF_STATUS_COMPLETED,@sWF_STATUS_NOTACTIVATED))   select @O_iAmountToPost = @I_iAmountToPost + @iCounter   update p  set p.QTYSHPPD = q.QtyRemShip  from #PODetailed p, #QtyRem q  where p.PONUMBER = q.PONUMBER and  p.ORD = q.POLNENUM and  p.QTYSHPPD = 0 and  @I_sPOPType <> @sPOP_DOCTYPE_INVOICE and  p.PONUMBER = @sPONUMBER and  p.MARKED = 1  update p  set p.QTYINVCD = q.QtyRemShip  from #PODetailed p, #QtyRem q  where p.PONUMBER = q.PONUMBER and  p.ORD = q.POLNENUM and  p.QTYINVCD = 0 and  @I_sPOPType <> @sPOP_DOCTYPE_SHIPMENT and  q.QtyRemShip < QtyRemIvc and  @I_sPOPType = @sPOP_DOCTYPE_SHIPMENT_INVOICE and  p.PONUMBER = @sPONUMBER and  p.MARKED = 1  update p  set p.QTYINVCD = q.QtyRemIvc  from #PODetailed p, #QtyRem q  where p.PONUMBER = q.PONUMBER and  p.ORD = q.POLNENUM and  @I_sPOPType <> @sPOP_DOCTYPE_SHIPMENT and  p.QTYINVCD = 0 and  QtyRemIvc > 0 and  @I_sPOPType = @sPOP_DOCTYPE_SHIPMENT_INVOICE and  p.PONUMBER = @sPONUMBER and  p.MARKED = 1  update p  set p.QTYINVCD = q.QtyRemIvc  from #PODetailed p, #QtyRem q  where p.PONUMBER = q.PONUMBER and  p.ORD = q.POLNENUM and  @I_sPOPType <> @sPOP_DOCTYPE_SHIPMENT and  p.QTYINVCD = 0 and  @I_sPOPType = @sPOP_DOCTYPE_INVOICE and  (p.POTYPE = @sPOP_DOCTYPE_DROPSHIP or p.POTYPE = @sPOP_DOCTYPE_BLANKET_DROPSHIP) and  p.PONUMBER = @sPONUMBER and  p.MARKED = 1   update p  set p.QTYINVCD = q.QtyRemMatch  from #PODetailed p, #QtyRem q  where p.PONUMBER = q.PONUMBER and  p.ORD = q.POLNENUM and  @I_sPOPType <> @sPOP_DOCTYPE_SHIPMENT and  p.QTYINVCD = 0 and  @I_sPOPType = @sPOP_DOCTYPE_INVOICE and  p.PONUMBER = @sPONUMBER and  p.MARKED = 1  end  end  end  end  FETCH NEXT FROM scMarkedItems  INTO @sPONUMBER  end   CLOSE scMarkedItems  DEALLOCATE scMarkedItems  END  END   exec  ('insert '+@I_vTableName   + ' (PONUMBER, ORD, ITEMNMBR, VNDITNUM, QTYSHPPD, QTYINVCD, LOCNCODE, UOFM, QTYORDER, QTYCANCE, ITEMDESC, VNDITDSC, ORUNTCST, UNITCOST, DECPLCUR, DECPLQTY, ODECPLCU, '  + ' MARKED, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, POTYPE, HOLD, NONINVEN, NOTEINDX, LineNumber, CONTENDDTE, POLNESTA, UnpostedQTYShipped, UnpostedQTYInvoiced, PostedQTYShipped, '  + ' PostedQTYInvoiced, ProjNum, CostCatID, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, UseQtyOverageTolerance, QtyOverTolerancePercent, Net_QTY_Ordered, QTYREMAI, TrackedDropShipped ) '  + ' select PONUMBER, ORD, ITEMNMBR, VNDITNUM, QTYSHPPD, QTYINVCD, LOCNCODE, UOFM, QTYORDER, QTYCANCE, ITEMDESC, VNDITDSC, ORUNTCST, UNITCOST, DECPLCUR, DECPLQTY, ODECPLCU, '  + ' MARKED, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, POTYPE, HOLD, NONINVEN, NOTEINDX, LineNumber, CONTENDDTE, POLNESTA, UnpostedQTYShipped, UnpostedQTYInvoiced, PostedQTYShipped, '  + ' PostedQTYInvoiced, ProjNum, CostCatID, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, UseQtyOverageTolerance, QtyOverTolerancePercent, Net_QTY_Ordered, QtyRemShip, 0 '  + ' from #PODetailed'  )   drop table #Quantities drop table #QuantitiesPOP10500 drop table #QtyRem drop table #PODetailed  return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[popSelectPOItemsLoadDexTables] TO [DYNGRP]
GO
