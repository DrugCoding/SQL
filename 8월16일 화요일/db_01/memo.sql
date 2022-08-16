select count(*) from healthcare;
-- --------
-- 1000000
select count(*) from healthcare where age > 10;
-- count(*)
-- --------
-- 699558
select count(*) from healthcare where gender = 1;
-- count(*)
-- --------
-- 510689
SELECT count(*) from healthcare where smoking = 3 and is_drinking = 1;
-- count(*)
-- --------
-- 150361
SELECT count(*) from healthcare where va_left >= 2.0 and va_right >= 2.0;
-- count(*)
-- --------
-- 2614
SELECT DISTINCT 'sido' from healthcare WHERE sido;