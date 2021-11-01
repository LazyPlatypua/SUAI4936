CREATE TABLE city(
	          idCity int AUTO_INCREMENT NOT NULL, 
                    nameCity varchar(45), 
                    PRIMARY KEY(idCity)
		);
CREATE TABLE organization(
		    idOrganization int AUTO_INCREMENT NOT NULL, 
                        employerOrganization varchar(45), 
                        idCity int NOT NULL, 
                        PRIMARY KEY(idOrganization), 
                        FOREIGN KEY(idCity) REFERENCES cityV(idCity)
                        on DELETE CASCADE
                        on UPDATE CASCADE
		    );
CREATE TABLE vacancy(
		    idVacancy int AUTO_INCREMENT NOT NULL, 
		    vacancyName varchar(45), 
                        idOrganization int NOT NULL, 
                        issueDate datetime,
                        schedule varchar(45),
                        paymentLow int,
                        paymentHigh int,
                        PRIMARY KEY(idVacancy), 
                        FOREIGN KEY(idOrganization) REFERENCES organization(idOrganizationV)
                        on DELETE CASCADE
                        on UPDATE CASCADE
                        );
CREATE TABLE requirement(
		   idRequirement int AUTO_INCREMENT NOT NULL, 
           descriptionRequirement varchar(240),
           PRIMARY KEY(idRequirement)
                        );
CREATE TABLE vacancyRequirement(
		    idVacancyRequirement int AUTO_INCREMENT, 
            idRequirement int NOT NULL, 
            idVacancy int NOT NULL,
            required tinyint,
                        PRIMARY KEY(idVacancyRequirement),
                        FOREIGN KEY(idRequirement) REFERENCES requirement(idRequirement)
                        on DELETE CASCADE
                        on UPDATE CASCADE,
                        FOREIGN KEY(idVacancy) REFERENCES vacancy(idVacancy)
                        on DELETE CASCADE
                        on UPDATE CASCADE
                        );
CREATE TABLE responsibility(
		   idResponsibility int AUTO_INCREMENT NOT NULL, 
           descriptionResponsibility varchar(240),
           PRIMARY KEY(idResponsibility)
                        );
CREATE TABLE vacancyResponsibility(
		    idVacancyResponsibility int AUTO_INCREMENT, 
            idResponsibility int NOT NULL,
            idVacancy int NOT NULL,
                        PRIMARY KEY(idVacancyResponsibility),
                        FOREIGN KEY(idResponsibility) REFERENCES responsibility(idResponsibility)
                        on DELETE CASCADE
                        on UPDATE CASCADE,
                        FOREIGN KEY(idVacancy) REFERENCES vacancy(idVacancy)
                        on DELETE CASCADE
                        on UPDATE CASCADE
                        );