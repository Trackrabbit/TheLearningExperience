SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- ###############################################################################
-- Create UTIL.udf_nthWeekDay function to get dates for holidays on a specific day of the month
-- ###############################################################################
CREATE FUNCTION [UTIL].[udf_nthWeekDay]
(
  @n       INT, 
  @weekDay CHAR(3),
  @year    INT, 
  @month   INT
)
RETURNS DATETIME
AS
BEGIN
  DECLARE @date    DATETIME,
    @dow         INT,
    @offset      INT,
    @wd          INT;
    
  SELECT @wd = CASE @weekDay
      WHEN 'SUN' THEN 1
      WHEN 'MON' THEN 2
      WHEN 'TUE' THEN 3
      WHEN 'WED' THEN 4
      WHEN 'THU' THEN 5
      WHEN 'FRI' THEN 6
      WHEN 'SAT' THEN 7
    END,
    @date = CAST
    (
      CAST(@year AS VARCHAR(4)) +
      RIGHT
      (
        '0' + CAST
        (
          @month AS VARCHAR(2)
        ), 2
      ) +
      '01' AS DATETIME
    ),
    @dow = DATEPART(dw, @date),
    @offset = @wd - @dow,
    @date = DATEADD(day, @offset + (@n - CASE WHEN @offset >= 0 THEN 1 ELSE 0 END) * 7, @date);
  RETURN @date;
END;
GO
