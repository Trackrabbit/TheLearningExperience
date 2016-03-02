SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SE000100SI] (@USERID char(15), @PERIODID smallint, @PERNAME char(21), @SE_Net_Amount_1 numeric(19,5), @SE_Net_Amount_2 numeric(19,5), @SE_Net_Amount_3 numeric(19,5), @SE_Net_Amount_4 numeric(19,5), @SE_Period_Balance_1 numeric(19,5), @SE_Period_Balance_2 numeric(19,5), @SE_Period_Balance_3 numeric(19,5), @SE_Period_Balance_4 numeric(19,5), @SECURIDX_1 smallint, @SECURIDX_2 smallint, @SECURIDX_3 smallint, @SECURIDX_4 smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SE000100 (USERID, PERIODID, PERNAME, SE_Net_Amount_1, SE_Net_Amount_2, SE_Net_Amount_3, SE_Net_Amount_4, SE_Period_Balance_1, SE_Period_Balance_2, SE_Period_Balance_3, SE_Period_Balance_4, SECURIDX_1, SECURIDX_2, SECURIDX_3, SECURIDX_4) VALUES ( @USERID, @PERIODID, @PERNAME, @SE_Net_Amount_1, @SE_Net_Amount_2, @SE_Net_Amount_3, @SE_Net_Amount_4, @SE_Period_Balance_1, @SE_Period_Balance_2, @SE_Period_Balance_3, @SE_Period_Balance_4, @SECURIDX_1, @SECURIDX_2, @SECURIDX_3, @SECURIDX_4) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SE000100SI] TO [DYNGRP]
GO
