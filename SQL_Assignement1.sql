--1 Find customers born after the year 1990.
 SELECT cust_year_of_birth
FROM sh.customers
WHERE cust_year_of_birth > 1990;

--2 List all male customers (`CUST_GENDER = 'M'`).
SELECT cust_gender
FROM sh.customers
WHERE cust_gender = 'M';
 
--3 Retrieve all female customers (`CUST_GENDER = 'F'`) living in Sydney.
SELECT *
FROM sh.customers
WHERE cust_gender = 'F'
  AND cust_city = 'Sydney';

--4 Find customers with income level `"G: 130,000 - 149,999"
SELECT *
FROM sh.customers
WHERE cust_income_level = 'G: 130,000 - 149,999';

--5 Get all customers with a credit limit above 10,000.
SELECT *
FROM sh.customers
WHERE cust_credit_limit > 10000;

--6 Retrieve customers from the state "California".
SELECT cust_id,
       cust_state_province
FROM sh.customers
WHERE cust_state_province = 'California';

--7 Find customers who have provided an email address.
SELECT *
FROM sh.customers
WHERE cust_email IS NOT NULL;

--8 List customers with missing marital status.
SELECT cust_id
cust_marital_status
FROM sh.customers
WHERE cust_marital_status IS NULL;

--9 Find customers whose postal code starts with "53".
SELECT *
FROM sh.customers
WHERE cust_postal_code LIKE '53%';

--10  Get customers born before 1980 with a credit limit above 5,000.
SELECT *
FROM sh.customers
WHERE cust_year_of_birth < DATE '1980-01-01'
AND cust_credit_limit > 5000;

--11 Retrieve customers from Almere or Amersfoort.
SELECT *
FROM sh.customers
WHERE cust_city IN ('Almere', 'Amersfoort');

--12  Find customers who do not have a credit limit.
SELECT *
FROM sh.customers
WHERE cust_credit_limit IS NULL;

--13 List customers whose phone number starts with "487"
SELECT *
FROM sh.customers
WHERE cust_main_phone_number LIKE '487%';

--14 Find married customers with income level `"Medium"`.
SELECT *
FROM sh.customers
WHERE cust_marital_status = 'Married'
  AND cust_income_level = 'Medium';

--15 Get customers whose last name starts with "G"
SELECT *
FROM sh.customers
WHERE cust_last_name LIKE 'G%';

--16  Find customers with city_id = 51057.
SELECT *
FROM sh.customers
WHERE cust_city_id = 51057;

--17  Retrieve all customers who are valid (`CUST_VALID = 'A'`).
SELECT *
FROM sh.customers
WHERE cust_valid = 'A';

--18 Find customers whose effective start date (`CUST_EFF_FROM`) is after 2020.
SELECT *
FROM sh.customers
WHERE cust_eff_from > DATE '2020-12-31';

--19  Retrieve customers whose effective end date (`CUST_EFF_TO`) is before 2021.
SELECT *
FROM sh.customers
WHERE cust_eff_to < DATE '2021-01-01';

--20 Find customers with credit limit between 5,000 and 9,000.
SELECT *
FROM sh.customers
WHERE cust_credit_limit BETWEEN 5000 AND 9000;

--21 Get all customers from country_id = 101.
SELECT *
FROM sh.customers
WHERE country_id = 101;

--22  Find customers whose email ends with `"@company.example.com"`.
SELECT *
FROM sh.customers
WHERE cust_email LIKE '%@company.example.com';

--23  List customers with `CUST_TOTAL_ID = 52772`.
SELECT *
FROM sh.customers
WHERE cust_total_id = 52772;

--24  Find customers with `CUST_SRC_ID` in (10, 20, 30).
SELECT *
FROM sh.customers
WHERE cust_src_id IN (10, 20, 30);

--25  Retrieve customers who either do not have email or do not have a credit limit.SELECT *
SELECT *
FROM sh.customers
WHERE cust_email IS NULL
   OR cust_credit_limit IS NULL;