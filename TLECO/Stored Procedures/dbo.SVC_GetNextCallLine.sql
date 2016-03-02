SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_GetNextCallLine]  (  @SRVRECTYPE smallint,  @CALLNBR char(11),  @EQUIPLINE integer,  @LINETYPE varchar(3),  @IncrementBy bigint,  @NewLine numeric(19,5) OUTPUT  ) As DECLARE @IncBy bigint  if @IncrementBy <= 0  SET @IncBy = 16384 else  SET @IncBy = @IncrementBy  select @NewLine = max(IsNull(LNITMSEQ,0)) + @IncBy from SVC00203 where SRVRECTYPE = @SRVRECTYPE and CALLNBR = @CALLNBR and  EQPLINE = @EQUIPLINE   AND LINITMTYP = @LINETYPE select @NewLine = IsNull(@NewLine,0)   return    
GO
GRANT EXECUTE ON  [dbo].[SVC_GetNextCallLine] TO [DYNGRP]
GO
