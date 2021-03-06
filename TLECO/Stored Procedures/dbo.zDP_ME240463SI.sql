SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240463SI] (@Queue_ID smallint, @CHEKBKID char(15), @BACHNUMB char(15), @USERID char(15), @INDXLONG int, @MECHKID int, @SEQNUMBR int, @Category_Name char(51), @MEFIELDNAME char(61), @Field_Value char(101), @DATE1 datetime, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME240463 (Queue_ID, CHEKBKID, BACHNUMB, USERID, INDXLONG, MECHKID, SEQNUMBR, Category_Name, MEFIELDNAME, Field_Value, DATE1) VALUES ( @Queue_ID, @CHEKBKID, @BACHNUMB, @USERID, @INDXLONG, @MECHKID, @SEQNUMBR, @Category_Name, @MEFIELDNAME, @Field_Value, @DATE1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240463SI] TO [DYNGRP]
GO
