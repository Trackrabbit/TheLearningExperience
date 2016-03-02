SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME142704SI] (@MEMSN smallint, @MELDP char(41), @ME_Virtual_Workstation tinyint, @ME_Virtual_WS_In_Use tinyint, @MEREQFPTH char(111), @MEANSFPTH char(111), @MEWSAB tinyint, @MEWSA tinyint, @ME_Virtual_WS_Times_Used int, @USERID char(15), @USERDATE datetime, @TIME1 datetime, @ME_Dummy_File_Conversion tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .ME142704 (MEMSN, MELDP, ME_Virtual_Workstation, ME_Virtual_WS_In_Use, MEREQFPTH, MEANSFPTH, MEWSAB, MEWSA, ME_Virtual_WS_Times_Used, USERID, USERDATE, TIME1, ME_Dummy_File_Conversion) VALUES ( @MEMSN, @MELDP, @ME_Virtual_Workstation, @ME_Virtual_WS_In_Use, @MEREQFPTH, @MEANSFPTH, @MEWSAB, @MEWSA, @ME_Virtual_WS_Times_Used, @USERID, @USERDATE, @TIME1, @ME_Dummy_File_Conversion) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME142704SI] TO [DYNGRP]
GO
