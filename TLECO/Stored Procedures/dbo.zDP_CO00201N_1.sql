SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00201N_1] (@BS int, @SERIES smallint, @USERID char(15), @TYPEID smallint, @SEQNUMBR int, @SERIES_RS smallint, @USERID_RS char(15), @TYPEID_RS smallint, @SEQNUMBR_RS int, @SERIES_RE smallint, @USERID_RE char(15), @TYPEID_RE smallint, @SEQNUMBR_RE int) AS  set nocount on IF @SERIES_RS IS NULL BEGIN SELECT TOP 25  SERIES, USERID, TYPEID, SEQNUMBR, OPTION1, OPTION2, OPTION3, OPTION4, FieldPhysicalName, FieldDataType, FieldRefID, FilterType, Start_Position_String, End_Position_String, STRTAMNT, ENDAMNT, STRTDATE, ENDDATE, startValue, endValue, DEX_ROW_ID FROM .CO00201 WHERE ( SERIES = @SERIES AND USERID = @USERID AND TYPEID = @TYPEID AND SEQNUMBR > @SEQNUMBR OR SERIES = @SERIES AND USERID = @USERID AND TYPEID > @TYPEID OR SERIES = @SERIES AND USERID > @USERID OR SERIES > @SERIES ) ORDER BY SERIES ASC, USERID ASC, TYPEID ASC, SEQNUMBR ASC END ELSE IF @SERIES_RS = @SERIES_RE BEGIN SELECT TOP 25  SERIES, USERID, TYPEID, SEQNUMBR, OPTION1, OPTION2, OPTION3, OPTION4, FieldPhysicalName, FieldDataType, FieldRefID, FilterType, Start_Position_String, End_Position_String, STRTAMNT, ENDAMNT, STRTDATE, ENDDATE, startValue, endValue, DEX_ROW_ID FROM .CO00201 WHERE SERIES = @SERIES_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND TYPEID BETWEEN @TYPEID_RS AND @TYPEID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( SERIES = @SERIES AND USERID = @USERID AND TYPEID = @TYPEID AND SEQNUMBR > @SEQNUMBR OR SERIES = @SERIES AND USERID = @USERID AND TYPEID > @TYPEID OR SERIES = @SERIES AND USERID > @USERID OR SERIES > @SERIES ) ORDER BY SERIES ASC, USERID ASC, TYPEID ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  SERIES, USERID, TYPEID, SEQNUMBR, OPTION1, OPTION2, OPTION3, OPTION4, FieldPhysicalName, FieldDataType, FieldRefID, FilterType, Start_Position_String, End_Position_String, STRTAMNT, ENDAMNT, STRTDATE, ENDDATE, startValue, endValue, DEX_ROW_ID FROM .CO00201 WHERE SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND TYPEID BETWEEN @TYPEID_RS AND @TYPEID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( SERIES = @SERIES AND USERID = @USERID AND TYPEID = @TYPEID AND SEQNUMBR > @SEQNUMBR OR SERIES = @SERIES AND USERID = @USERID AND TYPEID > @TYPEID OR SERIES = @SERIES AND USERID > @USERID OR SERIES > @SERIES ) ORDER BY SERIES ASC, USERID ASC, TYPEID ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00201N_1] TO [DYNGRP]
GO
