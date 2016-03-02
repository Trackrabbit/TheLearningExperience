SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[E1_SC_GetNextProjectNumber]
	@NumberType INT,
	@ProjectNumber CHAR(17) OUTPUT
AS
	DECLARE @Loop int = 0
	IF @NumberType = 1
	BEGIN
		WHILE @Loop < 1000
		BEGIN
			UPDATE PA41801 SET PATSdoccounter = dbo.E1_fnIncrementDecrement(PATSdoccounter), @ProjectNumber = PATSdoccounter
			WHERE PAsetupkey = 1
			IF EXISTS(SELECT * FROM PA10000 WHERE PATSNO = @ProjectNumber)
			BEGIN
				SELECT @Loop = @Loop + 1
				SELECT @ProjectNumber = 'Err'
			END
			ELSE IF EXISTS(SELECT * FROM PA10001 WHERE PATSNO = @ProjectNumber)
			BEGIN
				SELECT @Loop = @Loop + 1
				SELECT @ProjectNumber = 'Err'
			END
			ELSE IF EXISTS(SELECT * FROM PA01901 WHERE PADocnumber20 = @ProjectNumber)
			BEGIN
				SELECT @Loop = @Loop + 1
				SELECT @ProjectNumber = 'Err'
			END
			ELSE
			BEGIN
				SELECT @Loop = 1000
			END
		END
	END
	ELSE IF @NumberType = 2
	BEGIN
		WHILE @Loop < 1000
		BEGIN
			UPDATE PA42401 SET PAerdoccounter = dbo.E1_fnIncrementDecrement(PAerdoccounter), @ProjectNumber = PAerdoccounter
			WHERE PAsetupkey = 1
			IF EXISTS(SELECT * FROM PM00400 WHERE DOCNUMBR = @ProjectNumber)
			BEGIN
				SELECT @Loop = @Loop + 1
				SELECT @ProjectNumber = 'Err'
			END
			ELSE IF EXISTS(SELECT * FROM PA01901 WHERE PADocnumber20 = @ProjectNumber)
			BEGIN
				SELECT @Loop = @Loop + 1
				SELECT @ProjectNumber = 'Err'
			END
			ELSE
			BEGIN
				SELECT @Loop = 1000
			END
		END
	END
	ELSE IF @NumberType = 3
	BEGIN
		WHILE @Loop < 1000
		BEGIN
			UPDATE PA41901 SET PAEQdoccounter = dbo.E1_fnIncrementDecrement(PAEQdoccounter), @ProjectNumber = PAEQdoccounter
			WHERE PAsetupkey = 1
			IF EXISTS(SELECT * FROM PA01901 WHERE PADocnumber20 = @ProjectNumber)
			BEGIN
				SELECT @Loop = @Loop + 1
				SELECT @ProjectNumber = 'Err'
			END
			ELSE
			BEGIN
				SELECT @Loop = 1000
			END
		END
	END
	ELSE IF @NumberType = 4
	BEGIN
		WHILE @Loop < 1000
		BEGIN
			UPDATE PA42001 SET PAMISCLdoccounter = dbo.E1_fnIncrementDecrement(PAMISCLdoccounter), @ProjectNumber = PAMISCLdoccounter
			WHERE PAsetupkey = 1
			IF EXISTS(SELECT * FROM PA01901 WHERE PADocnumber20 = @ProjectNumber)
			BEGIN
				SELECT @Loop = @Loop + 1
				SELECT @ProjectNumber = 'Err'
			END
			ELSE
			BEGIN
				SELECT @Loop = 1000
			END
		END
	END
	ELSE
	BEGIN
		SELECT @ProjectNumber = 'Err'
	END
GO
GRANT EXECUTE ON  [dbo].[E1_SC_GetNextProjectNumber] TO [DYNGRP]
GO
