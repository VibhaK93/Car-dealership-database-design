--To Add user/car/advertisement/photo values in the User/car/advertisement/photo table

INSERT INTO User (UserType_UserTypeID, FirstName, LastName, Email, Phone) VALUES ('1', 'Ben', 'Smith', 'ben@abc.com', '1112228888');

INSERT INTO Car (BodyStyle_BodyStyleID, ConditionType_ConditionTypeID, Model_ModelID, ManufacturingYear, Mileage, CarColor) VALUES ('1', '2', '1', '2021', '200', 'Black');

INSERT INTO Advertisement (User_UserID, Car_CarID, Price, AdvDescription, AdvertisementActive, DatePosted) VALUES ('1','1', '3948.99', 'Immediately available', 0, '2022-04-19');

INSERT INTO Photo (Advertisement_AdvertisementID, PhotoLink, PhotoDescription) VALUES ('1', 'IMG000000032.JPG', 'Sweet New Car');


-- To Browse Active Advertisements that are 14 days or less and sort by date posted descending order (no photos)

SELECT adv.Price, car.ManufacturingYear, car.Mileage, body.BodyStyle, car.CarColor, make.BrandName, model.ModelName, cnd.ConditionName, adv.DatePosted FROM Advertisement adv
    INNER JOIN Car car ON (adv.Car_CarID = car.CarID)
    INNER JOIN Model model ON (car.Model_ModelID = model.ModelID)
    INNER JOIN Make make ON (make.MakeID = model.Make_MakeID)
    INNER JOIN BodyStyle body ON (car.BodyStyle_BodyStyleID = body.BodyStyleID)
    INNER JOIN ConditionType cnd ON (car.ConditionType_ConditionTypeID = cnd.ConditionTypeID)
    WHERE adv.AdvertisementActive = 1 AND
        (adv.DatePosted BETWEEN DATE_ADD(now(), INTERVAL -14 DAY) AND now())
    ORDER BY adv.DatePosted DESC;



-- To view Individual Advertisement ID #1 (include contact information and photos) 

SELECT adv.AdvertisementActive, adv.Price, car.ManufacturingYear, car.Mileage, bdy.BodyStyle,
        car.CarColor, make.BrandName, model.ModelName, adv.AdvDescription, 
        cnd.ConditionName, adv.DatePosted, user.Email, user.Phone FROM Advertisement adv
    INNER JOIN Car car ON (adv.Car_CarID = car.CarID)
    INNER JOIN Model model ON (car.Model_ModelID = model.ModelID)
    INNER JOIN Make make ON (make.MakeID = model.Make_MakeID)
    INNER JOIN BodyStyle bdy ON (car.BodyStyle_BodyStyleID = bdy.BodyStyleID)
    INNER JOIN ConditionType cnd ON (car.ConditionType_ConditionTypeID = cnd.ConditionTypeID)
    INNER JOIN User user ON (adv.User_UserID = user.UserID)
    WHERE adv.AdvertisementID = 1;

 -- To View Average Price By Make

SELECT COUNT(*), AVG(adv.Price), Make.BrandName FROM Advertisement adv 
INNER JOIN Car Car ON (Car.CarID=adv.Car_CarID)
INNER JOIN Model Model ON (Model.ModelID=Car.Model_ModelID)
INNER JOIN Make Make ON (Make.MakeID=Model.Make_MakeID)
GROUP BY Make.MakeID;

-- To Make Individual Advertisement inactive where ID #1 (BECAUSE SOLD)

UPDATE Advertisement SET Advertisement.AdvertisementActive = '0' WHERE Advertisement.AdvertisementID = 1;


-- To Delete a photo ID #1

DELETE FROM Photo WHERE Photo.PhotoID = 1
