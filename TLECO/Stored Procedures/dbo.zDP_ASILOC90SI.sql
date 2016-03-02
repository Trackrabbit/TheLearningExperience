SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ASILOC90SI] (@SETUPKEY smallint, @ASI_Show_Inactive tinyint, @ASI_QL_Key_Label_1 char(51), @ASI_QL_Key_Label_2 char(51), @ASI_QL_Key_Label_3 char(51), @ASI_QL_Key_Label_4 char(51), @ASI_QL_Key_Field_ID_1 smallint, @ASI_QL_Key_Field_ID_2 smallint, @ASI_QL_Key_Field_ID_3 smallint, @ASI_QL_Key_Field_ID_4 smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ASILOC90 (SETUPKEY, ASI_Show_Inactive, ASI_QL_Key_Label_1, ASI_QL_Key_Label_2, ASI_QL_Key_Label_3, ASI_QL_Key_Label_4, ASI_QL_Key_Field_ID_1, ASI_QL_Key_Field_ID_2, ASI_QL_Key_Field_ID_3, ASI_QL_Key_Field_ID_4) VALUES ( @SETUPKEY, @ASI_Show_Inactive, @ASI_QL_Key_Label_1, @ASI_QL_Key_Label_2, @ASI_QL_Key_Label_3, @ASI_QL_Key_Label_4, @ASI_QL_Key_Field_ID_1, @ASI_QL_Key_Field_ID_2, @ASI_QL_Key_Field_ID_3, @ASI_QL_Key_Field_ID_4) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ASILOC90SI] TO [DYNGRP]
GO
