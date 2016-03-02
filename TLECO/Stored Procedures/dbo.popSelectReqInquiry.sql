SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[popSelectReqInquiry]  @I_sTableName varchar(27) = NULL,  @I_sSReqNum varchar(19) = NULL,  @I_sEReqNum varchar(19) = NULL,  @I_dtSReqDocDate datetime = NULL,  @I_dtEReqDocDate datetime = NULL,  @I_dtSRequiredDate datetime = NULL,  @I_dtERequiredDate datetime = NULL,  @I_sSRequestedBy varchar(22) = NULL,  @I_sERequestedBy varchar(22) = NULL,  @I_sSVendorID varchar(17) = NULL,  @I_sEVendorID varchar(17) = NULL,  @I_bShowSaved tinyint  = NULL,  @I_bShowSubmitted tinyint  = NULL,  @I_bShowPartiallyPurchased tinyint  = NULL,  @I_bShowHistory tinyint  = NULL,  @I_nSortBy tinyint  = NULL,  @I_sShowForUser varchar(22) = NULL,  @O_iErrorState int         = NULL output  as  declare @iStatus int,  @iError int,  @bShowSaved tinyint,  @bShowSubmitted tinyint,  @bShowPartiallyPurchased tinyint,  @bShowHistory tinyint  select @O_iErrorState = 0  if( @I_sTableName is NULL or  @I_sSReqNum is NULL or  @I_sEReqNum is NULL or  @I_dtSReqDocDate is NULL or  @I_dtEReqDocDate is NULL or  @I_sSVendorID is NULL or  @I_sEVendorID is NULL or  @I_dtSRequiredDate is NULL or  @I_dtERequiredDate is NULL or  @I_sSRequestedBy is NULL or  @I_sERequestedBy is NULL or  @I_bShowSaved is NULL or  @I_bShowSubmitted is NULL or  @I_bShowPartiallyPurchased is NULL or  @I_bShowHistory is NULL or  @I_sShowForUser is NULL or  @I_nSortBy is NULL)  begin  select          @O_iErrorState = 21022  return end  if (@I_bShowSaved = 1) begin  select @bShowSaved = 1  select @bShowSubmitted = 1  select @bShowPartiallyPurchased = 1 end  if (@I_bShowSubmitted = 1) begin  select @bShowSubmitted = 2  select @bShowPartiallyPurchased = 2 end  if (@I_bShowPartiallyPurchased = 1) begin  select @bShowPartiallyPurchased = 3 end  if (@I_bShowHistory = 1) begin  select @bShowHistory = 3 end  CREATE TABLE #ReqTemp  (  POPRequisitionNumber char(17) NOT NULL,  DOCDATE datetime NOT NULL,  REQDATE datetime NOT NULL,  REQSTDBY char (21) NOT NULL,  RequisitionStatus smallint NOT NULL,  RequisitionDescription char(61) NOT NULL,  PRSTADCD char (15) NOT NULL,  DOCAMNT numeric (19, 5) NOT NULL,  LineNumber smallint NOT NULL,  ORD int NOT NULL,  VENDORID varchar(17) NOT NULL,  HISTORY tinyint NOT NULL,  QTYTOPURCH numeric(19, 5) NOT NULL,  Workflow_Status smallint NOT NULL  )  CREATE INDEX #ReqTemp ON #ReqTemp (POPRequisitionNumber)   if (@I_bShowSaved = 1) or (@I_bShowSubmitted = 1) or (@I_bShowPartiallyPurchased = 1) begin  if (@I_nSortBy = 1) or (@I_nSortBy = 2)   begin   insert #ReqTemp (POPRequisitionNumber,  DOCDATE,  REQDATE,  REQSTDBY,  RequisitionStatus,  RequisitionDescription,  PRSTADCD,  DOCAMNT,  LineNumber,  ORD,  VENDORID,  HISTORY,  QTYTOPURCH,  Workflow_Status)  select POPRequisitionNumber,   DOCDATE,  REQDATE,  REQSTDBY,  RequisitionStatus,  RequisitionDescription,  PRSTADCD,  DOCAMNT,  0,  0,  '',  0,  0,  Workflow_Status  from POP10200   where RequisitionStatus > 0   and (RequisitionStatus = @bShowSaved or RequisitionStatus = @bShowSubmitted or RequisitionStatus = @bShowPartiallyPurchased)   and POPRequisitionNumber between @I_sSReqNum and @I_sEReqNum   and DOCDATE between convert(char(12),@I_dtSReqDocDate,110) and convert(char(12),@I_dtEReqDocDate,110)   and ((@I_sShowForUser <> '' and REQSTDBY = @I_sShowForUser) or @I_sShowForUser = '')    select @iError = @@error  if @iError <> 0  return (@iError)  end   if (@I_nSortBy = 3) or (@I_nSortBy = 4) or (@I_nSortBy = 5)   begin   insert #ReqTemp (POPRequisitionNumber,  DOCDATE,  REQDATE,  REQSTDBY,  RequisitionStatus,  RequisitionDescription,  PRSTADCD,  DOCAMNT,  LineNumber,  ORD,  VENDORID,  HISTORY,  QTYTOPURCH,  Workflow_Status)  select hdr.POPRequisitionNumber,   hdr.DOCDATE,  isnull(line.REQDATE,'1900.01.01'),  isnull(line.REQSTDBY, ''),  isnull(line.RequisitionLineStatus, 0),  hdr.RequisitionDescription,  isnull(line.ADRSCODE, ''),  hdr.DOCAMNT,  isnull(line.LineNumber, 0),  isnull(line.ORD, 0),  isnull(line.VENDORID, ''),  0,  isnull(line.QTYORDER, 0),  hdr.Workflow_Status  from POP10200 as hdr  left outer join POP10210 as line   on hdr.POPRequisitionNumber = line.POPRequisitionNumber  where RequisitionStatus > 0   and (RequisitionStatus = @bShowSaved or RequisitionStatus = @bShowSubmitted or RequisitionStatus = @bShowPartiallyPurchased)   and hdr.POPRequisitionNumber between @I_sSReqNum and @I_sEReqNum   and hdr.DOCDATE between convert(char(12),@I_dtSReqDocDate,110) and convert(char(12),@I_dtEReqDocDate,110)   and ((@I_sShowForUser <> '' and line.REQSTDBY = @I_sShowForUser) or @I_sShowForUser = '')  and (line.REQDATE between convert(char(12),@I_dtSRequiredDate,110) and convert(char(12),@I_dtERequiredDate,110))  and (line.REQSTDBY between @I_sSRequestedBy and @I_sERequestedBy)  and (line.VENDORID  between @I_sSVendorID and @I_sEVendorID)   select @iError = @@error  if @iError <> 0  return (@iError)  end  end if (@I_bShowHistory = 1) begin  if (@I_nSortBy = 1) or (@I_nSortBy = 2)   begin  insert #ReqTemp (POPRequisitionNumber,  DOCDATE,  REQDATE,  REQSTDBY,  RequisitionStatus,  RequisitionDescription,  PRSTADCD,  DOCAMNT,  LineNumber,  ORD,  VENDORID,  HISTORY,  QTYTOPURCH,  Workflow_Status)  select POPRequisitionNumber,   DOCDATE,  REQDATE,  REQSTDBY,  RequisitionStatus,  RequisitionDescription,  PRSTADCD,  DOCAMNT,  0,  0,  '',  1,  0,  Workflow_Status  from POP30200  where RequisitionStatus >= @bShowHistory   and POPRequisitionNumber between @I_sSReqNum and @I_sEReqNum   and DOCDATE between convert(char(12),@I_dtSReqDocDate,110) and convert(char(12),@I_dtEReqDocDate,110)   and ((@I_sShowForUser <> '' and REQSTDBY = @I_sShowForUser) or @I_sShowForUser = '')    select @iError = @@error  if @iError <> 0  return (@iError)  end   if (@I_nSortBy = 3) or (@I_nSortBy = 4) or (@I_nSortBy = 5)   begin   insert #ReqTemp (POPRequisitionNumber,  DOCDATE,  REQDATE,  REQSTDBY,  RequisitionStatus,  RequisitionDescription,  PRSTADCD,  DOCAMNT,  LineNumber,  ORD,  VENDORID,  HISTORY,  QTYTOPURCH,  Workflow_Status)  select hdr.POPRequisitionNumber,   hdr.DOCDATE,  isnull(line.REQDATE,'1900.01.01'),  isnull(line.REQSTDBY, ''),  isnull(line.RequisitionLineStatus, 0),  hdr.RequisitionDescription,  isnull(line.ADRSCODE, ''),  hdr.DOCAMNT,  isnull(line.LineNumber, 0),  isnull(line.ORD, 0),  isnull(line.VENDORID, ''),  1,  0,  hdr.Workflow_Status  from POP30200 as hdr  left outer join POP30210 as line   on hdr.POPRequisitionNumber = line.POPRequisitionNumber  where RequisitionStatus >= @bShowHistory  and hdr.POPRequisitionNumber between @I_sSReqNum and @I_sEReqNum   and hdr.DOCDATE between convert(char(12),@I_dtSReqDocDate,110) and convert(char(12),@I_dtEReqDocDate,110)   and ((@I_sShowForUser <> '' and line.REQSTDBY = @I_sShowForUser) or @I_sShowForUser = '')  and (line.REQDATE between convert(char(12),@I_dtSRequiredDate,110) and convert(char(12),@I_dtERequiredDate,110))  and (line.REQSTDBY between @I_sSRequestedBy and @I_sERequestedBy )  and (line.VENDORID  between @I_sSVendorID and @I_sEVendorID)   select @iError = @@error  if @iError <> 0  return (@iError)  end end  exec  ('insert '+ @I_sTableName   + ' (POPRequisitionNumber,  DOCDATE,  REQDATE,  REQSTDBY,  RequisitionStatus,  RequisitionDescription,  PRSTADCD,  DOCAMNT,  LineNumber,  ORD,  VENDORID,  HISTORY,  QTYTOPURCH,  Workflow_Status)'  + ' select POPRequisitionNumber,  DOCDATE,  REQDATE,  REQSTDBY,  RequisitionStatus,  RequisitionDescription,  PRSTADCD,  DOCAMNT,  LineNumber,  ORD,  VENDORID,  HISTORY,  QTYTOPURCH,  Workflow_Status '  + ' from #ReqTemp '  )   select @iError = @@error if @iError <> 0  return (@iError) return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[popSelectReqInquiry] TO [DYNGRP]
GO
