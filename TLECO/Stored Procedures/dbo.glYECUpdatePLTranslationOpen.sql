SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glYECUpdatePLTranslationOpen]  @I_sNext_Year smallint = NULL,  @cPLSource varchar(255) = NULL,  @I_Journal_Entry_BASE int   = NULL,  @I_Journal_Entry_IFRS int   = NULL,  @I_Journal_Entry_LOCAL int   = NULL,  @O_SQL_Error_State int  = NULL output  as  declare @iStatus int,  @iError int,  @TranslationExists int,  @FALSE int,  @TRUE int,  @BBFExist smallint,  @cDBName char(5)  select @O_SQL_Error_State = 0  if  @I_sNext_Year is NULL or  @cPLSource is NULL or   @I_Journal_Entry_BASE is NULL or  @I_Journal_Entry_IFRS is NULL or  @I_Journal_Entry_LOCAL is NULL  begin  select @O_SQL_Error_State = 20856  return  end   update GL20001 set Identity_Column = isnull(GL20000.DEX_ROW_ID, 0) from GL20000 where GL20001.OPENYEAR = @I_sNext_Year  and (GL20001.JRNENTRY = @I_Journal_Entry_BASE or GL20001.JRNENTRY = @I_Journal_Entry_IFRS or GL20001.JRNENTRY = @I_Journal_Entry_LOCAL)  and GL20001.ACTINDX = GL20000.ACTINDX  and GL20001.CURNCYID = GL20000.CURNCYID   and GL20001.Ledger_ID = GL20000.Ledger_ID  and GL20000.SOURCDOC = @cPLSource  return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[glYECUpdatePLTranslationOpen] TO [DYNGRP]
GO
