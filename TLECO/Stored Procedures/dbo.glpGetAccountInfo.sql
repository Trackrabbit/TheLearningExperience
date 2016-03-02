SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glpGetAccountInfo]  @I_cOrigICID char(5)  = NULL,   @I_tICRegistered tinyint  = NULL,  @I_sCompanyID smallint  = NULL,  @I_cUserID    char(15) = NULL,   @I_iRelationID int  = NULL,  @I_sUserLevel smallint = NULL,  @I_iAllAccounts int  = NULL,  @I_tALSRegistered tinyint  = NULL,  @O_iErrorState          int             = NULL  output  as   declare   @tTransaction          int,  @tLoop       tinyint,   @Execstring varchar(2000),  @cICID char(5),   @cMsgDBName char(5),    @iStatus int,  @iError   int,  @cDBName      char(10),   @TRUE tinyint,  @cAcctDescNotFound  varchar(40),  @vAccountfiltertable varchar(255),  @vWhereclause varchar(255),  @DISPLAY_REPORT smallint  select  @O_iErrorState      = 0,  @DISPLAY_REPORT  = 0  if @@trancount = 0  begin  select @tTransaction = 1  begin transaction end    while (@tLoop is NULL) begin    if      @I_cOrigICID              is NULL or  @I_tICRegistered          is NULL or  @I_sCompanyID             is NULL or  @I_cUserID                is NULL or  @I_iRelationID            is NULL or  @I_sUserLevel             is NULL or  @I_iAllAccounts           is NULL or  @I_tALSRegistered         is NULL    begin  select @O_iErrorState = 21040  break  end    select @tLoop = 1   select   @iStatus  = 0,  @iError  = 0,  @TRUE  = 1,  @cAcctDescNotFound =''   delete #Company   insert into  #Company   (IntercompanyID,   CompanyName,   CompanyID,   UserAccess,  FunctionalCurrency,   SourceDocument,   BatchNumber,   LineMessages2,  DatabaseName)    (select distinct   INTERID,   '',   0,   0,   '',   '',   '',   0,   ''  from   PJOURNAL  where  USERID = @I_cUserID  and REPORT = @DISPLAY_REPORT)    update   #Company   set  CompanyID  = isnull(cm.CMPANYID,0)  from   DYNAMICS..SY01500 cm  where   #Company.IntercompanyID = cm.INTERID    update   #Company   set   DatabaseName = isnull(pn.DBNAME, '')  from   DYNAMICS..SY02100 pn  where   #Company.CompanyID = pn.CMPANYID    update   #Company  set   UserAccess = 1   where exists  (select 1   from   DYNAMICS..SY60100 ua  where   #Company.CompanyID = ua.CMPANYID   and @I_cUserID = ua.USERID)   declare   Companycursor   cursor for select   IntercompanyID,  DatabaseName  from   #Company  where   UserAccess = 1    open Companycursor  if @@cursor_rows <>  0  begin   fetch next from  Companycursor  into  @cICID,   @cDBName  select @cMsgDBName = db_name()  if @I_tALSRegistered = @TRUE  begin     exec @iStatus = DYNAMICS..smGetMsgString  232,  @cMsgDBName,  @cAcctDescNotFound output,  @O_iErrorState output  end  else  begin     exec @iStatus = DYNAMICS..smGetMsgString  5911,  @cMsgDBName,  @cAcctDescNotFound output,  @O_iErrorState output  end   while (@@fetch_status <> -1)  begin   if @I_iAllAccounts = @TRUE  begin  select @vAccountfiltertable = 'GL00100'  select @vWhereclause = ''  end   else  begin  select @vAccountfiltertable =   case when @I_sUserLevel = 0 then  'GL00100F1'  else  'GL00100F' + str(@I_sUserLevel,1)  end   select @vWhereclause = ' and GL1.RELID = ''' + ltrim(str(@I_iRelationID)) + ''''  end  select @Execstring =   'update PJOURNAL ' +   'set PJOURNAL.ACTDESCR  = ISNULL(GL1.ACTDESCR, ''' + @cAcctDescNotFound + '''), ' +   'PJOURNAL.ACTNUMST = ISNULL(GL2.ACTNUMST, '''') ' +  ' from PJOURNAL LEFT OUTER JOIN ' + rtrim(@cDBName) + '..' + @vAccountfiltertable + ' GL1 with (NOLOCK) ON (PJOURNAL.ACTINDX = GL1.ACTINDX ' + @vWhereclause + ') ' +   'LEFT OUTER JOIN ' + rtrim(@cDBName) + '..GL00105 GL2 with (NOLOCK) ON (GL1.ACTINDX = GL2.ACTINDX) ' +  ' where ''' + rtrim( @cICID) + ''' = INTERID ' +  ' and USERID = ''' + rtrim(@I_cUserID) + '''' +  ' and REPORT = ' + ltrim(str(@DISPLAY_REPORT))   exec (@Execstring)    select @iError = @@error  if @iStatus = 0 and @iError <> 0   select @iStatus = @iError  if @iStatus <> 0  break   fetch next from  Companycursor   into  @cICID,   @cDBName  end    end    deallocate Companycursor  end    if @cAcctDescNotFound =''  if @I_tALSRegistered = @TRUE  begin     exec @iStatus = DYNAMICS..smGetMsgString  232,  @cMsgDBName,  @cAcctDescNotFound output,  @O_iErrorState output  end  else  begin     exec @iStatus = DYNAMICS..smGetMsgString  5911,  @cMsgDBName,  @cAcctDescNotFound output,  @O_iErrorState output  end  update   PJOURNAL set   ACTDESCR = @cAcctDescNotFound where   USERID = @I_cUserID and REPORT = @DISPLAY_REPORT and  ACTNUMST = '' and ACTDESCR = '' and   SQNCLINE <> 0.0  if @O_iErrorState <> 0 begin   if @tTransaction = 1  rollback transaction  end else if @tTransaction = 1  commit transaction  return     
GO
GRANT EXECUTE ON  [dbo].[glpGetAccountInfo] TO [DYNGRP]
GO
