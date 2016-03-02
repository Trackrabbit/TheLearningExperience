SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20236SI] (@Extender_Navigation_List int, @LNITMSEQ int, @Field_ID int, @Posting_Restriction smallint, @STRGA255 char(255), @TOTAL numeric(19,5), @DATE1 datetime, @TIME1 datetime, @Condition_Date_Option smallint, @Template_Time_Option1 smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20236 (Extender_Navigation_List, LNITMSEQ, Field_ID, Posting_Restriction, STRGA255, TOTAL, DATE1, TIME1, Condition_Date_Option, Template_Time_Option1) VALUES ( @Extender_Navigation_List, @LNITMSEQ, @Field_ID, @Posting_Restriction, @STRGA255, @TOTAL, @DATE1, @TIME1, @Condition_Date_Option, @Template_Time_Option1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20236SI] TO [DYNGRP]
GO
