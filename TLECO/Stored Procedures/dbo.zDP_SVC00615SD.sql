SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00615SD] (@USERID char(15), @CONSTS smallint, @MKDTOPST tinyint, @CONTNBR char(11), @Bill_To_Customer char(15), @SVC_Bill_To_Address_Code char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC00615 WHERE USERID = @USERID AND CONSTS = @CONSTS AND MKDTOPST = @MKDTOPST AND CONTNBR = @CONTNBR AND Bill_To_Customer = @Bill_To_Customer AND SVC_Bill_To_Address_Code = @SVC_Bill_To_Address_Code AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC00615 WHERE USERID = @USERID AND CONSTS = @CONSTS AND MKDTOPST = @MKDTOPST AND CONTNBR = @CONTNBR AND Bill_To_Customer = @Bill_To_Customer AND SVC_Bill_To_Address_Code = @SVC_Bill_To_Address_Code SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00615SD] TO [DYNGRP]
GO
