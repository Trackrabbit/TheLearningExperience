SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glpRealtimeAllocationCleanup]  @I_sJournalEntry        int         = NULL,  @O_iErrorState          int             = NULL output as  declare  @DELETE_REPORT smallint,  @DISPLAY_REPORT smallint,  @iError int  select  @DELETE_REPORT = 1,  @DISPLAY_REPORT = 0  select  @O_iErrorState  = 0  update  PJOURNAL set   REPORT = @DELETE_REPORT where  JRNENTRY = @I_sJournalEntry and REPORT  = @DISPLAY_REPORT  return    
GO
GRANT EXECUTE ON  [dbo].[glpRealtimeAllocationCleanup] TO [DYNGRP]
GO
