IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191113102803_InitialCreate')
BEGIN
    CREATE TABLE [Customers] (
        [Id] int NOT NULL IDENTITY,
        [Name] nvarchar(200) NOT NULL,
        [VAT] nvarchar(16) NOT NULL,
        [Enabled] bit NOT NULL,
        CONSTRAINT [PK_Customers] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191113102803_InitialCreate')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Enabled', N'Name', N'VAT') AND [object_id] = OBJECT_ID(N'[Customers]'))
        SET IDENTITY_INSERT [Customers] ON;
    INSERT INTO [Customers] ([Id], [Enabled], [Name], [VAT])
    VALUES (1, 1, N'Microsoft', N'IE8256796U');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Enabled', N'Name', N'VAT') AND [object_id] = OBJECT_ID(N'[Customers]'))
        SET IDENTITY_INSERT [Customers] OFF;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191113102803_InitialCreate')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Enabled', N'Name', N'VAT') AND [object_id] = OBJECT_ID(N'[Customers]'))
        SET IDENTITY_INSERT [Customers] ON;
    INSERT INTO [Customers] ([Id], [Enabled], [Name], [VAT])
    VALUES (2, 0, N'Google', N'IE6388047V');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Enabled', N'Name', N'VAT') AND [object_id] = OBJECT_ID(N'[Customers]'))
        SET IDENTITY_INSERT [Customers] OFF;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191113102803_InitialCreate')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191113102803_InitialCreate', N'2.1.11-servicing-32099');
END;

GO

