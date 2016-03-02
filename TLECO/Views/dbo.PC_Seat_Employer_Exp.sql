SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[PC_Seat_Employer_Exp] AS select rtrim(['A'].[PlanCode]) as 'Plan Code', rtrim(['A'].[PlanDesc]) as 'Plan Code Description', rtrim(['A'].[Position]) as 'Position Code', rtrim(['A'].[PosDescription]) as 'Position Code Description', rtrim(['A'].[Department]) as 'Department', rtrim(['A'].[DepDescription]) as 'Department Description', rtrim(cast(datepart(mm,['A'].[StartDate]) as varchar(2))) + '/' +  rtrim(cast(datepart(dd,['A'].[StartDate]) as varchar(2))) + '/' +  rtrim(cast(datepart(yy,['A'].[StartDate]) as varchar(4))) as 'Seats Start Date', rtrim(cast(datepart(mm,['A'].[EndDate]) as varchar(2))) + '/' +   rtrim(cast(datepart(dd,['A'].[EndDate]) as varchar(2))) + '/' +   rtrim(cast(datepart(yy,['A'].[EndDate]) as varchar(4))) as 'Seats End Date', ['A'].[SeatNumber] as 'Seat', rtrim(['A'].[SeatDesc]) as 'Seat Description', ['A'].[TempSeat] as 'Temporary Seat', rtrim(['A'].[EmployeeID]) as 'Employee ID', rtrim(['A'].[EmployeeName]) as 'Employee Name', rtrim(cast(datepart(mm,['A'].[Date]) as varchar(2))) + '/' +  rtrim(cast(datepart(dd,['A'].[Date]) as varchar(2))) + '/' +    rtrim(cast(datepart(yy,['A'].[Date]) as varchar(4))) as 'ER Expense Date', ['A'].[WageAmount] as 'Wage Expense', ['A'].[BenefitsAmount] as 'Benefit Expense', ['A'].[TaxAmount] as 'Tax Expense'  FROM PC_EmployerCostDaily('*CURRENT',0) as ['A']              
GO
GRANT SELECT ON  [dbo].[PC_Seat_Employer_Exp] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC_Seat_Employer_Exp] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC_Seat_Employer_Exp] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC_Seat_Employer_Exp] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PC_Seat_Employer_Exp] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[PC_Seat_Employer_Exp] TO [rpt_human resource administrator]
GO
