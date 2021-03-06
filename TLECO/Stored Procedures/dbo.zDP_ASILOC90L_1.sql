SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ASILOC90L_1] (@SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS  set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, ASI_Show_Inactive, ASI_QL_Key_Label_1, ASI_QL_Key_Label_2, ASI_QL_Key_Label_3, ASI_QL_Key_Label_4, ASI_QL_Key_Field_ID_1, ASI_QL_Key_Field_ID_2, ASI_QL_Key_Field_ID_3, ASI_QL_Key_Field_ID_4, DEX_ROW_ID FROM .ASILOC90 ORDER BY SETUPKEY DESC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, ASI_Show_Inactive, ASI_QL_Key_Label_1, ASI_QL_Key_Label_2, ASI_QL_Key_Label_3, ASI_QL_Key_Label_4, ASI_QL_Key_Field_ID_1, ASI_QL_Key_Field_ID_2, ASI_QL_Key_Field_ID_3, ASI_QL_Key_Field_ID_4, DEX_ROW_ID FROM .ASILOC90 WHERE SETUPKEY = @SETUPKEY_RS ORDER BY SETUPKEY DESC END ELSE BEGIN SELECT TOP 25  SETUPKEY, ASI_Show_Inactive, ASI_QL_Key_Label_1, ASI_QL_Key_Label_2, ASI_QL_Key_Label_3, ASI_QL_Key_Label_4, ASI_QL_Key_Field_ID_1, ASI_QL_Key_Field_ID_2, ASI_QL_Key_Field_ID_3, ASI_QL_Key_Field_ID_4, DEX_ROW_ID FROM .ASILOC90 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE ORDER BY SETUPKEY DESC END set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ASILOC90L_1] TO [DYNGRP]
GO
