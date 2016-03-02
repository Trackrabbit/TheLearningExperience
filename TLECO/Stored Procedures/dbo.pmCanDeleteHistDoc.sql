SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[pmCanDeleteHistDoc]  (  @fCreditDoc tinyint,   @sDocNum char(21),   @sVchrNum char(21),   @nDocType smallint,   @sPrevVchrNum char(21),   @nPrevDocType smallint,   @dtDocDate datetime,  @sStartDocNum char(21),  @sEndDocNum char(21),  @sStartVchrNum char(21),   @sEndVchrNum char(21),  @nStartDocType smallint,  @nEndDocType smallint,  @dtStartDocDate datetime,  @dtEndDocDate datetime,  @fCanDeleteHistDoc tinyint OUTPUT  ) as begin  declare @PM_Apply_Tree_Temp TABLE  (  [SequenceNumber] int identity (1,1),  creditDoc int,  Status int,  Type char(10) not null,  [VCHRNMBR] [char] (21) NOT NULL ,  [DOCTYPE] [smallint] NOT NULL ,  [APTVCHNM] [char] (21) NOT NULL ,  [APTODCTY] [smallint] NOT NULL   ) declare @max_value int, @current_value int declare  @VCHRNMBR [char] (21),  @DOCTYPE smallint,  @APTVCHNM [char] (21),  @APTODCTY smallint,  @creditDoc tinyint,  @Status tinyint declare @fCheckApplyRecords tinyint declare @fCanDelete tinyint  set nocount on  select @fCanDeleteHistDoc = 0,  @fCanDelete = 0,  @max_value = 0,   @current_value = 0,  @VCHRNMBR = '',  @DOCTYPE = 0,  @APTVCHNM = '',  @APTODCTY = 0,  @creditDoc = 0,  @Status = 0,  @fCheckApplyRecords = 0  if (@sDocNum >= @sStartDocNum and @sDocNum <= @sEndDocNum) and  (@sVchrNum >= @sStartVchrNum and @sVchrNum <= @sEndVchrNum) and  (@nDocType >= @nStartDocType and @nDocType <= @nEndDocType) and  (@dtDocDate >= @dtStartDocDate and @dtDocDate <= @dtEndDocDate)  begin  select @fCheckApplyRecords = 1  end  if @fCheckApplyRecords > 0  begin  select @fCanDelete=1  if @fCreditDoc=1   begin  if (select count(*) from PM30300 where DOCTYPE=@nDocType and VCHRNMBR=@sVchrNum)>0  begin     if (select count(*) from PM30300  where DOCTYPE=@nDocType and VCHRNMBR=@sVchrNum and  ((APTODCNM < @sStartDocNum or APTODCNM > @sEndDocNum) or  (@sVchrNum < @sStartVchrNum or @sVchrNum > @sEndVchrNum) or  (@nDocType < @nStartDocType or @nDocType > @nEndDocType) or  (APTODCDT < @dtStartDocDate or APTODCDT > @dtEndDocDate) or  (DOCDATE < @dtStartDocDate or DOCDATE > @dtEndDocDate))) > 0   begin  select @fCanDelete=0  end  else  begin  select @fCanDelete=1  end  end   if @fCanDelete=1  begin  insert into @PM_Apply_Tree_Temp  select 1,0,'HIST',VCHRNMBR,DOCTYPE,APTVCHNM,APTODCTY from PM30300  where DOCTYPE=@nDocType and VCHRNMBR=@sVchrNum and  (APTODCNM >= @sStartDocNum and APTODCNM <= @sEndDocNum) and  (@sVchrNum >= @sStartVchrNum and @sVchrNum <= @sEndVchrNum) and  (@nDocType >= @nStartDocType and @nDocType <= @nEndDocType) and  (APTODCDT >= @dtStartDocDate and APTODCDT <= @dtEndDocDate) and  (DOCDATE >= @dtStartDocDate and DOCDATE <= @dtEndDocDate)  end  end  else  begin  if (select count(*) from PM30300 where APTODCTY=@nDocType and APTVCHNM=@sVchrNum)>0  begin  if (select count(*) from PM30300  where APTODCTY=@nDocType and APTVCHNM=@sVchrNum and  ((APTODCNM < @sStartDocNum or APTODCNM > @sEndDocNum) or  (@sVchrNum < @sStartVchrNum or @sVchrNum > @sEndVchrNum) or  (@nDocType < @nStartDocType or @nDocType > @nEndDocType) or  (APTODCDT < @dtStartDocDate or APTODCDT > @dtEndDocDate) or  (DOCDATE < @dtStartDocDate or DOCDATE > @dtEndDocDate))) > 0   begin  select @fCanDelete=0  end  else  begin  select @fCanDelete=1  end  end  if @fCanDelete=1  begin  insert into @PM_Apply_Tree_Temp  select 0,0,'HIST',VCHRNMBR,DOCTYPE,APTVCHNM,APTODCTY from PM30300  where APTODCTY=@nDocType and APTVCHNM=@sVchrNum and  (APTODCNM >= @sStartDocNum and APTODCNM <= @sEndDocNum) and  (@sVchrNum >= @sStartVchrNum and @sVchrNum <= @sEndVchrNum) and  (@nDocType >= @nStartDocType and @nDocType <= @nEndDocType) and  (APTODCDT >= @dtStartDocDate and APTODCDT <= @dtEndDocDate) and  (DOCDATE >= @dtStartDocDate and DOCDATE <= @dtEndDocDate)  end  end    if (select count(*) from PM20000 a, @PM_Apply_Tree_Temp b  where a.DOCTYPE= case when b.creditDoc=1 then b.APTODCTY else b.DOCTYPE end  and a.VCHRNMBR = case when b.creditDoc=1 then b.APTVCHNM else b.VCHRNMBR end)>0  begin  select @fCanDelete=0  end   select @max_value=(select max(SequenceNumber) from @PM_Apply_Tree_Temp)  select @current_value=1  while  @current_value<=@max_value and @fCanDelete>0   begin  select @current_value=SequenceNumber,@VCHRNMBR=VCHRNMBR,@DOCTYPE=DOCTYPE,  @APTVCHNM=APTVCHNM,@APTODCTY=APTODCTY,@creditDoc=creditDoc,@Status=Status  from @PM_Apply_Tree_Temp where SequenceNumber=@current_value   if @creditDoc=1  begin  if (select count(*) from @PM_Apply_Tree_Temp where APTVCHNM=@APTVCHNM  and APTODCTY=@APTODCTY and creditDoc=(1-@creditDoc))=0  begin  if (select count(*) from PM30300 where APTVCHNM=@APTVCHNM  and APTODCTY=@APTODCTY)>0  begin     if (select count(*) from PM30300  where APTVCHNM=@APTVCHNM  and APTODCTY=@APTODCTY and  ((APTODCNM < @sStartDocNum or APTODCNM > @sEndDocNum) or  (@APTVCHNM < @sStartVchrNum or @APTVCHNM > @sEndVchrNum) or  (@APTODCTY < @nStartDocType or @APTODCTY > @nEndDocType) or  (APTODCDT < @dtStartDocDate or APTODCDT > @dtEndDocDate) or  (DOCDATE < @dtStartDocDate or DOCDATE > @dtEndDocDate))) > 0   begin  select @fCanDelete=0  end  else  begin  select @fCanDelete=1  end  end  if @fCanDelete=1  begin  insert into @PM_Apply_Tree_Temp  select (1-@creditDoc),0,'HIST',VCHRNMBR,DOCTYPE,APTVCHNM,APTODCTY  from PM30300 where APTVCHNM=@APTVCHNM  and APTODCTY=@APTODCTY and  (APTODCNM >= @sStartDocNum and APTODCNM <= @sEndDocNum) and  (@APTVCHNM >= @sStartVchrNum and @APTVCHNM <= @sEndVchrNum) and  (@APTODCTY >= @nStartDocType and @APTODCTY <= @nEndDocType) and  (APTODCDT >= @dtStartDocDate and APTODCDT <= @dtEndDocDate) and  (DOCDATE >= @dtStartDocDate and DOCDATE <= @dtEndDocDate)  end  end  select @max_value=@max_value+@@rowcount  end  else  begin  if (select count(*) from @PM_Apply_Tree_Temp where VCHRNMBR=@VCHRNMBR  and DOCTYPE=@DOCTYPE and creditDoc=(1-@creditDoc))=0  begin  if (select count(*) from PM30300 where VCHRNMBR=@VCHRNMBR  and DOCTYPE=@DOCTYPE)>0  begin  if (select count(*) from PM30300  where VCHRNMBR=@VCHRNMBR  and DOCTYPE=@DOCTYPE and  ((APTODCNM < @sStartDocNum or APTODCNM > @sEndDocNum) or  (@VCHRNMBR < @sStartVchrNum or @VCHRNMBR > @sEndVchrNum) or  (@DOCTYPE < @nStartDocType or @DOCTYPE > @nEndDocType) or  (APTODCDT < @dtStartDocDate or APTODCDT > @dtEndDocDate) or  (DOCDATE < @dtStartDocDate or DOCDATE > @dtEndDocDate))) > 0   begin  select @fCanDelete=0  end  else  begin  select @fCanDelete=1  end  end  if @fCanDelete=1  begin  insert into @PM_Apply_Tree_Temp  select (1-@creditDoc),0,'HIST',VCHRNMBR,DOCTYPE,APTVCHNM,APTODCTY  from PM30300 where VCHRNMBR=@VCHRNMBR  and DOCTYPE=@DOCTYPE and  (APTODCNM >= @sStartDocNum and APTODCNM <= @sEndDocNum) and  (@VCHRNMBR >= @sStartVchrNum and @VCHRNMBR <= @sEndVchrNum) and  (@DOCTYPE >= @nStartDocType and @DOCTYPE <= @nEndDocType) and  (APTODCDT >= @dtStartDocDate and APTODCDT <= @dtEndDocDate) and  (DOCDATE >= @dtStartDocDate and DOCDATE <= @dtEndDocDate)  end  end  select @max_value=@max_value+@@rowcount  end  select @current_value=@current_value+1   if (select count(*) from PM20000 a, @PM_Apply_Tree_Temp b  where a.DOCTYPE= case when b.creditDoc=1 then b.APTODCTY else b.DOCTYPE end  and a.VCHRNMBR = case when b.creditDoc=1 then b.APTVCHNM else b.VCHRNMBR end)>0  select @fCanDelete=0   end   if (select count(*) from PM20000 a, @PM_Apply_Tree_Temp b  where a.DOCTYPE= case when b.creditDoc=1 then b.APTODCTY else b.DOCTYPE end  and a.VCHRNMBR = case when b.creditDoc=1 then b.APTVCHNM else b.VCHRNMBR end)>0  select @fCanDelete=0   select @fCanDeleteHistDoc=@fCanDelete end end   
GO
GRANT EXECUTE ON  [dbo].[pmCanDeleteHistDoc] TO [DYNGRP]
GO