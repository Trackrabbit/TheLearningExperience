SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00201SI] (@SERIES smallint, @USERID char(15), @TYPEID smallint, @SEQNUMBR int, @OPTION1 tinyint, @OPTION2 tinyint, @OPTION3 tinyint, @OPTION4 tinyint, @FieldPhysicalName char(31), @FieldDataType smallint, @FieldRefID smallint, @FilterType smallint, @Start_Position_String char(89), @End_Position_String char(89), @STRTAMNT numeric(19,5), @ENDAMNT numeric(19,5), @STRTDATE datetime, @ENDDATE datetime, @startValue int, @endValue int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CO00201 (SERIES, USERID, TYPEID, SEQNUMBR, OPTION1, OPTION2, OPTION3, OPTION4, FieldPhysicalName, FieldDataType, FieldRefID, FilterType, Start_Position_String, End_Position_String, STRTAMNT, ENDAMNT, STRTDATE, ENDDATE, startValue, endValue) VALUES ( @SERIES, @USERID, @TYPEID, @SEQNUMBR, @OPTION1, @OPTION2, @OPTION3, @OPTION4, @FieldPhysicalName, @FieldDataType, @FieldRefID, @FilterType, @Start_Position_String, @End_Position_String, @STRTAMNT, @ENDAMNT, @STRTDATE, @ENDDATE, @startValue, @endValue) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00201SI] TO [DYNGRP]
GO
