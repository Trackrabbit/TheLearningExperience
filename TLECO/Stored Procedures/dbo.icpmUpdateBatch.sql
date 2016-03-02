SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpmUpdateBatch]  @I_cBatchNumber char(15)  = NULL,  @I_cBatchSource  char(15)  = NULL,  @O_iErrorState      int             = NULL  output as   declare  @tTransaction          tinyint,  @tLoop          tinyint,  @sROUND smallint,  @sDUETO smallint,  @sDUEFROM smallint,  @TRUE             tinyint  select  @O_iErrorState  = 0  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end   while (@tLoop is NULL) begin      select @tLoop = 1   if      @I_cBatchNumber is NULL or   @I_cBatchSource  is NULL  begin  select @O_iErrorState = 21020  break  end    select  @sROUND  = 16,   @sDUETO  = 19,  @sDUEFROM = 20,  @TRUE   = 1    delete  PM10100   from   PM10100  join PM10000   on (PM10000.VCHRNMBR  = PM10100.VCHRNMBR   and PM10000.CNTRLTYP   = PM10100.CNTRLTYP  and PM10000.BCHSOURC   = @I_cBatchSource  and PM10000.BACHNUMB   = @I_cBatchNumber   and     PM10000.ICTRX     = @TRUE)   where  (PM10100.DISTTYPE = @sROUND  or   PM10100.DISTTYPE = @sDUETO  or   PM10100.DISTTYPE = @sDUEFROM)   and PM10100.PSTGSTUS  = 0  and PM10000.PSTGSTUS  <> 80 end   if @O_iErrorState <> 0 begin  if @tTransaction = 1  rollback transaction  end else if @tTransaction = 1  commit transaction return     
GO
GRANT EXECUTE ON  [dbo].[icpmUpdateBatch] TO [DYNGRP]
GO
