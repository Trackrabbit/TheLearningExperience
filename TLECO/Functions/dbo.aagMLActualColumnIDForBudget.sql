SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create   function [dbo].[aagMLActualColumnIDForBudget](@ColID int) returns integer as  begin declare @ActColumn int select  @ActColumn = 0  if @ColID = 101 set @ActColumn = 41 if @ColID = 102 set @ActColumn = 42 if @ColID = 103 set @ActColumn = 45  if @ColID = 104 set @ActColumn = 46 if @ColID = 105 set @ActColumn = 41 if @ColID = 106 set @ActColumn = 42 if @ColID = 107 set @ActColumn = 45 if @ColID = 108 set @ActColumn = 46 if @ColID = 109 set @ActColumn = 43 if @ColID = 110 set @ActColumn = 44 if @ColID = 111 set @ActColumn = 43 if @ColID = 112 set @ActColumn = 44 if @ColID < 101 set @ActColumn = 80 return @ActColumn end    
GO
GRANT EXECUTE ON  [dbo].[aagMLActualColumnIDForBudget] TO [DYNGRP]
GO
