SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGrantAccessForDboAndSa]  @I_sCompanyID smallint = NULL,  @O_iErrorState int  = NULL output as  declare  @tTransaction tinyint,    @MAX_BIN binary(4),   @cMasterOwner char(30),    @cDynamicsOwner char(30),   @cDEFAULTUSERName char(26),  @cDBName char(5),  @iError    int,  @iStatus    int  if @I_sCompanyID is NULL begin  select @O_iErrorState = 20807  return end else begin  select @O_iErrorState = 0 end  select @cDBName = db_name()  exec    @iStatus = DYNAMICS.dbo.smGetMsgString 9117, @cDBName, @cDEFAULTUSERName output, @O_iErrorState output select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError if ( (@iStatus <> 0) or (@O_iErrorState <> 0) )  return (@iStatus)  select @MAX_BIN = 0xFFFFFFFF if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end  select   @cMasterOwner = master.dbo.syslogins.name  from   master.dbo.syslogins,master.dbo.sysdatabases  where   master.dbo.sysdatabases.sid = master.dbo.syslogins.sid   and  master.dbo.sysdatabases.name = 'master'  if @@rowcount <> 1 begin  if @tTransaction = 1  rollback transaction  select @O_iErrorState = 20808  return end  select   @cDynamicsOwner = master.dbo.syslogins.name  from   master.dbo.syslogins,master.dbo.sysdatabases  where   master.dbo.sysdatabases.sid = master.dbo.syslogins.sid   and  master.dbo.sysdatabases.name = 'DYNAMICS'  if @@rowcount <> 1 begin  if @tTransaction = 1  rollback transaction  select @O_iErrorState = 20809  return end  insert into   DYNAMICS.dbo.SY60100  (TRKUSER,  USERID,  CMPANYID,  SRBCHSEC_1,  SRBCHSEC_2,  SRBCHSEC_3,  SRBCHSEC_4,  SRBCHSEC_5,  SRBCHSEC_6,  SRBCHSEC_7,  SRSFNSEC_1,  SRSFNSEC_2,  SRSFNSEC_3,  SRSFNSEC_4,  SRSFNSEC_5,  SRSFNSEC_6,  SRSFNSEC_7,  MSCPRMIS) values  (0,  @cMasterOwner,  @I_sCompanyID,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN)  if @@rowcount <> 1 begin  if @tTransaction = 1  rollback transaction  select @O_iErrorState = 20810  return end  insert into   DYNAMICS.dbo.SY10500  (USERID,   CMPANYID,   SECURITYROLEID) select  @cMasterOwner,  @I_sCompanyID,  SECURITYROLEID from DYNAMICS.dbo.SY09100 where SECROLETYPE = 1  insert into   DYNAMICS.dbo.SY10550  (USERID,   CMPANYID,   SECMODALTID) select  @cMasterOwner,  @I_sCompanyID,  @cDEFAULTUSERName  insert into   DYNAMICS.dbo.SY60100  (TRKUSER,  USERID,  CMPANYID,  SRBCHSEC_1,  SRBCHSEC_2,  SRBCHSEC_3,  SRBCHSEC_4,  SRBCHSEC_5,  SRBCHSEC_6,  SRBCHSEC_7,  SRSFNSEC_1,  SRSFNSEC_2,  SRSFNSEC_3,  SRSFNSEC_4,  SRSFNSEC_5,  SRSFNSEC_6,  SRSFNSEC_7,  MSCPRMIS) values  (0,  @cDynamicsOwner,  @I_sCompanyID,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN,  @MAX_BIN)  if @@rowcount <> 1 begin  if @tTransaction = 1  rollback transaction  select @O_iErrorState = 20810  return end if @tTransaction = 1  commit transaction  insert into   DYNAMICS.dbo.SY10500  (USERID,   CMPANYID,   SECURITYROLEID) select  @cDynamicsOwner,  @I_sCompanyID,  SECURITYROLEID from DYNAMICS.dbo.SY09100 where SECROLETYPE = 1  insert into   DYNAMICS.dbo.SY10550  (USERID,   CMPANYID,   SECMODALTID) select  @cDynamicsOwner,  @I_sCompanyID,  @cDEFAULTUSERName  return    
GO
GRANT EXECUTE ON  [dbo].[smGrantAccessForDboAndSa] TO [DYNGRP]
GO