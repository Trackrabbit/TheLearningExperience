SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30652SD] (@CONSTS smallint, @CONTNBR char(11), @SVC_Contract_Version smallint, @LNSEQNBR numeric(19,5), @OPTTYPE char(11), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC30652 WHERE CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND LNSEQNBR = @LNSEQNBR AND OPTTYPE = @OPTTYPE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC30652 WHERE CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND LNSEQNBR = @LNSEQNBR AND OPTTYPE = @OPTTYPE SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30652SD] TO [DYNGRP]
GO
