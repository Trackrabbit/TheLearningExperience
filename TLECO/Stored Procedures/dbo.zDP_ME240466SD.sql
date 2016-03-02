SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240466SD] (@MEUSERID char(15), @BACHNUMB char(15), @BCHSOURC char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .ME240466 WHERE MEUSERID = @MEUSERID AND BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ME240466 WHERE MEUSERID = @MEUSERID AND BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240466SD] TO [DYNGRP]
GO
