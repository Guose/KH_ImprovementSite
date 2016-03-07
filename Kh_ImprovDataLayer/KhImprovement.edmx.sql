
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/06/2016 22:36:09
-- Generated from EDMX file: C:\Users\Justin\Desktop\Visual Studio\KH_ImprovementSite\Kh_ImprovDataLayer\KhImprovement.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [master];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'FormEntries'
CREATE TABLE [dbo].[FormEntries] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [FormID] nvarchar(max)  NOT NULL,
    [SubjectLine] nvarchar(max)  NULL,
    [CustomerName] nvarchar(max)  NOT NULL,
    [JobNumber] nvarchar(max)  NOT NULL,
    [DepartmentID] nvarchar(max)  NOT NULL,
    [ProblemMsg] nvarchar(max)  NOT NULL,
    [SuggestionMsg] nvarchar(max)  NOT NULL,
    [DateEntered] datetime  NOT NULL,
    [IsAllEffected] bit  NOT NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NULL,
    [LastName] nvarchar(max)  NULL,
    [Email] nvarchar(max)  NULL,
    [Department_ID] int  NOT NULL
);
GO

-- Creating table 'Departments'
CREATE TABLE [dbo].[Departments] (
    [DeptName] nvarchar(max)  NOT NULL,
    [DeptHead] nvarchar(max)  NOT NULL,
    [ID] int  NOT NULL,
    [FormEntry_ID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'FormEntries'
ALTER TABLE [dbo].[FormEntries]
ADD CONSTRAINT [PK_FormEntries]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [PK_Departments]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Department_ID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_DepartmentEmployee]
    FOREIGN KEY ([Department_ID])
    REFERENCES [dbo].[Departments]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentEmployee'
CREATE INDEX [IX_FK_DepartmentEmployee]
ON [dbo].[Employees]
    ([Department_ID]);
GO

-- Creating foreign key on [FormEntry_ID] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [FK_FormEntryDepartment]
    FOREIGN KEY ([FormEntry_ID])
    REFERENCES [dbo].[FormEntries]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FormEntryDepartment'
CREATE INDEX [IX_FK_FormEntryDepartment]
ON [dbo].[Departments]
    ([FormEntry_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------