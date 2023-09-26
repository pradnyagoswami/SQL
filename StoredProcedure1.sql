-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE myproc1
	-- Add the parameters for the stored procedure here
	@num1 int,
	@num2 int,
	@result int output
AS
BEGIN
	set @result =@num1+@num2
END
GO
declare @ans int
exec myproc1 @num1=4,@num2=10,@result=@ans output
select  @ans as 'addition'