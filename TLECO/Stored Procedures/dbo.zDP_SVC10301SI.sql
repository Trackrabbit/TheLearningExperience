SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC10301SI] (@BACHNUMB char(15), @LineNumber smallint, @USERID char(15), @EQUIPID int, @CUSTNMBR char(15), @ADRSCODE char(15), @Meters_1 int, @Meters_2 int, @Meters_3 int, @Meters_4 int, @Meters_5 int, @Dailys_1 numeric(19,5), @Dailys_2 numeric(19,5), @Dailys_3 numeric(19,5), @Dailys_4 numeric(19,5), @Dailys_5 numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC10301 (BACHNUMB, LineNumber, USERID, EQUIPID, CUSTNMBR, ADRSCODE, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5) VALUES ( @BACHNUMB, @LineNumber, @USERID, @EQUIPID, @CUSTNMBR, @ADRSCODE, @Meters_1, @Meters_2, @Meters_3, @Meters_4, @Meters_5, @Dailys_1, @Dailys_2, @Dailys_3, @Dailys_4, @Dailys_5) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC10301SI] TO [DYNGRP]
GO
