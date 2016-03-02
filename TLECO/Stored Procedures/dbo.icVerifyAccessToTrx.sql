SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icVerifyAccessToTrx]   @I_iJournalEntry int  = NULL,  @I_cUserID char(15) = NULL,   @O_tAccessError int             = NULL  output,  @O_iErrorState          int             = NULL  output  as   declare  @TRUE tinyint,  @FALSE              tinyint  select  @O_tAccessError  = 0,   @O_iErrorState      = 0   if  @I_iJournalEntry is NULL or   @I_cUserID is NULL begin  select @O_iErrorState = 20967  return end   select  @TRUE  = 1,  @FALSE  = 0   create table #Company (  IntercompanyID char(5)  not null,  CompanyID smallint  not null,  UserAccess tinyint not null)  insert into  #Company   (IntercompanyID,   CompanyID,   UserAccess)   (select distinct   gl.INTERID,   0,   0  from   GL10001 gl with (NOLOCK)  where   gl.JRNENTRY = @I_iJournalEntry)   update   #Company  set  CompanyID  = isnull(cm.CMPANYID,0)  from   DYNAMICS..SY01500 cm with (NOLOCK) where   #Company.IntercompanyID = cm.INTERID  update   #Company set   UserAccess = 1  where exists  (select 1   from   DYNAMICS..SY60100 ua with (NOLOCK)  where   #Company.CompanyID = ua.CMPANYID   and @I_cUserID = ua.USERID)  select  @O_tAccessError = @TRUE  where   exists (   select  1  from  #Company  where  UserAccess = 0)  drop table #Company  return    
GO
GRANT EXECUTE ON  [dbo].[icVerifyAccessToTrx] TO [DYNGRP]
GO
