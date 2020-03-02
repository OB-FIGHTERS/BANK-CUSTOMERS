create database BANK_CUSTOMER_MANAGEMENT;

CREATE TABLE Client_Account_Creation
(
	Personal_details_number int identity(1, 1) primary key not null,
	Personal_details_name varchar(100) not null,
	Personal_details_Gender varchar(10) not null,
	Personal_details_DoB nvarchar(100) not null,
	Personal_details_nationality varchar(50) not null,
	Personal_details_marital_status varchar(50) not null,
	Personal_details_spouse varchar (100) not null,
	Personal_details_proffesson varchar (100) not null,
	Personal_details_mobile int not null,
	Personal_details_IdCard nvarchar (30) not null,
	Personal_details_image ,

	Applicant_choice varchar(10) not null,
	Applicant_name varchar(100) not null,
	Applicant_consideration varchar(50) not null,
	Applicant_gender varchar(10) not null,
	Applicant_IdCard nvarchar(30) not null,
	Applicant_Address nvarchar(100) not null,
	Applicant_proffession varchar(100) not null,

	Permanent_address_country varchar(50) not null,
	Permanent_address_province varchar(50) not null,
	Permanent_address_town varchar(50) not null,
	Permanent_address_township varchar(50) not null,
	Permanent_address_quarter varchar(50) not null,
	Permanent_address_avenue varchar(50) not null,
	Permanent_address_houseNumber varchar(50) not null,
	Bank_account_number int foreign key references Bank_account_details(Bank_account_number)
);
create table Bank_account_details
(
	Bank_account_number int identity(20200535, 1) primary key not null,
	Bank_account_type varchar(50) not null,
	Bank_account_creationDate nvarchar(50) not null
);

/*drop table Client_Account_Creation;
drop table Bank_account_details;*/

select * from Client_Account_Creation; 
select * from Bank_account_details;