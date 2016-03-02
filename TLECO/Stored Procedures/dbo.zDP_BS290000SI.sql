SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS290000SI] (@SEQNUMBR int, @USERID char(15), @DATE1 datetime, @BSSI_STR255_1 char(255), @BSSI_STR255_2 char(255), @BSSI_STR255_3 char(255), @BSSI_STR255_4 char(255), @BSSI_STR255_5 char(255), @BSSI_STR255_6 char(255), @BSSI_STR255_7 char(255), @BSSI_STR255_8 char(255), @BSSI_STR255_9 char(255), @BSSI_STR255_10 char(255), @BSSI_STR255_11 char(255), @BSSI_STR255_12 char(255), @BSSI_STR255_13 char(255), @BSSI_STR255_14 char(255), @BSSI_STR255_15 char(255), @BSSI_Success tinyint, @ERRDESCR char(131), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .BS290000 (SEQNUMBR, USERID, DATE1, BSSI_STR255_1, BSSI_STR255_2, BSSI_STR255_3, BSSI_STR255_4, BSSI_STR255_5, BSSI_STR255_6, BSSI_STR255_7, BSSI_STR255_8, BSSI_STR255_9, BSSI_STR255_10, BSSI_STR255_11, BSSI_STR255_12, BSSI_STR255_13, BSSI_STR255_14, BSSI_STR255_15, BSSI_Success, ERRDESCR) VALUES ( @SEQNUMBR, @USERID, @DATE1, @BSSI_STR255_1, @BSSI_STR255_2, @BSSI_STR255_3, @BSSI_STR255_4, @BSSI_STR255_5, @BSSI_STR255_6, @BSSI_STR255_7, @BSSI_STR255_8, @BSSI_STR255_9, @BSSI_STR255_10, @BSSI_STR255_11, @BSSI_STR255_12, @BSSI_STR255_13, @BSSI_STR255_14, @BSSI_STR255_15, @BSSI_Success, @ERRDESCR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS290000SI] TO [DYNGRP]
GO