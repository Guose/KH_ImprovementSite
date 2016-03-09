
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/09/2016 11:03:41
-- Generated from EDMX file: C:\Users\jelder\Desktop\Visual Studio JJE\KH_ImprovSite\Kh_ImprovDataLayer\KhImprovement.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [KH_ImprovementSite];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CustomerFormEntry]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FormEntries] DROP CONSTRAINT [FK_CustomerFormEntry];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeFormEntry]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FormEntries] DROP CONSTRAINT [FK_EmployeeFormEntry];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartmentEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_DepartmentEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartmentEffectedDept]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EffectedDepts] DROP CONSTRAINT [FK_DepartmentEffectedDept];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FormEntries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FormEntries];
GO
IF OBJECT_ID(N'[dbo].[Employees]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employees];
GO
IF OBJECT_ID(N'[dbo].[Departments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Departments];
GO
IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[EffectedDepts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EffectedDepts];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'FormEntries'
CREATE TABLE [dbo].[FormEntries] (
    [FormID] int IDENTITY(1,1) NOT NULL,
    [Department] nvarchar(max)  NOT NULL,
    [CustomerName] nvarchar(max)  NULL,
    [JobNumber] nvarchar(max)  NULL,
    [SubjectLine] nvarchar(max)  NULL,
    [ProblemMsg] nvarchar(max)  NOT NULL,
    [SuggestionMsg] nvarchar(max)  NOT NULL,
    [DateEntered] datetime  NOT NULL,
    [IsAllDept] bit  NOT NULL,
    [Customer_CustID] int  NOT NULL,
    [Employee_EmpID] int  NOT NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [EmpID] int IDENTITY(1,1) NOT NULL,
    [LastName] nvarchar(max)  NULL,
    [FirstName] nvarchar(max)  NULL,
    [Email] nvarchar(max)  NULL,
    [DeptName] nvarchar(max)  NOT NULL,
    [Department_DeptID] int  NOT NULL
);
GO

-- Creating table 'Departments'
CREATE TABLE [dbo].[Departments] (
    [DeptID] int IDENTITY(1,1) NOT NULL,
    [DeptName] nvarchar(max)  NOT NULL,
    [DeptHead] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [CustID] int IDENTITY(1,1) NOT NULL,
    [CustomerName] nvarchar(max)  NULL,
    [JobNumber] nvarchar(max)  NULL
);
GO

-- Creating table 'EffectedDepts'
CREATE TABLE [dbo].[EffectedDepts] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [EffectDept1] nvarchar(max)  NULL,
    [EffectDept2] nvarchar(max)  NULL,
    [EffectDept3] nvarchar(max)  NULL,
    [EffectDept4] nvarchar(max)  NULL,
    [EffectDept5] nvarchar(max)  NULL,
    [EffectDept6] nvarchar(max)  NULL,
    [EffectDept7] nvarchar(max)  NULL,
    [EffectDept8] nvarchar(max)  NULL,
    [EffectDept9] nvarchar(max)  NULL,
    [EffectDept10] nvarchar(max)  NULL,
    [EffectDept11] nvarchar(max)  NULL,
    [EffectDept12] nvarchar(max)  NULL,
    [EffectDept13] nvarchar(max)  NULL,
    [EffectDept14] nvarchar(max)  NULL,
    [Department_DeptID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [FormID] in table 'FormEntries'
ALTER TABLE [dbo].[FormEntries]
ADD CONSTRAINT [PK_FormEntries]
    PRIMARY KEY CLUSTERED ([FormID] ASC);
GO

-- Creating primary key on [EmpID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([EmpID] ASC);
GO

-- Creating primary key on [DeptID] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [PK_Departments]
    PRIMARY KEY CLUSTERED ([DeptID] ASC);
GO

-- Creating primary key on [CustID] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([CustID] ASC);
GO

-- Creating primary key on [ID] in table 'EffectedDepts'
ALTER TABLE [dbo].[EffectedDepts]
ADD CONSTRAINT [PK_EffectedDepts]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Customer_CustID] in table 'FormEntries'
ALTER TABLE [dbo].[FormEntries]
ADD CONSTRAINT [FK_CustomerFormEntry]
    FOREIGN KEY ([Customer_CustID])
    REFERENCES [dbo].[Customers]
        ([CustID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerFormEntry'
CREATE INDEX [IX_FK_CustomerFormEntry]
ON [dbo].[FormEntries]
    ([Customer_CustID]);
GO

-- Creating foreign key on [Employee_EmpID] in table 'FormEntries'
ALTER TABLE [dbo].[FormEntries]
ADD CONSTRAINT [FK_EmployeeFormEntry]
    FOREIGN KEY ([Employee_EmpID])
    REFERENCES [dbo].[Employees]
        ([EmpID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeFormEntry'
CREATE INDEX [IX_FK_EmployeeFormEntry]
ON [dbo].[FormEntries]
    ([Employee_EmpID]);
GO

-- Creating foreign key on [Department_DeptID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_DepartmentEmployee]
    FOREIGN KEY ([Department_DeptID])
    REFERENCES [dbo].[Departments]
        ([DeptID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentEmployee'
CREATE INDEX [IX_FK_DepartmentEmployee]
ON [dbo].[Employees]
    ([Department_DeptID]);
GO

-- Creating foreign key on [Department_DeptID] in table 'EffectedDepts'
ALTER TABLE [dbo].[EffectedDepts]
ADD CONSTRAINT [FK_DepartmentEffectedDept]
    FOREIGN KEY ([Department_DeptID])
    REFERENCES [dbo].[Departments]
        ([DeptID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentEffectedDept'
CREATE INDEX [IX_FK_DepartmentEffectedDept]
ON [dbo].[EffectedDepts]
    ([Department_DeptID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------