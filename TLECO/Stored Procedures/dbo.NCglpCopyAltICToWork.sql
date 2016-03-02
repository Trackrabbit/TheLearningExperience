SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[NCglpCopyAltICToWork]  @iCopyJrnlEntry int   = NULL,  @iNewJrnlEntry int   = NULL,  @iRecurTrxSeq numeric(19,5) = NULL,  @iDocDate datetime  = NULL as declare  @lTrxStarted tinyint,  @lControlLoop tinyint,  @lICAltCursorCreated smallint,  @lReturnStatus int,  @lSqlError int,  @lError int,  @lVCHRNMBR char(21),  @lRMDNUMWK char(17),  @lDOCTYPE smallint,  @lSQNCLINE numeric(19,5),  @lNC_Src_IC_Account_Index int,  @lCMPANYID smallint,  @lNC_Dest_Account_Index int,  @lNC_Dest_IC_Account_Index int,  @lRemote_Company_ID char(5),  @lRemote_Destination_Accou char(129),  @lRemote_Destination_IC_Ac char(129),  @lNC_Copy_MDA_CB tinyint,  @lNC_Reverse_MDA_CB tinyint /* IB - 20/06/06, Added Intercompany Log table */ exec dbo.ncWriteInterLog 'NCglpCopyAltICToWork: started' /* *** NCL *** copy our Alternate IC data *** */ while (@lControlLoop is NULL) begin  select @lControlLoop = 1  if @iCopyJrnlEntry is NULL or  @iNewJrnlEntry is NULL or  @iRecurTrxSeq is NULL or  @iDocDate is NULL  begin  select @lReturnStatus = 1  break  end  declare  ICAltCursor  cursor local for  select  VCHRNMBR,  RMDNUMWK,  DOCTYPE,  SQNCLINE,  NC_Src_IC_Account_Index,  CMPANYID,  NC_Dest_Account_Index,  NC_Dest_IC_Account_Index,  Remote_Company_ID,  Remote_Destination_Accou,  Remote_Destination_IC_Ac,  NC_Copy_MDA_CB,  NC_Reverse_MDA_CB  from  NCIC3006  where  JRNENTRY = @iCopyJrnlEntry  open ICAltCursor  select @lICAltCursorCreated = 1  if @@cursor_rows = 0  begin   select @lReturnStatus = 0	/* we are not guaranteed to have a row, so 0 rows is ok not failure */  break  end  fetch next  from  ICAltCursor  into  @lVCHRNMBR,  @lRMDNUMWK,  @lDOCTYPE,  @lSQNCLINE,  @lNC_Src_IC_Account_Index,  @lCMPANYID,  @lNC_Dest_Account_Index,  @lNC_Dest_IC_Account_Index,  @lRemote_Company_ID,  @lRemote_Destination_Accou,  @lRemote_Destination_IC_Ac,  @lNC_Copy_MDA_CB,  @lNC_Reverse_MDA_CB  while @@fetch_status = 0  begin  insert into  NCIC3006  (JRNENTRY,  VCHRNMBR,  RMDNUMWK,  DOCTYPE,  SQNCLINE,  NC_Src_IC_Account_Index,  CMPANYID,  NC_Dest_Account_Index,  NC_Dest_IC_Account_Index,  Remote_Company_ID,  Remote_Destination_Accou,  Remote_Destination_IC_Ac,  NC_Copy_MDA_CB,  NC_Reverse_MDA_CB)  select  @iNewJrnlEntry,  @lVCHRNMBR,  @lRMDNUMWK,  @lDOCTYPE,  @lSQNCLINE,  @lNC_Src_IC_Account_Index,  @lCMPANYID,  @lNC_Dest_Account_Index,  @lNC_Dest_IC_Account_Index,  @lRemote_Company_ID,  @lRemote_Destination_Accou,  @lRemote_Destination_IC_Ac,  @lNC_Copy_MDA_CB,  @lNC_Reverse_MDA_CB  select @lSqlError = @@error  if @lSqlError <> 0  begin  select @lReturnStatus = @lSqlError  break  end   fetch next  from  ICAltCursor  into  @lVCHRNMBR,  @lRMDNUMWK,  @lDOCTYPE,  @lSQNCLINE,  @lNC_Src_IC_Account_Index,  @lCMPANYID,  @lNC_Dest_Account_Index,  @lNC_Dest_IC_Account_Index,  @lRemote_Company_ID,  @lRemote_Destination_Accou,  @lRemote_Destination_IC_Ac,  @lNC_Copy_MDA_CB,  @lNC_Reverse_MDA_CB  end    if @lICAltCursorCreated = 1  deallocate ICAltCursor end   return (@lReturnStatus)  
GO
GRANT EXECUTE ON  [dbo].[NCglpCopyAltICToWork] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[NCglpCopyAltICToWork] TO [public]
GO