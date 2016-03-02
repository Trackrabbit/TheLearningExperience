SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create             function [dbo].[aagMLCellVal]( @iColumn  smallint = 0, @iCalcValue1  numeric(19,5), @iCalcValue2  numeric(19,5), @iRoundTo smallint = 0, @iDecPlaces smallint = 0, @BudgetFlag tinyint=1)  returns numeric(19,5) as begin declare @minus smallint, @Multi smallint select @Multi  = 1 select @minus  = 100 if  @BudgetFlag = 0 return @iCalcValue1  if (@iCalcValue1 = 0) and (@iCalcValue2 = 0) return 0 if (@iCalcValue1 is null) and (@iCalcValue2 is null) return 0  if @iColumn in( 1,  2,  3,  4,  5,  6)  or @iColumn in(21, 22, 23, 24, 25, 26)  or @iColumn in(41, 42, 43, 44, 45, 46)  or @iColumn in(81,82,83,84,85,86)  begin if @iRoundTo >= 0 return (isnull(round(@iCalcValue1, @iRoundTo), 0)) if @iRoundTo = -3 return (isnull(round(@iCalcValue1 / 1000,    2), 0)) if @iRoundTo = -4 return (isnull(round(@iCalcValue1 / 10000,   2), 0)) if @iRoundTo = -5 return (isnull(round(@iCalcValue1 / 100000,  2), 0)) if @iRoundTo = -6 return (isnull(round(@iCalcValue1 / 1000000, 2), 0)) end  if @iColumn in( 8, 11, 13)  or @iColumn in(28, 31, 33)  or @iColumn in(48, 51, 53) or @iColumn in(88, 93, 90, 100,101,102,103,104,109,110) begin if @iRoundTo >= 0 return (isnull(round(@iCalcValue1, @iRoundTo)   - round(@iCalcValue2, @iRoundTo), 0)) if @iRoundTo = -3 return (isnull(round(@iCalcValue1 / 1000, 2)    - round(@iCalcValue2 / 1000   , 2), 0)) if @iRoundTo = -4 return (isnull(round(@iCalcValue1 / 10000, 2)   - round(@iCalcValue2 / 10000  , 2), 0)) if @iRoundTo = -5 return (isnull(round(@iCalcValue1 / 100000, 2)  - round(@iCalcValue2 / 100000 , 2), 0)) if @iRoundTo = -6 return (isnull(round(@iCalcValue1 / 1000000, 2) - round(@iCalcValue2 / 1000000, 2), 0)) end  if @iColumn in( 7,  9, 10, 12, 14)  or @iColumn in(27, 29, 30, 32, 34)  or @iColumn in(47, 49, 50, 52, 54)  or @iColumn in(87, 89, 92, 94, 91)  if @iCalcValue2 <> 0 begin if @iColumn in (7, 10, 27, 30, 47, 50, 87, 92) select @minus = 0 else select @minus = 100 if @iRoundTo >= 0 return (isnull(round(round(@iCalcValue1, @iRoundTo) / round(@iCalcValue2, @iRoundTo) * 100 - @minus, 2), 0)) if @iRoundTo = -3 if round(@iCalcValue2 / 1000, 2)    <> 0 return (isnull(round(round(@iCalcValue1 / 1000, 2)    / round(@iCalcValue2 / 1000, 2)    * 100 - @minus, 2), 0)) if @iRoundTo = -4 if round(@iCalcValue2 / 10000, 2)   <> 0 return (isnull(round(round(@iCalcValue1 / 10000, 2)   / round(@iCalcValue2 / 10000, 2)   * 100 - @minus, 2), 0)) if @iRoundTo = -5 if round(@iCalcValue2 / 100000, 2)  <> 0 return (isnull(round(round(@iCalcValue1 / 100000, 2)  / round(@iCalcValue2 / 100000, 2)  * 100 - @minus, 2), 0)) if @iRoundTo = -6 if round(@iCalcValue2 / 1000000, 2) <> 0 return (isnull(round(round(@iCalcValue1 / 1000000, 2) / round(@iCalcValue2 / 1000000, 2) * 100 - @minus, 2), 0)) end if @iColumn in (105,106,107,108,111,112) if @iCalcValue2 = 0 begin if @iRoundTo >= 0 return (isnull(round(round(@iCalcValue1, @iRoundTo)  * 100, 2), 0)) if @iRoundTo = -3 if round(@iCalcValue1 / 1000, 2)    <> 0 return (isnull(round(round(@iCalcValue1 / 1000, 2)   * 100, 2), 0))  if @iRoundTo = -4 if round(@iCalcValue1 / 1000, 2)    <> 0 return (isnull(round(round(@iCalcValue1/ 10000, 2)   * 100, 2), 0))  if @iRoundTo = -5 if round(@iCalcValue1 / 1000, 2)    <> 0 return (isnull(round(round(@iCalcValue1/ 100000, 2)  * 100, 2), 0)) if @iRoundTo = -6 if round(@iCalcValue1 / 1000, 2)    <> 0 return (isnull(round(round(@iCalcValue1/ 1000000, 2) * 100, 2), 0)) end if @iColumn in(105,106,107,108,111,112) begin if @iCalcValue1 <> 0 begin if @iRoundTo >= 0 return (isnull(round(round(@iCalcValue2, @iRoundTo) / round(@iCalcValue1, @iRoundTo) * 100, 2), 0)) if @iRoundTo = -3 if round(@iCalcValue2 / 1000, 2)    <> 0 return (isnull(round(round(@iCalcValue2 / 1000, 2)    / round(@iCalcValue1 / 1000, 2)    * 100 , 2), 0)) if @iRoundTo = -4 if round(@iCalcValue2 / 10000, 2)   <> 0 return (isnull(round(round(@iCalcValue2/ 10000, 2)   / round(@iCalcValue1 / 10000, 2)   * 100 , 2), 0)) if @iRoundTo = -5 if round(@iCalcValue2 / 100000, 2)  <> 0 return (isnull(round(round(@iCalcValue2/ 100000, 2)  / round(@iCalcValue1 / 100000, 2)  * 100 , 2), 0)) if @iRoundTo = -6 if round(@iCalcValue2 / 1000000, 2) <> 0 return (isnull(round(round(@iCalcValue2/ 1000000, 2) / round(@iCalcValue1 / 1000000, 2) * 100 , 2), 0)) end end else return 0  return 0 end   
GO
GRANT EXECUTE ON  [dbo].[aagMLCellVal] TO [DYNGRP]
GO