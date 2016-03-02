SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10600SD] (@Navigation_ID char(15), @Navigation_Field_Name char(81), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .NLB10600 WHERE Navigation_ID = @Navigation_ID AND Navigation_Field_Name = @Navigation_Field_Name AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NLB10600 WHERE Navigation_ID = @Navigation_ID AND Navigation_Field_Name = @Navigation_Field_Name SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10600SD] TO [DYNGRP]
GO
