SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[svcCLServiceCards]   @I_cUserID char(15)    = NULL,  @I_cUserDate char(12)    = NULL,  @I_cFunctionalCurrency char(15)    = NULL,  @I_TechMSTR varchar(40) = NULL,  @I_TechSchedule  varchar(40) = NULL,  @I_TechSkill  varchar(40) = NULL,  @I_TechServiceArea  varchar(40) = NULL,  @I_TechMisc  varchar(40) = NULL,  @I_ServiceType varchar(40) = NULL,  @I_ServiceTypeLine varchar(40) = NULL,  @I_ServiceTypeEsc  varchar(40) = NULL,  @I_OfficeMSTR varchar(40) = NULL,  @I_OfficeHoliday varchar(40) = NULL,  @I_CustomerExtension  varchar(40) = NULL,  @I_ItemExtension  varchar(40) = NULL,  @I_ItemSite varchar(40) = NULL,  @O_iErrorState int  = NULL output as  declare  @iError int,   @iStatus int,   @cSearchString1 char(2),  @tLoop tinyint DECLARE @ITEMNMBR CHAR(30), @UPDATE TINYINT  select  @O_iErrorState = 0,  @iStatus  = 0,  @cSearchString1 = '%1'  while (@tLoop is NULL) begin  select @tLoop = 1   if   @I_cUserID is NULL OR  @I_TechMSTR is NULL OR  @I_TechSchedule  is NULL OR  @I_TechSkill is NULL OR  @I_TechServiceArea  is NULL OR  @I_TechMisc is NULL OR  @I_ServiceType is NULL OR  @I_ServiceTypeLine  is NULL OR  @I_ServiceTypeEsc is NULL OR  @I_OfficeMSTR  is NULL OR  @I_OfficeHoliday  is NULL OR  @I_CustomerExtension is NULL OR  @I_ItemExtension  is NULL OR  @I_ItemSite is NULL   begin  select @O_iErrorState = 20846  break  end   create table #CNTRLNUMTEMP(  CNTRLNUM varchar(31) not null,  DOCTYPE smallint not null,  VENDORID varchar(40) not null )   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Tech ID - ' + TECHID,  1,  'Technician'  from   SVC00101  where not exists  (select   1  from   SVC00100  where   SVC00101.TECHID = SVC00100.TECHID)  group by TECHID  if @@rowcount <> 0  begin  delete  SVC00101   where not exists  (select   1  from   SVC00100  where   SVC00101.TECHID = SVC00100.TECHID)    exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_TechSchedule,  @cSearchString1,  11503,  @O_iErrorState output   select @iError = @@error  update SY03400 set ERMSGTX2 = 'No Corresponding record was found in the Technician Master Table' where  FILENAME = @I_TechSchedule and ERMSGTX2 = ''   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Tech Status - ' + TECHSTAT,  9,  'Tech Status'  from   SVC00100   where not exists  (select   1  from   SVC00905  where SVC00100.TECHSTAT = SVC00905.TECHSTAT) and TECHSTAT > '' group by TECHSTAT   if @@rowcount <> 0  begin   insert into  SVC00905(  TECHSTAT,  DSCRIPTN )  select   TECHSTAT,  TECHSTAT  from   SVC00100   where not exists  (select   1  from   SVC00905  where SVC00100.TECHSTAT = SVC00905.TECHSTAT) group by TECHSTAT   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  'SVC_Codes_Tech_Status',  @cSearchString1,  11504,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Tech ID - ' + TECHID,  1,  'Technician'  from  SVC00102  where not exists  (select   1  from   SVC00100  where   SVC00102.TECHID = SVC00100.TECHID) and TECHID > '' group by TECHID  if @@rowcount <> 0  begin  delete  SVC00102  where not exists  (select   1  from   SVC00100  where   SVC00102.TECHID = SVC00100.TECHID)    exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_TechSkill,  @cSearchString1,  11503,  @O_iErrorState output   select @iError = @@error  update SY03400 set ERMSGTX2 = 'No Corresponding record was found in the Technician Master Table' where  FILENAME = @I_TechSkill and ERMSGTX2 = ''   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM, DOCTYPE, VENDORID)  select   'Problem Code - ' + rtrim(PROBCDE),  1,  'Tech ID: ' + TECHID  from SVC00102 where not exists  (select 1 from SVC00907 where   SVC00102.PROBCDE = SVC00907.PROBCDE) and PROBCDE > ''  if @@rowcount <> 0  begin   insert into  SVC00907(  PROBCDE, DSCRIPTN )  select   PROBCDE, PROBCDE  from SVC00102  where not exists  (select 1 from SVC00907  where SVC00102.PROBCDE = SVC00907.PROBCDE) and PROBCDE > '' group by PROBCDE   exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_TechSkill,  'Problem Code does not exist - record added.',  @O_iErrorState output   select @iError = @@error   if @iStatus <> 0 or @O_iErrorState <> 0 or @iError <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Tech ID - ' + TECHID,  1,  'Technician'  from   SVC00104  where not exists  (select   1  from   SVC00100  where   SVC00104.TECHID = SVC00100.TECHID)  group by TECHID  if @@rowcount <> 0  begin  delete  from   SVC00104  where not exists  (select   1  from   SVC00100  where   SVC00104.TECHID = SVC00100.TECHID)    exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_TechServiceArea,  @cSearchString1,  11503,  @O_iErrorState output   select @iError = @@error  update SY03400 set ERMSGTX2 = 'No Corresponding record was found in the Technician Master Table' where  FILENAME = @I_TechServiceArea and ERMSGTX2 = ''   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   SVCAREA,  9,  'Tech Service Area:'  from   SVC00104   where not exists  (select   1  from   SVC00909  where SVC00104.SVCAREA = SVC00909.SVCAREA)  and SVCAREA > '' group by SVCAREA   if @@rowcount <> 0  begin   insert into  SVC00909(  SVCAREA,  NAME )  select   SVCAREA,  SVCAREA  from   SVC00104  where not exists  (select   1  from   SVC00909  where SVC00104.SVCAREA = SVC00909.SVCAREA)  and SVCAREA > '' group by SVCAREA   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_TechServiceArea,  @cSearchString1,  11504,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Tech ID - ' + TECHID,  1,  'Technician'  from   SVC00105  where not exists  (select   1  from   SVC00100  where   SVC00105.TECHID = SVC00100.TECHID)  group by TECHID  if @@rowcount <> 0  begin  delete  SVC00105  where not exists  (select   1  from   SVC00100  where   SVC00105.TECHID = SVC00100.TECHID)    exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_TechMisc,  @cSearchString1,  11503,  @O_iErrorState output   select @iError = @@error  update SY03400 set ERMSGTX2 = 'No Corresponding record was found in the Technician Master Table' where  FILENAME = @I_TechMisc and ERMSGTX2 = ''   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   delete from SVC00100 where TECHID = ''   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Technician Maintenance',  2,  'Tech ID: '+ TECHID  from   SVC00100  where NAME='' or TECHSTAT =''   if @@rowcount <> 0  begin  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_TechMSTR,  'Required Fields are missing.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Price Level - ' + PRCLEVEL,  5,  'Tech ID: ' + TECHID  from   SVC00100   where PRCLEVEL not in (select PRCLEVEL from IV40800)  and PRCLEVEL > ''    if @@rowcount <> 0  begin  update SVC00100 with (rowlock)  set PRCLEVEL = ''  where PRCLEVEL not in (select PRCLEVEL from IV40800)  and PRCLEVEL > ''   exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_TechMSTR,  'Invalid Pricelevel field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Office ID - ' + OFFID,  5,  'Tech ID: ' + TECHID  from   SVC00100   where OFFID not in (select OFFID from SVC00902)  and OFFID > ''    if @@rowcount <> 0  begin  update SVC00100 with (rowlock)  set OFFID = ''  where OFFID not in (select OFFID from SVC00902)  and OFFID > ''   exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_TechMSTR,  'Invalid Office ID field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Tech Site - ' + LOCNCODE,  5,  'Tech ID: ' + TECHID  from   SVC00100   where LOCNCODE not in (select LOCNCODE from IV40700)  and LOCNCODE > ''    if @@rowcount <> 0  begin  update SVC00100 with (rowlock)  set LOCNCODE = ''  where LOCNCODE not in (select LOCNCODE from IV40700)  and LOCNCODE > ''   exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_TechMSTR,  'Invalid Good Location field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Bad Location - ' + LOCCODEB,  5,  'Tech ID: ' + TECHID  from   SVC00100   where LOCCODEB not in (select LOCNCODE from IV40700)  and LOCCODEB > ''    if @@rowcount <> 0  begin  update SVC00100 with (rowlock)  set LOCCODEB = ''  where LOCCODEB not in (select LOCNCODE from IV40700)  and LOCCODEB > ''   exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_TechMSTR,  'Invalid Bad Location field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'SRV Type - ' + SRVTYPE,  8,  'Service Type Esc.'  from   SVC00922   where not exists  (select   1  from   SVC00920  where SVC00920.SRVTYPE = SVC00922.SRVTYPE) group by SRVTYPE   if @@rowcount <> 0  begin  delete  SVC00922  where not exists  (select   1  from   SVC00920  where SVC00920.SRVTYPE = SVC00922.SRVTYPE)    exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_ServiceTypeEsc,  @cSearchString1,  11503,  @O_iErrorState output   select @iError = @@error  update SY03400 set ERMSGTX2 = 'No Corresponding record was found in the Service Type Validation Codes Table' where  FILENAME = @I_ServiceTypeEsc and ERMSGTX2 = ''   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Tech ID - ' + TECHID,  8,  'Service Type: ' + SRVTYPE  from   SVC00922   where TECHID not in (select TECHID from SVC00100)  and TECHID > ''   if @@rowcount <> 0  begin  update SVC00922 with (rowlock)  set TECHID = ''  where TECHID not in (select TECHID from SVC00100)  and TECHID > ''  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ServiceTypeEsc,  'Invalid Tech ID field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'SRV Type - ' + SRVTYPE,  8,  'ServiceType Line'  from   SVC00921   where not exists  (select   1  from   SVC00920  where SVC00921.SRVTYPE = SVC00920.SRVTYPE) group by SRVTYPE   if @@rowcount <> 0  begin  delete  SVC00921   where not exists  (select   1  from   SVC00920  where SVC00921.SRVTYPE = SVC00920.SRVTYPE)   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_ServiceTypeLine,  @cSearchString1,  11503,  @O_iErrorState output   select @iError = @@error  update SY03400 set ERMSGTX2 = 'No Corresponding record was found in the Service Type Validation Codes Table' where  FILENAME = @I_ServiceTypeLine and ERMSGTX2 = ''   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Service Type Maintenance',  8,  'Service Type: ' + SRVTYPE  from   SVC00920  where DSCRIPTN ='' or SVC_Service_Batch_ID = '' or SVC_Service_Document_ID =''   or SVC_S_Credit_Batch_ID = '' or SVC_S_Credit_Document_ID = ''  or SVC_Zero_Batch_ID = '' or SVC_Zero_Document_ID = ''  or LABITMST ='' or  LABITMOV ='' or LABITMDB =''   if @@rowcount <> 0  begin  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ServiceType,  'Required Fields are missing.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   SVC_Service_Document_ID,  8,  'SRV Type: ' + SRVTYPE  from   SVC00920   where SVC_Service_Document_ID not in (select DOCID from SOP40200)  and SVC_Service_Document_ID > ''   if @@rowcount <> 0  begin  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ServiceType,  'SOP Document ID does not exist.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   SVC_S_Credit_Document_ID,  8,  'SRV Type: ' + SRVTYPE  from   SVC00920   where SVC_S_Credit_Document_ID not in (select DOCID from SOP40200)  and SVC_S_Credit_Document_ID > ''   if @@rowcount <> 0  begin  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ServiceType,  'SOP Credit ID does not exist.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   SVC_Zero_Document_ID,  8,  'SRV Type: ' + SRVTYPE  from   SVC00920   where SVC_Zero_Document_ID not in (select DOCID from SOP40200)  and SVC_Zero_Document_ID > ''   if @@rowcount <> 0  begin  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ServiceType,  'SOP Document ID does not exist.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   TECHID,  8,  'SRV Type: ' + SRVTYPE  from   SVC00920   where TECHID not in (select TECHID from SVC00100)  and TECHID > ''   if @@rowcount <> 0  begin  update SVC00920 with (rowlock)  set TECHID = ''  where TECHID not in (select TECHID from SVC00100)  and TECHID > ''  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ServiceType,  'Invalid Tech ID field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Act. Index - ' + cast(SVC_Sales_Index_Part AS varchar(6)),  7,  'SRV Type: ' + SRVTYPE  from   SVC00920   where SVC_Sales_Index_Part not in (select ACTINDX from GL00100)  and SVC_Sales_Index_Part > 0   if @@rowcount <> 0  begin  update SVC00920 with (rowlock)  set SVC_Sales_Index_Part = 0  where SVC_Sales_Index_Part not in (select ACTINDX from GL00100)  and SVC_Sales_Index_Part > 0  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ServiceType,  'Invalid Part Sales Account Index field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Act. Index - ' + cast(SVC_Sales_Index_Labor AS varchar(6)),  7,  'SRV Type: ' + SRVTYPE  from   SVC00920   where SVC_Sales_Index_Labor not in (select ACTINDX from GL00100)  and SVC_Sales_Index_Labor > 0   if @@rowcount <> 0  begin  update SVC00920 with (rowlock)  set SVC_Sales_Index_Labor = 0  where SVC_Sales_Index_Labor not in (select ACTINDX from GL00100)  and SVC_Sales_Index_Labor > 0  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ServiceType,  'Invalid Labor Sales Account Index field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Act. Index - ' + cast(SVC_Sales_Index_Misc AS varchar(6)),  7,  'SRV Type: ' + SRVTYPE  from   SVC00920   where SVC_Sales_Index_Misc not in (select ACTINDX from GL00100)  and SVC_Sales_Index_Misc > 0   if @@rowcount <> 0  begin  update SVC00920 with (rowlock)  set SVC_Sales_Index_Misc = 0  where SVC_Sales_Index_Misc not in (select ACTINDX from GL00100)  and SVC_Sales_Index_Misc > 0  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ServiceType,  'Invalid Additional Charge Sales Account Index field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Act. Index - ' + cast(SVC_Sales_Index_Expense AS varchar(6)),  7,  'SRV Type: ' + SRVTYPE  from   SVC00920   where SVC_Sales_Index_Expense not in (select ACTINDX from GL00100)  and SVC_Sales_Index_Expense > 0   if @@rowcount <> 0  begin  update SVC00920 with (rowlock)  set SVC_Sales_Index_Expense = 0  where SVC_Sales_Index_Expense not in (select ACTINDX from GL00100)  and SVC_Sales_Index_Expense > 0  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ServiceType,  'Invalid Expense Sales Account Index field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Act. Index - ' + cast(SVC_COGS_Index_Part AS varchar(6)),  7,  'SRV Type: ' + SRVTYPE  from   SVC00920   where SVC_COGS_Index_Part not in (select ACTINDX from GL00100)  and SVC_COGS_Index_Part > 0   if @@rowcount <> 0  begin  update SVC00920 with (rowlock)  set SVC_COGS_Index_Part = 0  where SVC_COGS_Index_Part not in (select ACTINDX from GL00100)  and SVC_COGS_Index_Part > 0  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ServiceType,  'Invalid Part COGS Account Index field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Act. Index - ' + cast(SVC_Sales_Return_Index AS varchar(6)),  7,  'SRV Type: ' + SRVTYPE  from   SVC00920   where SVC_Sales_Return_Index not in (select ACTINDX from GL00100)  and SVC_Sales_Return_Index > 0   if @@rowcount <> 0  begin  update SVC00920 with (rowlock)  set SVC_Sales_Return_Index = 0  where SVC_Sales_Return_Index not in (select ACTINDX from GL00100)  and SVC_Sales_Return_Index > 0  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ServiceType,  'Invalid Sales Return Account Index field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Item# ' + ITEMNMBR,  1,  'Item Extension'  from   SVC00951  where not exists  (select   1  from   IV00101  where   SVC00951.ITEMNMBR = IV00101.ITEMNMBR)  group by ITEMNMBR  if @@rowcount <> 0  begin  delete  SVC00951  where not exists  (select   1  from   IV00101  where   SVC00951.ITEMNMBR = IV00101.ITEMNMBR)   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_ItemExtension,  @cSearchString1,  11503,  @O_iErrorState output   select @iError = @@error  update SY03400 set ERMSGTX2 = 'No Corresponding record was found in the Item Master Table' where  FILENAME = @I_ItemExtension and ERMSGTX2 = ''   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   rtrim(ITEMNMBR) + '/'+ rtrim(LOCNCODE),  1,  'Item Site Ext.'  from   SVC00952  where not exists  (select   1  from   IV00101  where   SVC00952.ITEMNMBR = IV00101.ITEMNMBR) and ITEMNMBR > ''  if @@rowcount <> 0  begin  delete  SVC00952  where not exists  (select   1  from   IV00101  where   SVC00952.ITEMNMBR = IV00101.ITEMNMBR)   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_ItemSite,  @cSearchString1,  11503,  @O_iErrorState output   select @iError = @@error   update SY03400 set ERMSGTX2 = 'No Corresponding record was found in the Item Master Table' where  FILENAME = @I_ItemSite and  ERMSGTX2 = ''  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0 or @iError <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   rtrim(ITEMNMBR) + '/'+ rtrim(LOCNCODE),  1,  'Item Site Ext.'  from   SVC00952  where not exists  (select   1  from   IV40700  where   SVC00952.LOCNCODE = IV40700.LOCNCODE) and LOCNCODE > ''  if @@rowcount <> 0  begin  delete  SVC00952  where not exists  (select   1  from   IV40700  where   SVC00952.LOCNCODE = IV40700.LOCNCODE)   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_ItemSite,  @cSearchString1,  11503,  @O_iErrorState output  update SY03400 set ERMSGTX2 = 'No Corresponding record was found in the Site Setup Table' where  FILENAME = @I_ItemSite and ERMSGTX2 = ''   select @iError = @@error  if @iStatus <> 0 or @O_iErrorState <> 0 or @iError <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   TRNSFLOC,  1,  'Item Site Ext.'  from   SVC00952  where not exists  (select   1  from   IV40700  where   SVC00952.TRNSFLOC = IV40700.LOCNCODE) and TRNSFLOC > '' group by TRNSFLOC  if @@rowcount <> 0  begin  update SVC00952 with (rowlock)  set TRNSFLOC = ''  where TRNSFLOC not in (select LOCNCODE from IV40700)  and TRNSFLOC > ''   exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ItemSite,  'Invalid Restock From field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus <> 0 or @O_iErrorState <> 0 or @iError <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   ITLOCN,  1,  'Item Site Ext.'  from   SVC00952  where not exists  (select   1  from   IV40700  where   SVC00952.ITLOCN = IV40700.LOCNCODE) and ITLOCN > '' group by ITLOCN  if @@rowcount <> 0  begin  update SVC00952 with (rowlock)  set ITLOCN = ''  where ITLOCN not in (select LOCNCODE from IV40700)  and ITLOCN > ''   exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_ItemSite,  'Invalid Restock Via field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus <> 0 or @O_iErrorState <> 0 or @iError <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Customer: ' + CUSTNMBR,  1,  'Customer Extension'  from   SVC00950  where not exists  (select   1  from   RM00101  where   SVC00950.CUSTNMBR = RM00101.CUSTNMBR and CUSTNMBR > '')  group by CUSTNMBR  if @@rowcount <> 0  begin  delete  from   SVC00950  where  not exists  (select   1  from   RM00101  where   SVC00950.CUSTNMBR = RM00101.CUSTNMBR and CUSTNMBR > '')   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_CustomerExtension,  @cSearchString1,  11503,  @O_iErrorState output   select @iError = @@error  update SY03400 set ERMSGTX2 = 'No Corresponding record was found in the Customer Master Table' where  FILENAME = @I_CustomerExtension and ERMSGTX2 = ''   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   ADRSCODE,  8,  'Customer: ' + CUSTNMBR  from   SVC00950   where not exists  (select   1  from   RM00102  where   SVC00950.CUSTNMBR = RM00102.CUSTNMBR and   SVC00950.ADRSCODE =RM00102.ADRSCODE ) and  CUSTNMBR > '' and ADRSCODE > ''   if @@rowcount <> 0  begin  delete  from   SVC00950  where not exists  (select   1  from   RM00102  where   SVC00950.CUSTNMBR = RM00102.CUSTNMBR and   SVC00950.ADRSCODE =RM00102.ADRSCODE ) and  CUSTNMBR > '' and ADRSCODE > ''   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_CustomerExtension,  @cSearchString1,  11503,  @O_iErrorState output   select @iError = @@error  update SY03400 set ERMSGTX2 = 'No Corresponding record was found in the Customer Address Table' where  FILENAME = @I_CustomerExtension and ERMSGTX2 = ''   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Time Zone- '+ TIMEZONE,  8,  'Customer : '+ CUSTNMBR  from   SVC00950   where not exists  (select   1  from   SVC00900  where SVC00950.TIMEZONE = SVC00900.TIMEZONE) and TIMEZONE > ''    if @@rowcount <> 0  begin  insert into  SVC00900(  TIMEZONE,  DSCRIPTN )  select   TIMEZONE,  TIMEZONE  from   SVC00950   where not exists  (select 1 from SVC00900  where SVC00950.TIMEZONE = SVC00900.TIMEZONE) and TIMEZONE > '' group by TIMEZONE   exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_CustomerExtension,  'Time Zone does not exist - record added.',  @O_iErrorState output  select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Tech ID: ' + TECHID,  8,  'Customer : '+ CUSTNMBR  from   SVC00950   where TECHID not in (select TECHID from SVC00100)  and TECHID > ''   if @@rowcount <> 0  begin  update SVC00950 with (rowlock)  set TECHID = ''  where TECHID not in (select TECHID from SVC00100)  and TECHID > ''  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_CustomerExtension,  'Invalid Tech ID field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Service Area : '+ SVCAREA,  9,  'Customer : '+ CUSTNMBR  from   SVC00950   where not exists  (select   1  from   SVC00909  where SVC00950.SVCAREA = SVC00909.SVCAREA)  and SVCAREA > ''   if @@rowcount <> 0  begin  update SVC00950 with (rowlock)  set SVCAREA = ''  where SVCAREA not in (select SVCAREA from SVC00909)  and SVCAREA > ''   exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_CustomerExtension,  'Invalid Service Area field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Office ID- '+ OFFID,  8,  'Customer : '+ CUSTNMBR  from   SVC00950   where OFFID not in (select OFFID from SVC00902)  and OFFID > ''   if @@rowcount <> 0  begin  update SVC00950 with (rowlock)  set OFFID = ''  where OFFID not in (select OFFID from SVC00902)  and OFFID > '' exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_CustomerExtension,  'Invalid Office ID field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error  if @iStatus <> 0 or @O_iErrorState <> 0 or @iError <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'SRV Type- ' + SRVTYPE,  8,  'Customer : '+ CUSTNMBR  from   SVC00950   where SRVTYPE not in (select SRVTYPE from SVC00920)  and SRVTYPE > ''   if @@rowcount <> 0  begin  update SVC00950 with (rowlock)  set SRVTYPE = ''  where SRVTYPE not in (select SRVTYPE from SVC00920)  and SRVTYPE > '' exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_CustomerExtension,  'Invalid Service Type field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Bill To:' + Bill_To_Customer,  8,  'Customer : '+ CUSTNMBR  from   SVC00950   where Bill_To_Customer not in (select CUSTNMBR from RM00101)  and Bill_To_Customer > ''   if @@rowcount <> 0  begin  update SVC00950 with (rowlock)  set Bill_To_Customer = ''  where Bill_To_Customer not in (select CUSTNMBR from RM00101)  and Bill_To_Customer > '' exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_CustomerExtension,  'Invalid Bill To Customer field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Misc.Addr. ' + SVC_Misc_Address_Code,  8,  'Customer : '+ CUSTNMBR  from   SVC00950   where SVC_Misc_Address_Code not in (select SVC_Misc_Address_Code from SVC00980)  and SVC_Misc_Address_Code > ''   if @@rowcount <> 0  begin  update SVC00950 with (rowlock)  set SVC_Misc_Address_Code = ''  where SVC_Misc_Address_Code not in (select SVC_Misc_Address_Code from SVC00980)  and SVC_Misc_Address_Code > '' exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_CustomerExtension,  'Invalid Misc Address field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Office ID - ' + OFFID,  12,  'Office'  from  SVC00903  where not exists  (select   1  from   SVC00902  where   SVC00902.OFFID = SVC00903.OFFID) and OFFID > '' group by OFFID  if @@rowcount <> 0  begin  delete  SVC00903  where not exists  (select   1  from   SVC00902  where   SVC00902.OFFID = SVC00903.OFFID) and OFFID > ''    exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_OfficeHoliday,  @cSearchString1,  11503,  @O_iErrorState output   select @iError = @@error  update SY03400 set ERMSGTX2 = 'No Corresponding record was found in the Office Master Table' where  FILENAME = @I_OfficeHoliday and ERMSGTX2 = ''   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   delete from SVC00902 where OFFID = ''   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Office Master',  2,  'Office ID: '+ OFFID  from   SVC00902  where OFFNAME='' or TIMEZONE =''   if @@rowcount <> 0  begin  exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_OfficeMSTR,  'Required Fields are missing.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Time Zone- '+ TIMEZONE,  12,  'Office ID : ' + OFFID  from   SVC00902  where not exists  (select   1  from   SVC00900  where SVC00902.TIMEZONE = SVC00900.TIMEZONE) and TIMEZONE > ''    if @@rowcount <> 0  begin  insert into  SVC00900(  TIMEZONE,  DSCRIPTN )  select   TIMEZONE,  TIMEZONE  from   SVC00902   where not exists  (select 1 from SVC00900  where SVC00902.TIMEZONE = SVC00900.TIMEZONE) and TIMEZONE > '' group by TIMEZONE   exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_OfficeMSTR,  'Time Zone does not exist - record added.',  @O_iErrorState output  select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Good Loc.- ' + LOCNCODE,  5,  'Office ID : ' + OFFID  from   SVC00902  where LOCNCODE not in (select LOCNCODE from IV40700)  and LOCNCODE > ''    if @@rowcount <> 0  begin  update SVC00902 with (rowlock)  set LOCNCODE = ''  where LOCNCODE not in (select LOCNCODE from IV40700)  and LOCNCODE > ''   exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_OfficeMSTR,  'Invalid Good Location field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select   'Bad Location - ' + Return_Location_Code,  5,  'Office ID: ' + OFFID  from   SVC00902  where Return_Location_Code not in (select LOCNCODE from IV40700)  and Return_Location_Code > ''    if @@rowcount <> 0  begin  update SVC00902 with (rowlock)  set Return_Location_Code = ''  where Return_Location_Code not in (select LOCNCODE from IV40700)  and Return_Location_Code > ''   exec @iStatus = svcCreateErrorLogRecord  @I_cUserID,  @I_OfficeMSTR,  'Invalid Bad Location field has been cleared from the record.',  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break  end   end   return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[svcCLServiceCards] TO [DYNGRP]
GO