CREATE TABLE public.nashville_housing (
    UniqueID INT,
    ParcelID VARCHAR(50),
    LandUse VARCHAR(100),
    PropertyAddress VARCHAR(255),
    SaleDate VARCHAR(50), -- ideiglenesen szövegként importáljuk, a videóban tisztítjuk!
    SalePrice VARCHAR(50),
    LegalReference VARCHAR(100),
    SoldAsVacant VARCHAR(10),
    OwnerName VARCHAR(255),
    OwnerAddress VARCHAR(255),
    Acreage NUMERIC,
    TaxDistrict VARCHAR(100),
    LandValue INT,
    BuildingValue INT,
    TotalValue INT,
    YearBuilt INT,
    Bedrooms INT,
    Bathrooms INT,
    FullBath INT,
    HalfBath INT
);

DROP TABLE IF EXISTS public.nashville_housing;

CREATE TABLE public.nashville_housing (
    UniqueID VARCHAR(50),
    ParcelID VARCHAR(50),
    LandUse VARCHAR(100),
    PropertyAddress VARCHAR(255),
    SaleDate VARCHAR(50),
    SalePrice VARCHAR(50),
    LegalReference VARCHAR(100),
    SoldAsVacant VARCHAR(10),
    OwnerName VARCHAR(255),
    OwnerAddress VARCHAR(255),
    Acreage VARCHAR(50),
    TaxDistrict VARCHAR(100),
    LandValue VARCHAR(50),
    BuildingValue VARCHAR(50),
    TotalValue VARCHAR(50),
    YearBuilt VARCHAR(50),
    Bedrooms VARCHAR(50),
    Bathrooms VARCHAR(50),
    FullBath VARCHAR(50),
    HalfBath VARCHAR(50)
);

DROP TABLE IF EXISTS public.nashville_housing;

DROP TABLE IF EXISTS public.nashville_housing;

CREATE TABLE public.nashville_housing (
    UniqueID VARCHAR(100),
    ParcelID VARCHAR(100),
    LandUse VARCHAR(100),
    PropertyAddress VARCHAR(255),
    SaleDate VARCHAR(100),
    SalePrice VARCHAR(100),
    LegalReference VARCHAR(100),
    SoldAsVacant VARCHAR(50),
    OwnerName VARCHAR(255),
    OwnerAddress VARCHAR(255),
    Acreage VARCHAR(100),
    TaxDistrict VARCHAR(100),
    LandValue VARCHAR(100),
    BuildingValue VARCHAR(100),
    TotalValue VARCHAR(100),
    YearBuilt VARCHAR(100),
    Bedrooms VARCHAR(100),
    Bathrooms VARCHAR(100),
    FullBath VARCHAR(100),
    HalfBath VARCHAR(100)
);

DROP TABLE IF EXISTS public.nashville_housing;

DROP TABLE IF EXISTS public.nashville_housing;

CREATE TABLE public.nashville_housing (
    UniqueID VARCHAR(100),
    ParcelID VARCHAR(100),
    LandUse VARCHAR(100),
    PropertyAddress VARCHAR(255),
    SaleDate VARCHAR(100),
    SalePrice VARCHAR(100),
    LegalReference VARCHAR(100),
    SoldAsVacant VARCHAR(50),
    OwnerName VARCHAR(255),
    OwnerAddress VARCHAR(255),
    Acreage VARCHAR(100),
    TaxDistrict VARCHAR(100),
    LandValue VARCHAR(100),
    BuildingValue VARCHAR(100),
    TotalValue VARCHAR(100),
    YearBuilt VARCHAR(100),
    Bedrooms VARCHAR(100),
    Bathrooms VARCHAR(100),
    FullBath VARCHAR(100),
    HalfBath VARCHAR(100)
);

COPY public.nashville_housing 
FROM 'C:/projekt3/nashville_clean.csv' 
WITH (FORMAT CSV, HEADER YES, DELIMITER ',');

COPY public.nashville_housing 
FROM 'C:/project3/nashville_clean.csv' 
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

DROP TABLE IF EXISTS public.nashville_housing;


CREATE TABLE public.nashville_housing (
    UniqueID VARCHAR(100),
    ParcelID VARCHAR(100),
    LandUse VARCHAR(100),
    PropertyAddress VARCHAR(255),
    SaleDate VARCHAR(100),
    SalePrice VARCHAR(100),
    LegalReference VARCHAR(100),
    SoldAsVacant VARCHAR(50),
    OwnerName VARCHAR(255),
    OwnerAddress VARCHAR(255),
    Acreage VARCHAR(100),
    TaxDistrict VARCHAR(100),
    LandValue VARCHAR(100),
    BuildingValue VARCHAR(100),
    TotalValue VARCHAR(100),
    YearBuilt VARCHAR(100),
    Bedrooms VARCHAR(100),
    Bathrooms VARCHAR(100),
    FullBath VARCHAR(100),
    HalfBath VARCHAR(100)
);


COPY public.nashville_housing 
FROM 'C:/project3/nashville_clean.csv' 
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',', QUOTE '"');

DROP TABLE IF EXISTS public.nashville_housing;

CREATE TABLE public.nashville_housing (
    UniqueID VARCHAR(100),
    ParcelID VARCHAR(100),
    LandUse VARCHAR(100),
    PropertyAddress VARCHAR(255),
    SaleDate VARCHAR(100),
    SalePrice VARCHAR(100),
    LegalReference VARCHAR(100),
    SoldAsVacant VARCHAR(50),
    OwnerName VARCHAR(255),
    OwnerAddress VARCHAR(255),
    Acreage VARCHAR(100),
    TaxDistrict VARCHAR(100),
    LandValue VARCHAR(100),
    BuildingValue VARCHAR(100),
    TotalValue VARCHAR(100),
    YearBuilt VARCHAR(100),
    Bedrooms VARCHAR(100),
    Bathrooms VARCHAR(100),
    FullBath VARCHAR(100),
    HalfBath VARCHAR(100)
);

COPY public.nashville_housing 
FROM 'C:/project3/nashville_clean.csv' 
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',', QUOTE '"');


DROP TABLE IF EXISTS public.nashville_housing;

CREATE TABLE public.nashville_housing (
    UniqueID VARCHAR(100),
    ParcelID VARCHAR(100),
    LandUse VARCHAR(100),
    PropertyAddress VARCHAR(255),
    SaleDate VARCHAR(100),
    SalePrice VARCHAR(100),
    LegalReference VARCHAR(100),
    SoldAsVacant VARCHAR(50),
    OwnerName VARCHAR(255),
    OwnerAddress VARCHAR(255),
    Acreage VARCHAR(100),
    TaxDistrict VARCHAR(100),
    LandValue VARCHAR(100),
    BuildingValue VARCHAR(100),
    TotalValue VARCHAR(100),
    YearBuilt VARCHAR(100),
    Bedrooms VARCHAR(100),
    Bathrooms VARCHAR(100),
    FullBath VARCHAR(100),
    HalfBath VARCHAR(100)
);

COPY public.nashville_housing 
FROM 'C:/project3/nashville_clean.txt' 
WITH (FORMAT CSV, HEADER TRUE, DELIMITER E'\t');

DROP TABLE IF EXISTS public.nashville_housing;

CREATE TABLE public.nashville_housing (
    FullRowText TEXT
);

COPY public.nashville_housing 
FROM 'C:/project3/nashville_clean.csv' 
WITH (FORMAT CSV, HEADER FALSE, DELIMITER '|');

SELECT * FROM public.nashville_housing LIMIT 10;

-- 1. Létrehozzuk a végleges, külön oszlopos táblát
CREATE TABLE public.nashville_housing_clean (
    UniqueID VARCHAR(100), ParcelID VARCHAR(100), LandUse VARCHAR(100), PropertyAddress VARCHAR(255),
    SaleDate VARCHAR(100), SalePrice VARCHAR(100), LegalReference VARCHAR(100), SoldAsVacant VARCHAR(50),
    OwnerName VARCHAR(255), OwnerAddress VARCHAR(255), Acreage VARCHAR(100), TaxDistrict VARCHAR(100),
    LandValue VARCHAR(100), BuildingValue VARCHAR(100), TotalValue VARCHAR(100), YearBuilt VARCHAR(100),
    Bedrooms VARCHAR(100), Bathrooms VARCHAR(100), FullBath VARCHAR(100), HalfBath VARCHAR(100)
);

-- 2. Az univerzális szöveget darabokra vágjuk és áttöltjük
INSERT INTO public.nashville_housing_clean
SELECT 
    (string_to_array(FullRowText, ','))[1],  (string_to_array(FullRowText, ','))[2],
    (string_to_array(FullRowText, ','))[3],  (string_to_array(FullRowText, ','))[4],
    (string_to_array(FullRowText, ','))[5],  (string_to_array(FullRowText, ','))[6],
    (string_to_array(FullRowText, ','))[7],  (string_to_array(FullRowText, ','))[8],
    (string_to_array(FullRowText, ','))[9],  (string_to_array(FullRowText, ','))[10],
    (string_to_array(FullRowText, ','))[11], (string_to_array(FullRowText, ','))[12],
    (string_to_array(FullRowText, ','))[13], (string_to_array(FullRowText, ','))[14],
    (string_to_array(FullRowText, ','))[15], (string_to_array(FullRowText, ','))[16],
    (string_to_array(FullRowText, ','))[17], (string_to_array(FullRowText, ','))[18],
    (string_to_array(FullRowText, ','))[19], (string_to_array(FullRowText, ','))[20]
FROM public.nashville_housing
OFFSET 1; -- Az első sort (a fejlécet) átugorjuk, mert nincs rá szükségünk

-- 3. Megnézzük az eredményt!
SELECT * FROM public.nashville_housing_clean LIMIT 10;

Select *
From PortfolioProject.dbo.NashvilleHousing

SELECT * 
FROM public.nashville_housing_clean;

SELECT saledate
FROM public.nashville_housing_clean;

DROP TABLE IF EXISTS public.nashville_housing;
DROP TABLE IF EXISTS public.nashville_housing_clean;

CREATE TABLE public.nashville_housing (
    FullRowText TEXT
);

DROP TABLE IF EXISTS public.nashville_housing;
DROP TABLE IF EXISTS public.nashville_housing_clean;

-- Újraalkotjuk az ideiglenes tölcsér táblát
CREATE TABLE public.nashville_housing (
    FullRowText TEXT
);

-- Újraalkotjuk a végleges, tiszta struktúrát
CREATE TABLE public.nashville_housing_clean (
    UniqueID VARCHAR(100), ParcelID VARCHAR(100), LandUse VARCHAR(100), PropertyAddress VARCHAR(255),
    SaleDate VARCHAR(100), SalePrice VARCHAR(100), LegalReference VARCHAR(100), SoldAsVacant VARCHAR(50),
    OwnerName VARCHAR(255), OwnerAddress VARCHAR(255), Acreage VARCHAR(100), TaxDistrict VARCHAR(100),
    LandValue VARCHAR(100), BuildingValue VARCHAR(100), TotalValue VARCHAR(100), YearBuilt VARCHAR(100),
    Bedrooms VARCHAR(100), Bathrooms VARCHAR(100), FullBath VARCHAR(100), HalfBath VARCHAR(100)
);

COPY public.nashville_housing 
FROM 'C:/project3/nashville_clean.txt' 
WITH (FORMAT CSV, HEADER FALSE, DELIMITER '|');

-- A. Beolvassuk a tiszta tabulátoros szövegfájlt egyetlen oszlopba
COPY public.nashville_housing 
FROM 'C:/project3/nashville_clean.txt' 
WITH (FORMAT CSV, HEADER FALSE, DELIMITER '|');

-- B. Most nem vessző, hanem a láthatatlan TABULÁTOR (E'\t') mentén vágjuk szét a sorokat!
INSERT INTO public.nashville_housing_clean
SELECT 
    (string_to_array(FullRowText, E'\t'))[1],  (string_to_array(FullRowText, E'\t'))[2],
    (string_to_array(FullRowText, E'\t'))[3],  (string_to_array(FullRowText, E'\t'))[4],
    (string_to_array(FullRowText, E'\t'))[5],  (string_to_array(FullRowText, E'\t'))[6],
    (string_to_array(FullRowText, E'\t'))[7],  (string_to_array(FullRowText, E'\t'))[8],
    (string_to_array(FullRowText, E'\t'))[9],  (string_to_array(FullRowText, E'\t'))[10],
    (string_to_array(FullRowText, E'\t'))[11], (string_to_array(FullRowText, E'\t'))[12],
    (string_to_array(FullRowText, E'\t'))[13], (string_to_array(FullRowText, E'\t'))[14],
    (string_to_array(FullRowText, E'\t'))[15], (string_to_array(FullRowText, E'\t'))[16],
    (string_to_array(FullRowText, E'\t'))[17], (string_to_array(FullRowText, E'\t'))[18],
    (string_to_array(FullRowText, E'\t'))[19], (string_to_array(FullRowText, E'\t'))[20]
FROM public.nashville_housing
OFFSET 1;

SELECT UniqueID, PropertyAddress, SaleDate, SalePrice 
FROM public.nashville_housing_clean 
LIMIT 10;

SELECT * 
FROM public.nashville_housing_clean;

SELECT saledate
FROM public.nashville_housing_clean;

SELECT saledate, 
       to_date(saledate, 'Month DD, YYYY') as saleDateConverted
FROM public.nashville_housing_clean;

UPDATE public.nashville_housing_clean
SET saledate = to_date(saledate, 'Month DD, YYYY');

SELECT saledate 
FROM public.nashville_housing_clean;

SELECT propertyaddress
FROM public.nashville_housing_clean
WHERE propertyaddress is null;

SELECT *
FROM public.nashville_housing_clean
WHERE propertyaddress = 'null' 
   OR propertyaddress = '' 
   OR propertyaddress IS NULL;

UPDATE public.nashville_housing_clean
SET propertyaddress = NULL
WHERE propertyaddress = 'null' OR propertyaddress = '';

SELECT propertyaddress
FROM public.nashville_housing_clean
WHERE propertyaddress IS NULL;

SELECT *
FROM public.nashville_housing_clean
--WHERE propertyaddress IS NULL
ORDER BY parcelid;


Select 
	a.parcelid, 
	a.propertyaddress, 
	b.parcelid, 
	b.propertyaddress, 
	COALESCE (a.propertyaddress, b.propertyaddress) AS propertyadress_fixed
From public.nashville_housing_clean a
JOIN public.nashville_housing_clean b
	ON a.parcelid = b.parcelid
	AND a.uniqueid <> b.uniqueid
Where a.propertyaddress is null;


UPDATE public.nashville_housing_clean a
SET propertyaddress = b.propertyaddress
FROM public.nashville_housing_clean b
WHERE a.parcelid = b.parcelid
  AND a.uniqueid <> b.uniqueid
  AND a.propertyaddress IS NULL;

 SELECT * FROM public.nashville_housing_clean WHERE propertyaddress IS NULL


SELECT propertyaddress
FROM public.nashville_housing_clean
--WHERE propertyaddress IS NULL;

SELECT 
    SUBSTRING(propertyaddress, 1, POSITION(',' IN propertyaddress) - 1) as Address,
    SUBSTRING(propertyaddress, POSITION(',' IN propertyaddress) + 1 , LENGTH(propertyaddress)) as City
FROM public.nashville_housing_clean;


ALTER TABLE public.nashville_housing_clean
ADD property_split_address VARCHAR(255);


UPDATE public.nashville_housing_clean
SET property_split_address = SUBSTRING(propertyaddress, 1, POSITION(',' IN propertyaddress) - 1);


ALTER TABLE public.nashville_housing_clean
ADD property_split_city VARCHAR(255);

UPDATE public.nashville_housing_clean
SET property_split_city = SUBSTRING(propertyaddress, POSITION(',' IN propertyaddress) + 1, LENGTH(propertyaddress));

SELECT propertyaddress, property_split_address, property_split_city 
FROM public.nashville_housing_clean 
LIMIT 10;

SELECT * FROM public.nashville_housing_clean

SELECT owneraddress FROM public.nashville_housing_clean

SELECT owneraddress,
       split_part(owneraddress, ',', 1) AS owner_split_address,
       split_part(owneraddress, ',', 2) AS owner_split_city,
       split_part(owneraddress, ',', 3) AS owner_split_state
FROM public.nashville_housing_clean;

-- A. UTCA OSZLOP LÉTREHOZÁSA ÉS FELTÖLTÉSE
ALTER TABLE public.nashville_housing_clean
ADD owner_split_address VARCHAR(255);

UPDATE public.nashville_housing_clean
SET owner_split_address = split_part(owneraddress, ',', 1);


-- B. VÁROS OSZLOP LÉTREHOZÁSA ÉS FELTÖLTÉSE
ALTER TABLE public.nashville_housing_clean
ADD owner_split_city VARCHAR(255);

UPDATE public.nashville_housing_clean
SET owner_split_city = split_part(owneraddress, ',', 2);


-- C. ÁLLAM OSZLOP LÉTREHOZÁSA ÉS FELTÖLTÉSE
ALTER TABLE public.nashville_housing_clean
ADD owner_split_state VARCHAR(255);

UPDATE public.nashville_housing_clean
SET owner_split_state = split_part(owneraddress, ',', 3);

SELECT owneraddress, owner_split_address, owner_split_city, owner_split_state 
FROM public.nashville_housing_clean 
LIMIT 10;

SELECT * FROM public.nashville_housing_clean


Select Distinct(soldasvacant), Count(soldasvacant)
From public.nashville_housing_clean
Group by soldasvacant
order by 2

Select soldasvacant
, CASE When soldasvacant = 'Y' THEN 'Yes'
	   When soldasvacant = 'N' THEN 'No'
	   ELSE soldasvacant
	   END
From public.nashville_housing_clean


Update public.nashville_housing_clean
SET soldasvacant = CASE When soldasvacant = 'Y' THEN 'Yes'
	   When soldasvacant = 'N' THEN 'No'
	   ELSE soldasvacant
	   END

Select Distinct(soldasvacant), Count(soldasvacant)
From public.nashville_housing_clean
Group by soldasvacant
order by 2


SELECT * FROM public.nashville_housing_clean

WITH RowNumCTE AS (
    SELECT *,
        ROW_NUMBER() OVER (
            PARTITION BY parcelid,
                         propertyaddress,
                         saleprice,
                         saledate,
                         legalreference
            ORDER BY uniqueid
        ) AS row_num
    FROM public.nashville_housing_clean
)
SELECT *
FROM RowNumCTE
WHERE row_num > 1
ORDER BY propertyaddress;

DELETE FROM public.nashville_housing_clean
WHERE uniqueid IN (
    SELECT uniqueid
    FROM (
        SELECT uniqueid,
            ROW_NUMBER() OVER (
                PARTITION BY parcelid,
                             propertyaddress,
                             saleprice,
                             saledate,
                             legalreference
                ORDER BY uniqueid
            ) AS row_num
        FROM public.nashville_housing_clean
    ) sub
    WHERE row_num > 1
);

SELECT * FROM public.nashville_housing_clean

ALTER TABLE public.nashville_housing_clean
DROP COLUMN owneraddress,
DROP COLUMN taxdistrict,
DROP COLUMN propertyaddress,
DROP COLUMN saledate;

SELECT * FROM public.nashville_housing_clean






























