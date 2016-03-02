SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[aagUpdateOffsetSeqLine] @JRNENTRY int, @aaGLWorkHdrID  int as begin  declare @OFFACTYP   smallint,  @FXDORVAR smallint  select @OFFACTYP =  OFFACTYP, @FXDORVAR = OFFXVAR from GL10100  where JRNENTRY = @JRNENTRY   update AAG10001   set  ACCTTYPE =  @OFFACTYP,  FXDORVAR = @FXDORVAR  where aaGLWorkHdrID = @aaGLWorkHdrID and aaGLWorkDistID > = 0 and   aaOFFSETAcct = 1  end     
GO
GRANT EXECUTE ON  [dbo].[aagUpdateOffsetSeqLine] TO [DYNGRP]
GO
