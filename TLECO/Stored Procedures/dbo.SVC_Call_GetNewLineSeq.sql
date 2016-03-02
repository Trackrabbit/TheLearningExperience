SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Call_GetNewLineSeq]   @RecType int,   @Call varchar(11),   @EquipLine integer,   @LineType char(3),   @IncrementBy bigint,  @NewLineNumber bigint output  AS DECLARE @IncBy bigint if @IncrementBy <= 0  SET @IncBy = 16384 else  SET @IncBy = @IncrementBy SELECT @NewLineNumber = isnull(Max(LNITMSEQ),0) + @IncBy FROM SVC00203   WHERE SRVRECTYPE = @RecType AND CALLNBR = @Call   AND EQPLINE = @EquipLine AND LINITMTYP = @LineType  return   
GO
GRANT EXECUTE ON  [dbo].[SVC_Call_GetNewLineSeq] TO [DYNGRP]
GO
