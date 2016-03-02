SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510106SD] (@MJW_Investor_Group_ID char(41), @VENDORID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B0510106 WHERE MJW_Investor_Group_ID = @MJW_Investor_Group_ID AND VENDORID = @VENDORID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B0510106 WHERE MJW_Investor_Group_ID = @MJW_Investor_Group_ID AND VENDORID = @VENDORID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510106SD] TO [DYNGRP]
GO
