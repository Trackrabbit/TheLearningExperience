SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- ###############################################################################
-- Create UTIL.udf_CalculateEaster function to return the date of Easter for any year. 
-- Uses calculations from NASA to determine lunar calendar which Easter is based on.
-- ###############################################################################
CREATE FUNCTION [UTIL].[udf_CalculateEaster] 
(
  @Year INT
)
RETURNS DATETIME
AS
BEGIN
    DECLARE @Date DATETIME,
    @c INT, 
    @n INT, 
    @i INT, 
    @k INT, 
    @j INT, 
    @l INT, 
    @m INT, 
    @d INT;

    SELECT @n = @Year - 19 * (@Year / 19),
    @c = @Year / 100,
    @k = (@c - 17) / 25,
    @i = @c - @c / 4 - (@c - @k) / 3 + 19 * @n + 15,
    @i = @i - 30 * (@i / 30),
    @i = @i - (@i / 28) * (1 - (@i / 28) * (29 / (@i + 1)) * ((21 - @n) / 11)),
    @j = @Year + @Year / 4 + @i + 2 - @c + @c / 4,
    @j = @j - 7 * (@j / 7),
    @l = @i - @j,
    @m = 3 + (@l + 40) / 44,
    @d = @l + 28 - 31 * (@m / 4),
    @Date = CAST
    (
      CAST(@Year AS CHAR(4)) + 
      RIGHT
      (
        '0' + CAST
        (
          @m AS VARCHAR(2)
        ), 2
      ) + 
      RIGHT
      (
        '0' +CAST
        (
          @d AS VARCHAR(2)
        ), 2
      ) AS DATETIME
    );
    RETURN @Date;
END;
GO
