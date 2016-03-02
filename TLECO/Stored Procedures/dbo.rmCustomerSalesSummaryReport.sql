SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[rmCustomerSalesSummaryReport]  @I_cRMDocumentTemp char(40)    = NULL,  @I_cRMCustomerTemp char(40) = NULL,  @I_cStartCustomerNumber char(15) = NULL,  @I_cEndCustomerNumber char(15) = NULL,  @I_cStartCustomerName char(64) = NULL,  @I_cEndCustomerName char(64) = NULL,  @I_cStartCustomerClass char(15) = NULL,  @I_cEndCustomerClass char(15) = NULL,  @I_cStartUserDefined char(20) = NULL,  @I_cEndUserDefined char(20) = NULL,  @I_cStartSalesPersonID char(15) = NULL,  @I_cEndSalesPersonID char(15) = NULL,  @I_cStartSalesTerritory char(15) = NULL,  @I_cEndSalesTerritory char(15) = NULL,  @I_iStartDocumentType int   = NULL,  @I_iEndDocumentType int   = NULL,  @I_cStartDocumentNumber char(20) = NULL,  @I_cEndDocumentNumber char(20) = NULL,  @I_dStartDocumentDate datetime = NULL,  @I_dEndDocumentDate datetime = NULL,  @I_tRejectNoActivity tinyint  = NULL,  @I_tShowHistoryType tinyint  = NULL,  @I_sSortBy smallint   = NULL,  @O_iErrorState              int         = NULL output as  declare  @cStartDate char(12),  @cEndDate char(12),  @cStartType char(5),  @cEndType char(5),  @cRmSchPymntDocType char(5),  @cSortBy char(1),  @tLoopControl        tinyint,  @iStatus             int,  @iError              int,  @cStartCustomerNumber char(32),  @cEndCustomerNumber char(32),  @cStartCustomerName char(130),  @cEndCustomerName char(130),  @cStartCustomerClass char(32),  @cEndCustomerClass char(32),  @cStartUserDefined char(32),  @cEndUserDefined char(32),  @cStartSalesPersonID char(32),  @cEndSalesPersonID char(32),  @cStartSalesTerritory char(32),  @cEndSalesTerritory char(32),  @cStartDocumentNumber char(32),  @cEndDocumentNumber char(32)  select  @iStatus = 0,  @O_iErrorState = 0  set nocount on  select  @cStartDate = '''' + convert(char(10),@I_dStartDocumentDate,102) + '''',  @cEndDate = '''' + convert(char(10),@I_dEndDocumentDate,102) + '''',  @cStartType = convert(char(5),@I_iStartDocumentType),  @cEndType = convert(char(5),@I_iEndDocumentType),  @cSortBy = convert(char(1),@I_sSortBy)  while @tLoopControl is NULL begin  select @tLoopControl = 1   if (@I_cRMDocumentTemp     is NULL or   @I_cRMCustomerTemp     is NULL or  @I_cStartCustomerNumber is NULL or  @I_cEndCustomerNumber   is NULL or   @I_cStartCustomerName   is NULL or   @I_cEndCustomerName     is NULL or   @I_cStartCustomerClass  is NULL or  @I_cEndCustomerClass    is NULL or   @I_cStartUserDefined    is NULL or   @I_cEndUserDefined     is NULL or   @I_cStartSalesPersonID  is NULL or   @I_cEndSalesPersonID    is NULL or   @I_cStartSalesTerritory is NULL or  @I_cEndSalesTerritory   is NULL or   @I_iStartDocumentType   is NULL or  @I_iEndDocumentType     is NULL or   @I_cStartDocumentNumber is NULL or  @I_cEndDocumentNumber   is NULL or   @I_dStartDocumentDate   is NULL or   @I_dEndDocumentDate is NULL or   @I_tRejectNoActivity    is NULL or   @I_tShowHistoryType     is NULL or   @I_sSortBy          is NULL)  begin  select @O_iErrorState = 20989  break  end    exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'RM_DOC_SCH_PYMNT',   @cRmSchPymntDocType output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartCustomerNumber,  @cStartCustomerNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndCustomerNumber,  @cEndCustomerNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartCustomerName,  @cStartCustomerName output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndCustomerName,  @cEndCustomerName output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartCustomerClass,  @cStartCustomerClass output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndCustomerClass,  @cEndCustomerClass output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartSalesPersonID,  @cStartSalesPersonID output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndSalesPersonID,  @cEndSalesPersonID output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartSalesTerritory,  @cStartSalesTerritory output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndSalesTerritory,  @cEndSalesTerritory output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartUserDefined,  @cStartUserDefined output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndUserDefined,  @cEndUserDefined output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartDocumentNumber,  @cStartDocumentNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndDocumentNumber,  @cEndDocumentNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   exec('  insert into ' +   @I_cRMCustomerTemp + '  select   CUSTNMBR,  case  WHEN (' + @cSortBy + ' = 1) THEN CUSTNMBR  WHEN (' + @cSortBy + ' = 2) THEN CUSTNAME  WHEN (' + @cSortBy + ' = 3) THEN CUSTCLAS  WHEN (' + @cSortBy + ' = 4) THEN USERDEF1  WHEN (' + @cSortBy + ' = 5) THEN SLPRSNID  WHEN (' + @cSortBy + ' = 6) THEN SALSTERR  end,  CUSTNAME,  SLPRSNID,  SALSTERR   from  RM00101 with (NOLOCK)  where  CUSTNMBR >= ' + @cStartCustomerNumber + '   and  CUSTNMBR <= ' + @cEndCustomerNumber + '  and  CUSTNAME >= ' + @cStartCustomerName + '  and  CUSTNAME <= ' + @cEndCustomerName + '  and  CUSTCLAS >= ' + @cStartCustomerClass + '  and  CUSTCLAS <= ' + @cEndCustomerClass + '  and  USERDEF1 >= ' + @cStartUserDefined + '  and  USERDEF1 <= ' + @cEndUserDefined + '  and  SLPRSNID >= ' + @cStartSalesPersonID + '  and  SLPRSNID <= ' + @cEndSalesPersonID + '  and  SALSTERR >= ' + @cStartSalesTerritory + '  and  SALSTERR <= ' + @cEndSalesTerritory + '')   if (@I_tShowHistoryType = 1 or @I_tShowHistoryType = 0)  begin   exec('  insert into ' +   @I_cRMDocumentTemp + '  select  B.CUSTNMBR,  B.DOCNUMBR,  B.CHEKNMBR,  B.RMDTYPAL,  B.DOCDATE,  B.POSTDATE,  B.ORTRXAMT,  B.CURTRXAM,  B.SLSAMNT,  B.COSTAMNT,  B.FRTAMNT,  B.MISCAMNT,  B.TAXAMNT,  B.COMDLRAM,  B.CASHAMNT,  B.DISTKNAM,  B.TRXDSCRN,  B.SLPRSNID,  B.TRDISAMT,  C.DOCABREV,  B.CSPORNBR   from '  + @I_cRMCustomerTemp + ' A WITH(INDEX(AK1' + @I_cRMCustomerTemp + '))  JOIN RM20101 B WITH(NOLOCK INDEX(AK2RM20101))  ON A.CUSTNMBR = B.CUSTNMBR,  RM40401 C  where  B.DOCDATE >= ' + @cStartDate + '  and  B.DOCDATE <= ' + @cEndDate + '   and  B.RMDTYPAL >= ' + @cStartType + '  and  B.RMDTYPAL <= ' + @cEndType + '  and  B.RMDTYPAL <> ' + @cRmSchPymntDocType  + '  and  B.DOCNUMBR >= ' + @cStartDocumentNumber + '  and  B.DOCNUMBR <= ' + @cEndDocumentNumber + '  and  B.RMDTYPAL <> 0   and  B.VOIDSTTS = 0  and  C.RMDTYPAL = B.RMDTYPAL')  end   if (@I_tShowHistoryType = 2 or @I_tShowHistoryType = 0)  begin  exec('  insert into ' + @I_cRMDocumentTemp + '  select  B.CUSTNMBR,  B.DOCNUMBR,  B.CHEKNMBR,  B.RMDTYPAL,  B.DOCDATE,  B.POSTDATE,  B.ORTRXAMT,  B.CURTRXAM,  B.SLSAMNT,  B.COSTAMNT,  B.FRTAMNT,  B.MISCAMNT,  B.TAXAMNT,  B.COMDLRAM,  B.CASHAMNT,  B.DISTKNAM,  B.TRXDSCRN,  B.SLPRSNID,  B.TRDISAMT,  C.DOCABREV,  B.CSPORNBR   from '  + @I_cRMCustomerTemp + ' A WITH(INDEX(AK1' + @I_cRMCustomerTemp + '))   JOIN RM30101 B WITH(NOLOCK INDEX(PKRM30101))  ON A.CUSTNMBR = B.CUSTNMBR,  RM40401 C   where  B.DOCDATE >= ' + @cStartDate + '  and  B.DOCDATE <= ' + @cEndDate + '  and  B.RMDTYPAL >= ' + @cStartType + '  and  B.RMDTYPAL <= ' + @cEndType + '  and  B.RMDTYPAL <> ' + @cRmSchPymntDocType + '  and  B.RMDTYPAL <>  0  and  B.VOIDSTTS = 0  and  C.RMDTYPAL = B.RMDTYPAL')  end    if @I_tRejectNoActivity = 1  begin     exec('delete ' +   @I_cRMCustomerTemp + '  where CUSTNMBR  not in  (select CUSTNMBR from '  + @I_cRMDocumentTemp + ')')  end  end   set nocount off  return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[rmCustomerSalesSummaryReport] TO [DYNGRP]
GO