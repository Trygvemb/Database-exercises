create TABLE ppTreatment (
    TreatmentId int IDENTITY (1,1) PRIMARY KEY,
    Service NVARCHAR(MAX),
    Date DATETIME2,
    Charge FLOAT
);

CREATE TABLE ppPetType (
    PetTypeId int PRIMARY KEY,
    Type NVARCHAR(MAX),
);

CREATE TABLE ppPet (
    PetId int IDENTITY (1,1) PRIMARY KEY,
    Name NVARCHAR(MAX),
    Breed NVARCHAR(MAX),
    DOB DATETIME2,
    TreatmentId int FOREIGN KEY REFERENCES ppTreatment(TreatmentId),
    PetTypeId int FOREIGN KEY REFERENCES ppPetType(PetTypeId)

);

CREATE TABLE ppOwner (
    OwnerId int IDENTITY (1,1) PRIMARY KEY,
    FirstName NVARCHAR(MAX),
    LastName NVARCHAR(MAX),
    Email NVARCHAR(MAX),
    Phone int,
    PetId int FOREIGN KEY REFERENCES ppPet(PetID)
);