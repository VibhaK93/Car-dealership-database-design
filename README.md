# Car-dealership-database-design 
The goal of the project is to design a car dealership database with a logical design, conceptual schema, ERD diagram, and create mockups to understand how user, advertisement, and car details data can be retrieved using SQL queries.

###  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ER Diagram
  ![ER Diagram](https://github.com/VibhaK93/Car-dealership-database-design/assets/146596962/ea1e873b-6f2e-477f-9f88-6102c46b1571)

## External schema, user views, forms
### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Registration
--To Add user/car/advertisement/photo values in User/car/advertisement/photo table

INSERT INTO User (UserType_UserTypeID, FirstName, LastName, Email, Phone) VALUES ('1', 'Ben', 'Smith', 'ben@abc.com', '1112228888');

INSERT INTO Car (BodyStyle_BodyStyleID, ConditionType_ConditionTypeID, Model_ModelID, ManufacturingYear, Mileage, CarColor) VALUES ('1', '2', '1', '2021', '200', 'Black');

INSERT INTO Advertisement (User_UserID, Car_CarID, Price, AdvDescription, AdvertisementActive, DatePosted) VALUES ('1','1', '3948.99', 'Immediately available', 0, '2022-04-19');

INSERT INTO Photo (Advertisement_AdvertisementID, PhotoLink, PhotoDescription) VALUES ('1', 'IMG000000032.JPG', 'Sweet New Car');

  ![User Registration](https://github.com/VibhaK93/Car-dealership-database-design/assets/146596962/8c93d42a-7968-4c58-a2e3-84c50b05f8ce)
  
  ### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Advertisement Post Page
  ![Advertisement_Page](https://github.com/VibhaK93/Car-dealership-database-design/assets/146596962/a0477969-cbf3-4000-b658-ad689a67fc17)

  ### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Car Browsing Page
  ![Car_Browsing_Page](https://github.com/VibhaK93/Car-dealership-database-design/assets/146596962/d0461968-f89b-49ab-a104-a044edfea2c3)

  ### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Advertisement Page
  ![Advertisement_Inner_Page](https://github.com/VibhaK93/Car-dealership-database-design/assets/146596962/9292b719-1ad3-4b5f-b5c8-7771aaee3167)

 ### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Edit/Update Advertisement Page
  ![Edit:Update_Advertisment_Detail](https://github.com/VibhaK93/Car-dealership-database-design/assets/146596962/6994a905-0f8f-465c-85ed-bbc9db9e8a6c)
