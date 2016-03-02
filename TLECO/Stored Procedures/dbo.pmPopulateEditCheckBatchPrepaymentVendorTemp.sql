SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[pmPopulateEditCheckBatchPrepaymentVendorTemp]  @I_cVendorTemp char(40)        = NULL,  @I_cBatchSource char(15) = NULL,  @I_cBatchNumber char(15) = NULL,  @I_cCurrencyID char(15) = NULL,   @I_tFuncBatch tinyint=NULL,  @IO_cyBatchTotal numeric(9,2)  = 0 output,  @O_iErrorState int  = NULL output as  declare  @cBatchNumber char(32),  @cBatchSource char(32),  @cCurrencyID char(32),  @cTempBatchNumber char(15),  @iError int,  @iStatus int,  @TRUE int,  @FALSE int  select  @O_iErrorState   = 0,  @iStatus         = 0   if @I_cVendorTemp is NULL or  @I_cBatchSource is NULL or  @I_cBatchNumber is NULL or  @I_cCurrencyID is NULL or  @I_tFuncBatch is NULL  begin  select @O_iErrorState = 21095  return  end    exec @iStatus = DYNAMICS..smGetConstantInt 'TRUE', @TRUE output, @O_iErrorState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if ( (@iStatus <> 0) or (@O_iErrorState <> 0) )  return (@iStatus)  exec @iStatus = DYNAMICS..smGetConstantInt 'FALSE', @FALSE output, @O_iErrorState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if ( (@iStatus <> 0) or (@O_iErrorState <> 0) )  return (@iStatus)   Exec @iStatus = smFormatStringsForExecs  @I_cBatchNumber,  @cBatchNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if (@iStatus <> 0) or (@O_iErrorState <> 0)  return (@iStatus)   Exec @iStatus = smFormatStringsForExecs  @I_cBatchSource,  @cBatchSource output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if (@iStatus <> 0) or (@O_iErrorState <> 0)  return (@iStatus)   Exec @iStatus = smFormatStringsForExecs  @I_cCurrencyID,  @cCurrencyID output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if (@iStatus <> 0) or (@O_iErrorState <> 0)  return (@iStatus)   exec ('delete ' + @I_cVendorTemp)   exec('insert into ' + @I_cVendorTemp + '  select  V.VENDORID,  V.VENDNAME,  V.VNDCLSID,  V.PYMNTPRI,  case ' + @I_tFuncBatch + '   when ' + @TRUE + ' then  (select sum(P.CHEKTOTL) from PM10300 P  where  P.BACHNUMB = ' + @cBatchNumber + '   and P.BCHSOURC  = ' + @cBatchSource + '   and V.VENDORID = P.VENDORID  and P.PONUMBER <> ''''  and P.CURNCYID = ' + @cCurrencyID + '   )  else  (select sum(M.ORCHKTTL) from PM10300 P, MC020103 M  where  P.BACHNUMB = ' + @cBatchNumber + '   and P.BCHSOURC  = ' + @cBatchSource + '   and V.VENDORID = P.VENDORID  and P.PMNTNMBR = M.PMNTNMBR  and P.DOCTYPE = M.DOCTYPE  and P.PONUMBER <> ''''  and P.CURNCYID = ' + @cCurrencyID + '   )  end as TotAmtPaid,  1  from  PM00200 V  where  exists (select 1 from PM10300 P  where  P.BACHNUMB = ' + @cBatchNumber + '   and P.BCHSOURC  = ' + @cBatchSource + '   and V.VENDORID = P.VENDORID  and P.CURNCYID = ' + @cCurrencyID + '   and P.PONUMBER <> ''''  and P.PONUMBER not in (select PONUMBER from POA40003 where POA_PO_Approval_Status=1)  )   ')   exec('insert into ' + @I_cVendorTemp + '  select  V.VENDORID,  V.VENDNAME,  V.VNDCLSID,  V.PYMNTPRI,  0,  0  from  PM00200 V  where  V.VENDORID not in (select VENDORID from ' + @I_cVendorTemp + ')  and V.VENDORID in   (select VENDORID from (select B.VENDORID,B.PONUMBER,B.CURNCYID,  A.CURTRXAM,A.DOCNUMBR   from POP10170 A, POP10100 B   where A.PONUMBER=B.PONUMBER and A.PrepaymentSource=0   and A.PMNTNMBR='''' and B.HOLD=0  and A.PYENTTYP=0 and B.CURNCYID = ' + @cCurrencyID + '  and B.PONUMBER not in   (select PONUMBER from POA40003 where POA_PO_Approval_Status=1)  and B.PONUMBER not in  (select PONUMBER from PM10300 where CURNCYID = ' + @cCurrencyID + '  and BCHSOURC = ' + @cBatchSource + '  and BACHNUMB <> '''')) T   where T.VENDORID = V.VENDORID and T.CURTRXAM > 0  )  and V.HOLD = 0  ')  return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[pmPopulateEditCheckBatchPrepaymentVendorTemp] TO [DYNGRP]
GO